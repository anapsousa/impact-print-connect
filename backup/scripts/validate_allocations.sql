-- ============================================
-- Query: Validate allocations count
-- ============================================
-- Purpose: Check how many parts are allocated vs how many unique volunteers
-- For a specific project

-- Replace 'PROJECT_ID_HERE' with the actual project ID

-- 1. Count total parts allocated in project
SELECT
    COUNT(*) as total_parts_allocated,
    COUNT(DISTINCT assigned_contributor_id) as unique_volunteers
FROM project_instance_parts
WHERE project_instance_id = 'PROJECT_ID_HERE'
  AND assigned_contributor_id IS NOT NULL;

-- 2. Show parts grouped by volunteer (to see who has multiple parts)
SELECT
    c.name as volunteer_name,
    c.email as volunteer_email,
    COUNT(pip.id) as parts_count,
    array_agg(pip.part_name) as parts
FROM project_instance_parts pip
INNER JOIN contributors c ON c.id = pip.assigned_contributor_id
WHERE pip.project_instance_id = 'PROJECT_ID_HERE'
  AND pip.assigned_contributor_id IS NOT NULL
GROUP BY c.id, c.name, c.email
ORDER BY parts_count DESC, c.name;

-- 3. Get the project ID by name (if you don't know it)
SELECT id, name, status
FROM project_instances
WHERE name ILIKE '%Centro%'
ORDER BY created_at DESC;
