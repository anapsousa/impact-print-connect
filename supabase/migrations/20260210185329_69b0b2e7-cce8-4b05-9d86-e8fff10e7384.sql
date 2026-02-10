DROP VIEW IF EXISTS public.dashboard_stats;
CREATE VIEW public.dashboard_stats AS
SELECT
  (SELECT count(*) FROM contributors) AS total_contributors,
  (SELECT count(*) FROM wheelchair_projects) AS total_projects,
  (SELECT count(*) FROM parts) AS total_parts,
  (SELECT count(*) FROM parts WHERE status = 'complete') AS parts_completed,
  (SELECT count(*) FROM parts WHERE status IN ('assigned','printing','printed','shipped')) AS parts_in_progress,
  (SELECT count(*) FROM wheelchair_projects WHERE status = 'complete') AS wheelchairs_completed,
  (SELECT count(*) FROM donations) AS total_donations,
  (SELECT COALESCE(sum(amount_cents), 0) FROM donations) AS total_donated_cents;