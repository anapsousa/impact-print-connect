import { Printer, Heart, Accessibility, ArrowRight } from "lucide-react";
import { Link } from "react-router-dom";
import { motion } from "framer-motion";

const options = [
  {
    icon: Printer,
    title: "Tenho uma impressora 3D",
    description: "Registe a sua impressora, escolha a sua disponibilidade e imprima peças de cadeiras de rodas para quem precisa.",
    cta: "Inscrever-me como Maker",
    to: "/contribute",
  },
  {
    icon: Heart,
    title: "Quero ajudar com donativo",
    description: "O seu contributo financia filamento, envios e montagem. Cada euro aproxima alguém de uma cadeira de rodas.",
    cta: "Fazer um Donativo",
    to: "/donate",
  },
];

const DualCTASection = () => {
  return (
    <section className="py-20 px-6 bg-background">
      <div className="max-w-4xl mx-auto">
        <div className="text-center mb-12">
          <h2 className="text-3xl font-black text-foreground mb-3">Como quer ajudar?</h2>
          <p className="text-muted-foreground text-lg">Escolha a forma que melhor se adequa a si</p>
        </div>

        <div className="grid grid-cols-1 sm:grid-cols-2 gap-6 mb-8">
          {options.map((opt, i) => (
            <motion.div
              key={opt.to}
              initial={{ opacity: 0, y: 20 }}
              whileInView={{ opacity: 1, y: 0 }}
              viewport={{ once: true }}
              transition={{ duration: 0.4, delay: i * 0.1 }}
            >
              <Link to={opt.to} className="block group">
                <div className="bg-card rounded-2xl border border-border p-8 shadow-sm h-full transition-all duration-200 hover:shadow-md hover:-translate-y-1 hover:border-accent/40">
                  <div className="w-12 h-12 rounded-xl bg-accent/10 flex items-center justify-center mb-5">
                    <opt.icon className="w-6 h-6 text-accent" />
                  </div>
                  <h3 className="text-xl font-bold text-foreground mb-2">{opt.title}</h3>
                  <p className="text-muted-foreground text-sm leading-relaxed mb-6">{opt.description}</p>
                  <span className="inline-flex items-center gap-2 text-accent font-bold text-sm group-hover:gap-3 transition-all">
                    {opt.cta} <ArrowRight className="w-4 h-4" />
                  </span>
                </div>
              </Link>
            </motion.div>
          ))}
        </div>

        <div className="text-center">
          <Link to="/request" className="inline-flex items-center gap-2 text-muted-foreground hover:text-foreground transition-colors text-sm">
            <Accessibility className="w-4 h-4" />
            Precisa de uma cadeira de rodas? <span className="underline underline-offset-4">Pedir ajuda aqui</span>
          </Link>
        </div>
      </div>
    </section>
  );
};

export default DualCTASection;
