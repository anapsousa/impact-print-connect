import { useState } from "react";
import { motion, AnimatePresence } from "framer-motion";
import { Printer, Target } from "lucide-react";

interface Region {
  id: string;
  name: string;
  x: number;
  y: number;
  width: number;
  height: number;
  printers: number;
  chairsNeeded: number;
  chairsComplete: number;
}

const regions: Region[] = [
  { id: "norte", name: "Norte", x: 25, y: 2, width: 28, height: 22, printers: 24, chairsNeeded: 15, chairsComplete: 9 },
  { id: "centro", name: "Centro", x: 18, y: 24, width: 30, height: 20, printers: 18, chairsNeeded: 12, chairsComplete: 5 },
  { id: "lisboa", name: "Lisboa", x: 15, y: 46, width: 22, height: 16, printers: 30, chairsNeeded: 18, chairsComplete: 12 },
  { id: "alentejo", name: "Alentejo", x: 22, y: 62, width: 32, height: 18, printers: 8, chairsNeeded: 6, chairsComplete: 2 },
  { id: "algarve", name: "Algarve", x: 20, y: 80, width: 30, height: 14, printers: 12, chairsNeeded: 8, chairsComplete: 3 },
  { id: "acores", name: "Açores", x: 68, y: 10, width: 22, height: 18, printers: 5, chairsNeeded: 4, chairsComplete: 1 },
  { id: "madeira", name: "Madeira", x: 68, y: 55, width: 22, height: 18, printers: 10, chairsNeeded: 7, chairsComplete: 4 },
];

const RegionMap = () => {
  const [hoveredRegion, setHoveredRegion] = useState<Region | null>(null);

  return (
    <section className="py-20 px-6 bg-background">
      <div className="max-w-5xl mx-auto">
        <div className="text-center mb-12">
          <h2 className="text-3xl font-black text-foreground mb-3">Impact by Region</h2>
          <p className="text-muted-foreground text-lg">
            Hover over a region to see printer activity and wheelchair needs
          </p>
        </div>

        <div className="relative bg-card rounded-2xl border border-border p-8 shadow-sm overflow-hidden">
          {/* Map grid */}
          <div className="relative w-full aspect-[2/1] min-h-[300px]">
            {regions.map((region) => {
              const isHovered = hoveredRegion?.id === region.id;
              const intensity = Math.min(region.printers / 30, 1);
              
              return (
                <motion.div
                  key={region.id}
                  className="absolute rounded-xl cursor-pointer transition-colors duration-200 flex items-center justify-center"
                  style={{
                    left: `${region.x}%`,
                    top: `${region.y}%`,
                    width: `${region.width}%`,
                    height: `${region.height}%`,
                    backgroundColor: isHovered
                      ? `hsl(160 84% 39% / 0.25)`
                      : `hsl(213 52% 24% / ${0.06 + intensity * 0.14})`,
                    borderWidth: 2,
                    borderColor: isHovered
                      ? `hsl(160 84% 39% / 0.5)`
                      : `hsl(213 52% 24% / 0.08)`,
                  }}
                  onMouseEnter={() => setHoveredRegion(region)}
                  onMouseLeave={() => setHoveredRegion(null)}
                  whileHover={{ scale: 1.02 }}
                  transition={{ duration: 0.15 }}
                >
                  <div className="flex flex-col items-center gap-1">
                    <div className="flex items-center gap-1">
                      <div
                        className="w-2 h-2 rounded-full"
                        style={{
                          backgroundColor: isHovered
                            ? "hsl(160 84% 39%)"
                            : `hsl(213 52% 24% / ${0.3 + intensity * 0.5})`,
                        }}
                      />
                      <span className={`text-xs font-semibold ${
                        isHovered ? "text-accent" : "text-foreground/40"
                      }`}>
                        {region.printers}
                      </span>
                    </div>
                    <span className={`text-[10px] font-medium ${
                      isHovered ? "text-foreground/70" : "text-foreground/25"
                    } hidden sm:block`}>
                      {region.name}
                    </span>
                  </div>
                </motion.div>
              );
            })}
          </div>

          {/* Tooltip */}
          <AnimatePresence>
            {hoveredRegion && (
              <motion.div
                initial={{ opacity: 0, y: 8 }}
                animate={{ opacity: 1, y: 0 }}
                exit={{ opacity: 0, y: 8 }}
                transition={{ duration: 0.15 }}
                className="absolute bottom-6 left-1/2 -translate-x-1/2 bg-navy-deep text-primary-foreground px-5 py-4 rounded-xl shadow-lg border border-navy-light/20 min-w-[260px]"
              >
                <p className="font-bold text-base mb-2">{hoveredRegion.name}</p>
                <div className="flex items-center gap-4 text-sm">
                  <div className="flex items-center gap-1.5">
                    <Printer className="w-3.5 h-3.5 text-accent" />
                    <span>{hoveredRegion.printers} printers</span>
                  </div>
                  <div className="flex items-center gap-1.5">
                    <Target className="w-3.5 h-3.5 text-emerald-light" />
                    <span>Need {hoveredRegion.chairsNeeded - hoveredRegion.chairsComplete} more chairs</span>
                  </div>
                </div>
                <div className="mt-2 w-full bg-navy-light/30 rounded-full h-1.5">
                  <div
                    className="bg-accent rounded-full h-1.5 transition-all"
                    style={{ width: `${(hoveredRegion.chairsComplete / hoveredRegion.chairsNeeded) * 100}%` }}
                  />
                </div>
              </motion.div>
            )}
          </AnimatePresence>
        </div>
      </div>
    </section>
  );
};

export default RegionMap;
