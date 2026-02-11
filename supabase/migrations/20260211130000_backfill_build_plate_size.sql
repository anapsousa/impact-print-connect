-- Backfill build_plate_size for existing contributors from first printer model.
-- Uses same default dimensions as frontend (lib/printerBuildPlates.ts).
-- Only updates rows where build_plate_size IS NULL and first printer is in the map.
-- "Outra: ..." and unknown models are left NULL so users can fill in the Portal.

UPDATE public.contributors
SET build_plate_size = CASE (printer_models)[1]
  WHEN 'Bambu Lab A1 mini' THEN '180×180×180'
  WHEN 'Bambu Lab A1' THEN '256×256×256'
  WHEN 'Bambu Lab P1S' THEN '256×256×256'
  WHEN 'Bambu Lab P1P' THEN '256×256×256'
  WHEN 'Bambu Lab X1C' THEN '256×256×256'
  WHEN 'Bambu Lab X1E' THEN '256×256×256'
  WHEN 'Bambu Lab X1' THEN '256×256×256'
  WHEN 'Bambu Lab H2S' THEN '256×256×256'
  WHEN 'Bambu Lab H2D' THEN '256×256×256'
  WHEN 'Bambu Lab P2S' THEN '256×256×256'
  WHEN 'Bambu Lab A2' THEN '256×256×256'
  WHEN 'Prusa MK4S' THEN '250×210×220'
  WHEN 'Prusa MK4' THEN '250×210×220'
  WHEN 'Prusa MK3S+' THEN '250×210×210'
  WHEN 'Prusa MINI+' THEN '180×180×180'
  WHEN 'Prusa XL' THEN '360×360×360'
  WHEN 'Prusa Core One' THEN '250×210×220'
  WHEN 'Creality Ender 3 V3' THEN '220×220×250'
  WHEN 'Creality Ender 3 V2' THEN '220×220×250'
  WHEN 'Creality Ender 3 S1' THEN '220×220×270'
  WHEN 'Creality CR-10 SE' THEN '300×300×400'
  WHEN 'Creality CR-10' THEN '300×300×400'
  WHEN 'Creality K1 Max' THEN '300×300×300'
  WHEN 'Creality K1C' THEN '220×220×250'
  WHEN 'Creality K1' THEN '220×220×250'
  WHEN 'Creality K2 Plus' THEN '300×300×300'
  WHEN 'Elegoo Neptune 4 Pro' THEN '225×225×265'
  WHEN 'Elegoo Neptune 4 Plus' THEN '225×225×265'
  WHEN 'Elegoo Neptune 4' THEN '225×225×265'
  WHEN 'Elegoo Neptune 3 Pro' THEN '225×225×280'
  WHEN 'Elegoo Neptune 3 Plus' THEN '225×225×280'
  WHEN 'QIDI X-Max 3' THEN '325×325×315'
  WHEN 'QIDI X-Plus 3' THEN '280×280×270'
  WHEN 'QIDI X-Smart 3' THEN '220×220×250'
  WHEN 'QIDI Q1 Pro' THEN '256×256×256'
  WHEN 'Anycubic Kobra 3' THEN '220×220×250'
  WHEN 'Anycubic Kobra 2 Pro' THEN '220×220×250'
  WHEN 'Anycubic Kobra 2' THEN '220×220×250'
  WHEN 'Anycubic Vyper' THEN '245×245×260'
  WHEN 'Voron 2.4' THEN '300×300×300'
  WHEN 'Voron Trident' THEN '300×300×300'
  WHEN 'Voron 0.2' THEN '120×120×120'
  WHEN 'FlashForge Adventurer 5M Pro' THEN '220×220×220'
  WHEN 'FlashForge Adventurer 5M' THEN '220×220×220'
  WHEN 'Artillery Sidewinder X4 Plus' THEN '300×300×400'
  WHEN 'Sovol SV08' THEN '220×220×250'
  ELSE NULL
END
WHERE build_plate_size IS NULL
  AND printer_models IS NOT NULL
  AND array_length(printer_models, 1) > 0
  AND (printer_models)[1] IN (
    'Bambu Lab A1 mini', 'Bambu Lab A1', 'Bambu Lab P1S', 'Bambu Lab P1P',
    'Bambu Lab X1C', 'Bambu Lab X1E', 'Bambu Lab X1', 'Bambu Lab H2S',
    'Bambu Lab H2D', 'Bambu Lab P2S', 'Bambu Lab A2',
    'Prusa MK4S', 'Prusa MK4', 'Prusa MK3S+', 'Prusa MINI+', 'Prusa XL', 'Prusa Core One',
    'Creality Ender 3 V3', 'Creality Ender 3 V2', 'Creality Ender 3 S1',
    'Creality CR-10 SE', 'Creality CR-10', 'Creality K1 Max', 'Creality K1C',
    'Creality K1', 'Creality K2 Plus',
    'Elegoo Neptune 4 Pro', 'Elegoo Neptune 4 Plus', 'Elegoo Neptune 4',
    'Elegoo Neptune 3 Pro', 'Elegoo Neptune 3 Plus',
    'QIDI X-Max 3', 'QIDI X-Plus 3', 'QIDI X-Smart 3', 'QIDI Q1 Pro',
    'Anycubic Kobra 3', 'Anycubic Kobra 2 Pro', 'Anycubic Kobra 2', 'Anycubic Vyper',
    'Voron 2.4', 'Voron Trident', 'Voron 0.2',
    'FlashForge Adventurer 5M Pro', 'FlashForge Adventurer 5M',
    'Artillery Sidewinder X4 Plus', 'Sovol SV08'
  );
