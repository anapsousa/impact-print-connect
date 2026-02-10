
-- Drop the dependent view first
DROP VIEW IF EXISTS public.regional_stats;

-- Add new array column
ALTER TABLE public.contributors ADD COLUMN printer_models text[] DEFAULT '{}';

-- Migrate existing data
UPDATE public.contributors SET printer_models = ARRAY[printer_model] WHERE printer_model IS NOT NULL;

-- Drop old column
ALTER TABLE public.contributors DROP COLUMN printer_model;

-- Recreate view using new column
CREATE OR REPLACE VIEW public.regional_stats AS
SELECT region,
    count(*) AS contributor_count,
    count(DISTINCT unnested_printer) AS printer_count
FROM contributors, unnest(printer_models) AS unnested_printer
GROUP BY region;
