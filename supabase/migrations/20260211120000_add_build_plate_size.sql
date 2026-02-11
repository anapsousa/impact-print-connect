-- Add build_plate_size so we can allocate parts correctly (e.g. "220×220×250", "256×256×256").
ALTER TABLE public.contributors
  ADD COLUMN IF NOT EXISTS build_plate_size text NULL;

COMMENT ON COLUMN public.contributors.build_plate_size IS 'Build plate dimensions (L×P×A mm) for part allocation, e.g. 220×220×250';
