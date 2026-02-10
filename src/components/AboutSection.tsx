import { motion } from "framer-motion";

const AboutSection = () => {
  return (
    <section className="py-20 px-6 bg-background">
      <div className="max-w-5xl mx-auto">
        <motion.div
          initial={{ opacity: 0, y: 20 }}
          whileInView={{ opacity: 1, y: 0 }}
          viewport={{ once: true, margin: "-100px" }}
          transition={{ duration: 0.4 }}
          className="grid grid-cols-1 md:grid-cols-2 gap-10 items-center"
        >
          <div className="rounded-2xl overflow-hidden shadow-lg border border-border">
            <img
              src="/placeholder.svg"
              alt="Cadeira de rodas impressa em 3D para crianças"
              className="w-full h-full object-cover aspect-[4/3]"
            />
          </div>

          <div className="flex flex-col gap-5">
            <div className="inline-flex self-start items-center gap-2 px-3 py-1 rounded-full bg-accent/10 border border-accent/20">
              <span className="text-sm font-medium text-accent">Sobre o Projeto</span>
            </div>

            <h2 className="text-3xl font-black text-foreground leading-tight">
              Impressão 3D ao serviço da mobilidade infantil
            </h2>

            <div className="space-y-4 text-muted-foreground leading-relaxed">
              <p>
                O <strong className="text-foreground">PrintImpact Connect</strong> coordena uma rede distribuída de makers com impressoras 3D para produzir peças de cadeiras de rodas para crianças com mobilidade reduzida — sem custos para as famílias.
              </p>
              <p>
                Inspirado no modelo <strong className="text-foreground">3D Toddler Mobility Trainer (TMT)</strong> da{" "}
                <a href="https://3d-mobility.org" target="_blank" rel="noopener noreferrer" className="text-accent hover:underline">
                  3D-Mobility.org
                </a>, cada cadeira é composta por 24 peças que podem ser impressas por voluntários em qualquer parte de Portugal.
              </p>
              <p>
                Uma iniciativa da comunidade <strong className="text-foreground">Smart 3D</strong> portuguesa — porque cada impressora conta, cada peça importa e cada cadeira muda uma vida.
              </p>
            </div>
          </div>
        </motion.div>
      </div>
    </section>
  );
};

export default AboutSection;
