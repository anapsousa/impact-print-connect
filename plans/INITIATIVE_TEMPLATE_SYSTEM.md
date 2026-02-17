# Plan: Initiative Template System

## Overview

Refactor the project/parts model to support a **Template → Instance** pattern.
This decouples "what needs to be printed" (the initiative template) from "who is printing it for whom" (the project instance linked to a beneficiary request).

The goal is to scale beyond wheelchair parts to any 3D printing initiative (prosthetics, assistive devices, etc.) without changing the contributor or portal infrastructure.

---

## Current Model (to be replaced)

```
part_templates (flat list, all TMT, no scope)
wheelchair_projects (name, status, target_parts)
parts (part_name, project_id, assigned_contributor_id, status, category, material)
beneficiary_requests (no link to projects)
```

**Problems:**
- Templates not scoped — all templates mix into every project
- No link between a beneficiary request and a project instance
- Parts have no file URL (contributor must ask organizer for the file)
- Project creation hardcoded to 24 TMT parts
- Part categories hardcoded in UI ("Estrutura", "Peças Macias")

---

## Target Model

```
initiatives                  → template header (e.g. "TMT v1")
initiative_parts             → template parts (name, material, file_url)
beneficiary_requests         → unchanged, gains link to instances
request_projects             → join table (request ↔ instance), keeps door open for N:M
project_instances            → runtime project for a specific request
project_instance_parts       → runtime parts, snapshot of template at creation time
```

### Why a join table for request ↔ instance?

Today: 1 request → 1 instance. The join table `request_projects` costs almost nothing but means we never need a schema migration if a request ever requires two separate initiatives (e.g. chair frame + custom accessory). The UI enforces "1 per request" for now.

---

## New Database Schema

### New tables

```sql
-- Initiative templates (replaces part_templates.template_name grouping)
CREATE TABLE initiatives (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    name text NOT NULL,                        -- "TMT - Toddler Mobility Trainer"
    description text,
    is_active boolean DEFAULT true NOT NULL,   -- hide deprecated templates
    created_by uuid REFERENCES profiles(id) ON DELETE SET NULL,
    created_at timestamptz DEFAULT now() NOT NULL,
    updated_at timestamptz DEFAULT now() NOT NULL
);

-- Parts belonging to an initiative template
CREATE TABLE initiative_parts (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    initiative_id uuid NOT NULL REFERENCES initiatives(id) ON DELETE CASCADE,
    name text NOT NULL,                        -- "Assento"
    material text NOT NULL,                    -- "TPU", "PETG", etc.
    file_url text,                             -- link to STL/3MF file
    category text,                             -- free text, e.g. "Estrutura"
    print_time_hours numeric DEFAULT 0,
    sort_order integer DEFAULT 0 NOT NULL,
    created_at timestamptz DEFAULT now() NOT NULL,
    updated_at timestamptz DEFAULT now() NOT NULL
);

-- Runtime project instance (replaces wheelchair_projects)
-- Renamed to keep existing data; alternative: add columns to wheelchair_projects
CREATE TABLE project_instances (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    initiative_id uuid REFERENCES initiatives(id) ON DELETE SET NULL,
    name text NOT NULL,                        -- "Cadeira Lisboa #3"
    description text,
    status project_status DEFAULT 'planning' NOT NULL,
    coordinator_id uuid REFERENCES profiles(id) ON DELETE SET NULL,
    created_at timestamptz DEFAULT now() NOT NULL,
    updated_at timestamptz DEFAULT now() NOT NULL
);

-- Join table: request ↔ instance (1:1 today, N:M capable)
CREATE TABLE request_projects (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    request_id uuid NOT NULL REFERENCES beneficiary_requests(id) ON DELETE CASCADE,
    project_instance_id uuid NOT NULL REFERENCES project_instances(id) ON DELETE CASCADE,
    created_at timestamptz DEFAULT now() NOT NULL,
    UNIQUE(request_id, project_instance_id)
);

-- Runtime parts — snapshot of initiative_parts at instance creation time
-- (replaces parts table)
CREATE TABLE project_instance_parts (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    project_instance_id uuid NOT NULL REFERENCES project_instances(id) ON DELETE CASCADE,
    -- Snapshot fields (copied from initiative_parts at creation, immutable after)
    name text NOT NULL,
    material text NOT NULL,
    file_url text,
    category text,
    print_time_hours numeric DEFAULT 0,
    sort_order integer DEFAULT 0 NOT NULL,
    -- Assignment & workflow
    assigned_contributor_id uuid REFERENCES contributors(id) ON DELETE SET NULL,
    status part_status DEFAULT 'unassigned' NOT NULL,
    notes text,                                -- contributor can leave a note
    created_at timestamptz DEFAULT now() NOT NULL,
    updated_at timestamptz DEFAULT now() NOT NULL
);
```

### Indexes

```sql
CREATE INDEX idx_initiative_parts_initiative_id ON initiative_parts(initiative_id);
CREATE INDEX idx_project_instances_initiative_id ON project_instances(initiative_id);
CREATE INDEX idx_project_instances_status ON project_instances(status);
CREATE INDEX idx_request_projects_request_id ON request_projects(request_id);
CREATE INDEX idx_request_projects_instance_id ON request_projects(project_instance_id);
CREATE INDEX idx_pip_project_instance_id ON project_instance_parts(project_instance_id);
CREATE INDEX idx_pip_contributor_id ON project_instance_parts(assigned_contributor_id);
CREATE INDEX idx_pip_status ON project_instance_parts(status);
```

### Updated dashboard_stats view

```sql
CREATE OR REPLACE VIEW dashboard_stats AS
SELECT
    (SELECT COUNT(*) FROM contributors) as total_contributors,
    (SELECT COUNT(*) FROM project_instances) as total_projects,
    (SELECT COUNT(*) FROM project_instance_parts) as total_parts,
    (SELECT COUNT(*) FROM project_instance_parts WHERE status = 'completed') as parts_completed,
    (SELECT COUNT(*) FROM project_instance_parts WHERE status = 'in_progress') as parts_in_progress,
    (SELECT COUNT(*) FROM project_instances WHERE status = 'completed') as projects_completed,
    (SELECT COUNT(*) FROM donations) as total_donations,
    (SELECT COALESCE(SUM(amount_cents), 0) FROM donations) as total_donated_cents;
```

### RLS Policies (new tables follow same pattern as existing)

```sql
-- Organizers can do everything on initiatives and initiative_parts
-- Contributors: no access (template data is internal)
-- project_instance_parts: contributors can UPDATE status/notes on their own parts (token-based)

ALTER TABLE initiatives ENABLE ROW LEVEL SECURITY;
ALTER TABLE initiative_parts ENABLE ROW LEVEL SECURITY;
ALTER TABLE project_instances ENABLE ROW LEVEL SECURITY;
ALTER TABLE request_projects ENABLE ROW LEVEL SECURITY;
ALTER TABLE project_instance_parts ENABLE ROW LEVEL SECURITY;

-- Organizer full access (reuse is_organizer() function)
CREATE POLICY "Organizers manage initiatives" ON initiatives
    FOR ALL USING (is_organizer());

CREATE POLICY "Organizers manage initiative_parts" ON initiative_parts
    FOR ALL USING (is_organizer());

CREATE POLICY "Organizers manage project_instances" ON project_instances
    FOR ALL USING (is_organizer());

CREATE POLICY "Organizers manage request_projects" ON request_projects
    FOR ALL USING (is_organizer());

CREATE POLICY "Organizers manage project_instance_parts" ON project_instance_parts
    FOR ALL USING (is_organizer());

-- Contributors: read their own parts (by contributor id, validated via token in app layer)
CREATE POLICY "Contributors read own parts" ON project_instance_parts
    FOR SELECT USING (true);  -- app layer filters by contributor id from token

-- Contributors: update status/notes on their own assigned parts
CREATE POLICY "Contributors update own parts" ON project_instance_parts
    FOR UPDATE USING (true)
    WITH CHECK (true);  -- app layer enforces contributor_id ownership
```

---

## Migration Strategy for Existing Data

**Decision needed before implementation:** migrate existing data or not?

### Option A — Clean break (recommended if data volume is small)
- Keep `wheelchair_projects` and `parts` tables as-is (read-only, archived)
- New flow uses new tables exclusively
- No data migration needed
- Existing projects remain visible in admin under a legacy "Arquivo" tab

### Option B — Full migration
- Create one `initiatives` row: "TMT v1"
- Migrate `part_templates` → `initiative_parts`
- Migrate `wheelchair_projects` → `project_instances` (with `initiative_id = TMT v1`)
- Migrate `parts` → `project_instance_parts`
- Drop old tables after validation

**This plan assumes Option A** (clean break). Update this section if Option B is chosen.

---

## Implementation Phases

Each phase ends with a testable, deployable state. Never start the next phase without manually testing the acceptance criteria of the current one.

---

### Phase 1 — Database: new tables only

**Goal:** Create the new schema in Supabase without touching any existing tables or code.

**Steps:**
1. Run the SQL above in Supabase SQL Editor (new tables + indexes + RLS + updated view)
2. Export updated schema: `./backup/scripts/export_schema.sh "add initiative template system tables"`
3. Update `src/integrations/supabase/types.ts` to include the 5 new tables
4. Run `npm run build` — must pass with zero TypeScript errors

**Acceptance criteria:**
- [ ] All 5 new tables exist in Supabase (`initiatives`, `initiative_parts`, `project_instances`, `request_projects`, `project_instance_parts`)
- [ ] `npm run build` passes
- [ ] TypeScript types include all new tables with correct field types
- [ ] No existing functionality is broken (test existing admin flow manually)

---

### Phase 2 — Admin: Initiative Template Manager

**Goal:** Admins can create and manage initiative templates (the "what to print" catalog).

**New component:** `src/components/admin/InitiativeManager.tsx`

**Features:**
- List all initiatives (name, part count, active/inactive)
- Create new initiative (name, description)
- Edit initiative name/description
- Add parts to an initiative: name, material (select from common list + free text), file_url, category, print_time_hours, sort_order
- Edit/delete parts within an initiative
- Mark initiative as inactive (hides from project creation but preserves history)

**New React Query keys:**
- `["initiatives"]` — all initiatives
- `["initiative-parts", initiativeId]` — parts for a specific initiative

**Route:** Add as a new tab in `src/pages/Admin.tsx` (tab: "Iniciativas")

**Acceptance criteria:**
- [ ] Can create an initiative with a name and description
- [ ] Can add parts to an initiative with name, material, file_url, category
- [ ] Can edit a part's file_url (most common update)
- [ ] Can reorder parts (sort_order)
- [ ] Can deactivate an initiative (disappears from "create project" dropdown)
- [ ] `npm run build` passes

---

### Phase 3 — Admin: Project Instance Creation from Beneficiary Request

**Goal:** When a beneficiary request is approved, the organizer selects an initiative and a project instance is created with all parts snapshotted from the template.

**Changes to `src/pages/Admin.tsx`:**
- In the beneficiary requests tab, add an "Aprovar & Criar Projeto" button on requests with status `pendente` or `em_avaliacao`
- Opens `ApproveRequestDialog.tsx` (new component)

**New component:** `src/components/admin/ApproveRequestDialog.tsx`
- Shows request summary (contact name, region, description)
- Dropdown to select active initiative
- Preview of parts that will be created (count + list)
- Optional: override project name (default: `"{initiative.name} - {contact_name}"`)
- On confirm:
  1. Update `beneficiary_requests.status` → `'aprovado'`
  2. Insert into `project_instances`
  3. Insert into `request_projects` (join)
  4. Insert into `project_instance_parts` (snapshot of all `initiative_parts` for chosen initiative)
  5. Invalidate `["admin-requests"]`, `["admin-project-instances"]`

**Snapshot logic (important):**
```typescript
const partsToInsert = initiativeParts.map((p) => ({
  project_instance_id: newInstance.id,
  name: p.name,
  material: p.material,
  file_url: p.file_url,
  category: p.category,
  print_time_hours: p.print_time_hours,
  sort_order: p.sort_order,
  status: "unassigned",
}));
```

**Acceptance criteria:**
- [ ] Approving a request with an initiative creates a project instance
- [ ] All parts from the initiative are copied as instance parts
- [ ] Editing the initiative template after this point does NOT change the created instance parts
- [ ] The request status changes to `'aprovado'`
- [ ] The new project instance appears in the Projects tab
- [ ] `npm run build` passes

---

### Phase 4 — Admin: Project Instance View & Part Allocation

**Goal:** Admins can see project instances, their progress, and allocate contributors to parts.

**Changes:**
- Add "Projetos" tab in Admin (or replace existing wheelchair_projects tab if using clean break)
- New component: `src/components/admin/ProjectInstanceCard.tsx`
  - Shows: project name, linked request (contact name, region), initiative name, progress bar (X/Y parts complete), status badge
- Update `src/components/admin/AllocateVolunteerDialog.tsx` to work with `project_instance_parts` instead of `parts`
  - Parts now show: name, material, file_url (icon link), category, current status
  - Grouping by `category` (dynamic, not hardcoded)
- New component: `src/components/admin/ProjectInstancePartsList.tsx`
  - Lists all parts for an instance
  - Shows: name, material, file link, assigned contributor (or "—"), status
  - Organizer can change status and assignment from this view

**New React Query keys:**
- `["admin-project-instances"]` — all project instances
- `["project-instance-parts", instanceId]` — parts for a specific instance

**Acceptance criteria:**
- [ ] Project instances list shows all instances with correct progress
- [ ] Clicking a project shows all its parts with file links
- [ ] Can allocate a contributor to one or more parts (parts show in contributor's portal after)
- [ ] Part categories are dynamic (not hardcoded "Estrutura"/"Peças Macias")
- [ ] `npm run build` passes

---

### Phase 5 — Contributor Portal: show file link + status update

**Goal:** Contributors see the file to print and can update the status of their assigned parts themselves.

**Changes to `src/pages/Portal.tsx`:**
- Parts list already exists — extend each part card to show:
  - `file_url` as a download/open link (if set): "Descarregar ficheiro"
  - Status selector (only for parts assigned to this contributor):
    - `assigned` → `in_progress` → `completed` → `delivered`
    - Contributor cannot set `unassigned` (only organizer can)
  - Optional notes field (free text, contributor can add context)
- On status change: `UPDATE project_instance_parts SET status = ?, notes = ? WHERE id = ? AND assigned_contributor_id = ?`
- Show toast on success

**Query changes in Portal.tsx:**
- Switch from querying `parts` (join to `wheelchair_projects`) to querying `project_instance_parts` (join to `project_instances`)
- Include `file_url` in select

**Acceptance criteria:**
- [ ] Contributor sees file link on each assigned part (if URL is set)
- [ ] Contributor can update status from `assigned` → `in_progress` → `completed`
- [ ] Contributor cannot change status back to `unassigned`
- [ ] Notes field saves correctly
- [ ] Organizer sees updated status in admin project view immediately after contributor updates
- [ ] `npm run build` passes

---

### Phase 6 — Cleanup & Polish (optional, post-validation)

Only after all 5 phases are live and validated in production:

- Remove hardcoded "Estrutura"/"Peças Macias" references from any remaining components
- Update `dashboard_stats` view to use new table names
- Update CLAUDE.md to reflect new architecture
- Archive (or drop) old `wheelchair_projects`, `parts`, `part_templates` tables
- Update `backup/database/schema/schema.sql`

---

## Files to Create / Modify (summary)

| File | Action | Phase |
|------|--------|-------|
| Supabase SQL Editor | Run new schema SQL | 1 |
| `src/integrations/supabase/types.ts` | Add 5 new table types | 1 |
| `backup/database/schema/schema.sql` | Update with new tables | 1 |
| `src/components/admin/InitiativeManager.tsx` | Create | 2 |
| `src/pages/Admin.tsx` | Add "Iniciativas" tab | 2 |
| `src/components/admin/ApproveRequestDialog.tsx` | Create | 3 |
| `src/pages/Admin.tsx` | Add approve button to requests tab | 3 |
| `src/components/admin/ProjectInstanceCard.tsx` | Create | 4 |
| `src/components/admin/ProjectInstancePartsList.tsx` | Create | 4 |
| `src/components/admin/AllocateVolunteerDialog.tsx` | Update to use new tables | 4 |
| `src/pages/Admin.tsx` | Add "Projetos" tab using new tables | 4 |
| `src/pages/Portal.tsx` | Add file link + status update | 5 |

---

## What Does NOT Change

- `contributors` table and registration flow (`/contribute`)
- `beneficiary_requests` table structure and request form (`/request`)
- Admin authentication (`useAuth`, RLS via `is_organizer()`)
- Token-based contributor portal access mechanism
- Volunteer email notifications (edge functions)
- Regional organization (Portugal 7 regions)
- Styling conventions and UI component library

---

## Open Questions

1. **Data migration:** Clean break (keep old tables read-only) or full migration of existing projects/parts? → Decision required before Phase 1.
2. **File hosting:** Where will STL/3MF files be hosted? (Supabase Storage, Google Drive, external URL?) The schema uses `file_url text` which supports any URL — hosting decision is independent of this plan.
3. **Beneficiary form generalization:** `beneficiary_type` currently only supports children. Should this be updated in parallel or in a separate plan?
