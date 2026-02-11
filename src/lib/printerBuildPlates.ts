/**
 * Default build plate size (L×P×A mm) per printer model.
 * Used to suggest/backfill build_plate_size for contributors.
 * Sources: manufacturer specs and common community values.
 */
export const PRINTER_BUILD_PLATES: Record<string, string> = {
  // Bambu Lab
  "Bambu Lab A1 mini": "180×180×180",
  "Bambu Lab A1": "256×256×256",
  "Bambu Lab P1S": "256×256×256",
  "Bambu Lab P1P": "256×256×256",
  "Bambu Lab X1C": "256×256×256",
  "Bambu Lab X1E": "256×256×256",
  "Bambu Lab X1": "256×256×256",
  "Bambu Lab H2S": "256×256×256",
  "Bambu Lab H2D": "256×256×256",
  "Bambu Lab P2S": "256×256×256",
  "Bambu Lab A2": "256×256×256",
  // Prusa
  "Prusa MK4S": "250×210×220",
  "Prusa MK4": "250×210×220",
  "Prusa MK3S+": "250×210×210",
  "Prusa MINI+": "180×180×180",
  "Prusa XL": "360×360×360",
  "Prusa Core One": "250×210×220",
  // Creality
  "Creality Ender 3 V3": "220×220×250",
  "Creality Ender 3 V2": "220×220×250",
  "Creality Ender 3 S1": "220×220×270",
  "Creality CR-10 SE": "300×300×400",
  "Creality CR-10": "300×300×400",
  "Creality K1 Max": "300×300×300",
  "Creality K1C": "220×220×250",
  "Creality K1": "220×220×250",
  "Creality K2 Plus": "300×300×300",
  // Elegoo
  "Elegoo Neptune 4 Pro": "225×225×265",
  "Elegoo Neptune 4 Plus": "225×225×265",
  "Elegoo Neptune 4": "225×225×265",
  "Elegoo Neptune 3 Pro": "225×225×280",
  "Elegoo Neptune 3 Plus": "225×225×280",
  // QIDI
  "QIDI X-Max 3": "325×325×315",
  "QIDI X-Plus 3": "280×280×270",
  "QIDI X-Smart 3": "220×220×250",
  "QIDI Q1 Pro": "256×256×256",
  // Anycubic
  "Anycubic Kobra 3": "220×220×250",
  "Anycubic Kobra 2 Pro": "220×220×250",
  "Anycubic Kobra 2": "220×220×250",
  "Anycubic Vyper": "245×245×260",
  // Voron (default nominal)
  "Voron 2.4": "300×300×300",
  "Voron Trident": "300×300×300",
  "Voron 0.2": "120×120×120",
  // Outras
  "FlashForge Adventurer 5M Pro": "220×220×220",
  "FlashForge Adventurer 5M": "220×220×220",
  "Artillery Sidewinder X4 Plus": "300×300×400",
  "Sovol SV08": "220×220×250",
};


/** Get default build plate for a printer model (or undefined if unknown / "Outra: ..."). */
export function getDefaultBuildPlateForPrinter(model: string): string | undefined {
  if (!model || model.startsWith("Outra:")) return undefined;
  return PRINTER_BUILD_PLATES[model];
}

/** Get suggested build plate when user has one or more printers (largest volume or first known). */
export function getSuggestedBuildPlate(printerModels: string[]): string | undefined {
  const known = printerModels
    .filter((m) => !m.startsWith("Outra:"))
    .map((m) => PRINTER_BUILD_PLATES[m])
    .filter(Boolean) as string[];
  if (known.length === 0) return undefined;
  // Prefer 256×256×256 (TMT requirement) if any printer has it, else first/largest
  if (known.some((s) => s === "256×256×256")) return "256×256×256";
  return known[0];
}

export const BUILD_PLATE_OPTIONS = [
  { value: "", label: "Selecionar…" },
  { value: "180×180×180", label: "180 × 180 × 180" },
  { value: "220×220×250", label: "220 × 220 × 250" },
  { value: "256×256×256", label: "256 × 256 × 256" },
  { value: "300×300×300", label: "300 × 300 × 300" },
  { value: "outro", label: "Outro (especificar)" },
] as const;

