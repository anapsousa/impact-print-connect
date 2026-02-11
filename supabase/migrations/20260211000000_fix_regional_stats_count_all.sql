-- Fix regional_stats to count ALL contributors (including those with no printer_models).
-- Previous view used unnest(printer_models) which excluded contributors with empty printer_models.

DROP VIEW IF EXISTS public.regional_stats;

CREATE VIEW public.regional_stats WITH (security_invoker = on) AS
SELECT
  region,
  count(*)::int AS contributor_count,
  (sum(coalesce(cardinality(printer_models), 0)))::int AS printer_count
FROM public.contributors
GROUP BY region;
