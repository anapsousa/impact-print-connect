# CLAUDE.md - 3D com Propósito (Senior Engineering Guide)

This file provides strict architectural guidance for AI collaborators and developers working on the **3D com Propósito** repository.

## 🎯 Engineering Principles
- **Type Safety Above All**: No `any`. Use strictly defined interfaces and Supabase generated types.
- **Single Responsibility (SRP)**: Each component, hook, or function must serve a single purpose.
- **Fail Fast & Proactive Validation**: Validate inputs at the boundary (Zod/TS) and handle errors gracefully.
- **Server State Management**: Treat TanStack Query as the single source of truth for server data; avoid duplicating server state in local state.
- **Performance First**: Minimize re-renders and optimize database queries by selecting only required columns.

## 🛠 Tech Stack & Standards
- **Frontend**: React 18 (Hooks/Composition) + TypeScript + Vite.
- **Styling**: Tailwind CSS + shadcn/ui (Radix primitives).
- **State**: TanStack Query v5 (Server State) & React Context (Global UI State only).
- **Backend**: Supabase (PostgreSQL + Auth + RLS).
- **Email**: Resend via Supabase Edge Functions.

## 🏗 Coding Patterns & Architecture

### 1. Component Architecture
- **Location**: Feature-based components live in `src/components/[feature]/`.
- **Pattern**: Use the Composition Pattern. Extract logic into custom hooks to keep UI components "dumb" and declarative.
- **Icons**: Exclusively use `lucide-react`.

### 2. Data Access Layer
- **Abstraction**: Never call `supabase` directly inside components. 
- **Custom Hooks**: All data fetching must be encapsulated in custom hooks within `src/hooks/queries/`.
- **Naming**: Use the `use[EntityName]` pattern (e.g., `useContributors`, `useParts`).
- **Standard**: Hooks must use TanStack Query `useQuery` or `useMutation` and handle global error toasts.

### 3. Database Integrity (Critical)
Any structural change MUST follow the Senior Workflow:
1. **Migrations**: All changes via SQL files in `supabase/migrations/`.
2. **Type Sync**: Immediately regenerate `src/integrations/supabase/types.ts` after schema changes.
3. **RLS (Row Level Security)**: Every new table MUST have an RLS policy. Volunteer access via `token` UUID must be enforced at the DB level.

## 🛡 Security & Resilience
- **Token Management**: Volunteer UUID tokens are credentials. Never log them or expose them in unauthorized views.
- **Edge Functions**: Business logic requiring secret keys (e.g., Resend API) must stay in Supabase Edge Functions.
- **Auth**: Admin access is restricted via `is_organizer()` checks within Supabase RLS.

## 📋 Quality Commands
```bash
npm run dev          # Local development
npm run lint         # Static analysis check
npm test             # Run Vitest suite
npm run build        # Production build & TS check
```

## 📐 Project Constraints
- **Regional Scope**: North, Center, Lisbon, Alentejo, Algarve, Azores, Madeira.
- **Technical Specs**: TMT Project parts require a minimum build volume of **256×256×256mm**.
- **Communication**: Official project email is `geral@3dcomproposito.pt`.