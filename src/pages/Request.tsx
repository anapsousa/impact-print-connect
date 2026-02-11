import { useState } from "react";
import { motion, AnimatePresence } from "framer-motion";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { Textarea } from "@/components/ui/textarea";
import {
  Select, SelectContent, SelectItem, SelectTrigger, SelectValue,
} from "@/components/ui/select";
import Navbar from "@/components/Navbar";
import Footer from "@/components/Footer";
import { ArrowLeft, ArrowRight, Check, User, MapPin, FileText, Send, Loader2, Accessibility, AlertCircle } from "lucide-react";
import { supabase } from "@/integrations/supabase/client";
import { useToast } from "@/hooks/use-toast";
import { PORTUGAL_REGIONS } from "@/lib/regions";

const steps = [
  { id: 1, label: "Contacto", icon: User },
  { id: 2, label: "Localização", icon: MapPin },
  { id: 3, label: "Necessidade", icon: FileText },
  { id: 4, label: "Submeter", icon: Send },
];

const beneficiaryTypes = [
  { value: "ate_8", label: "Criança até 8 anos", description: "Entre 1,5 e 8 anos" },
  { value: "mais_8", label: "Criança com mais de 8 anos", description: "Mais de 8 anos" },
];

const howFoundOptions = [
  "Redes sociais (Facebook, Instagram)",
  "Amigo ou familiar",
  "Associação / Instituição",
  "Profissional de saúde",
  "Pesquisa na internet",
  "Outro",
];

const Request = () => {
  const [currentStep, setCurrentStep] = useState(1);
  const [submitted, setSubmitted] = useState(false);
  const [submitting, setSubmitting] = useState(false);
  const { toast } = useToast();

  const [form, setForm] = useState({
    name: "", email: "", phone: "", region: "centro",
    type: "ate_8", age: "", description: "", howFound: "",
  });

  const updateField = (field: string, value: string) => {
    setForm((prev) => ({ ...prev, [field]: value }));
  };

  const canProceed = () => {
    switch (currentStep) {
      case 1: return form.name.trim().length > 0 && form.email.includes("@");
      case 2: return form.region.length > 0;
      case 3: return form.type === "ate_8" && form.age.trim().length > 0 && form.description.trim().length > 0;
      case 4: return true;
      default: return false;
    }
  };

  const isNotSuitableAge = currentStep === 3 && form.type === "mais_8";

  const handleSubmit = async () => {
    setSubmitting(true);
    const { error } = await supabase.from("beneficiary_requests" as any).insert({
      contact_name: form.name.trim(),
      contact_email: form.email.trim(),
      contact_phone: form.phone.trim() || null,
      region: form.region,
      beneficiary_type: form.type,
      beneficiary_age: form.age.trim(),
      description: form.description.trim(),
      how_found_us: form.howFound || null,
    } as any);

    if (error) {
      toast({ title: "Erro ao submeter", description: error.message, variant: "destructive" });
      setSubmitting(false);
      return;
    }
    setSubmitted(true);
    setSubmitting(false);
  };

  const handleNext = () => {
    if (currentStep < 4) setCurrentStep((s) => s + 1);
    else handleSubmit();
  };

  const slideVariants = {
    enter: { opacity: 0, x: 30 },
    center: { opacity: 1, x: 0 },
    exit: { opacity: 0, x: -30 },
  };

  if (submitted) {
    return (
      <div className="min-h-screen bg-background">
        <Navbar />
        <div className="pt-32 pb-20 px-6 flex items-center justify-center min-h-[80vh]">
          <motion.div initial={{ opacity: 0, scale: 0.9 }} animate={{ opacity: 1, scale: 1 }} transition={{ duration: 0.4 }} className="text-center max-w-md">
            <motion.div initial={{ scale: 0 }} animate={{ scale: 1 }} transition={{ duration: 0.4, delay: 0.2, type: "spring", stiffness: 200 }}
              className="w-20 h-20 rounded-full bg-accent/10 flex items-center justify-center mx-auto mb-6">
              <Check className="w-10 h-10 text-accent" />
            </motion.div>
            <h1 className="text-3xl font-black text-foreground mb-3">Pedido Registado!</h1>
            <p className="text-muted-foreground mb-2">Obrigado, <span className="font-semibold text-foreground">{form.name}</span>.</p>
            <p className="text-muted-foreground text-sm mb-6">
              O seu pedido está agora <span className="font-semibold text-accent">pendente de avaliação</span>. 
              Um organizador irá analisá-lo e entrar em contacto consigo em breve.
            </p>
            <p className="text-xs text-muted-foreground">Receberá atualizações no email: <span className="font-medium">{form.email}</span></p>
          </motion.div>
        </div>
        <Footer />
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-background">
      <Navbar />
      <div className="pt-28 pb-20 px-6">
        <div className="max-w-lg mx-auto">
          <div className="text-center mb-10">
            <div className="inline-flex items-center gap-2 px-3 py-1 rounded-full bg-accent/10 border border-accent/20 mb-4">
              <Accessibility className="w-3.5 h-3.5 text-accent" />
              <span className="text-xs font-semibold text-accent">Mobilidade para todos</span>
            </div>
            <h1 className="text-3xl font-black text-foreground mb-2">Pedir Ajuda</h1>
            <p className="text-muted-foreground">Registe a necessidade de uma cadeira de rodas para uma criança. Indique se é para até 8 anos ou mais de 8 anos.</p>
          </div>

          {/* Steps indicator */}
          <div className="flex items-center justify-center gap-1.5 mb-10">
            {steps.map((step) => (
              <div key={step.id} className={`flex items-center gap-1 px-2.5 py-1.5 rounded-full text-xs font-medium transition-all duration-200 ${
                step.id === currentStep ? "bg-accent/10 text-accent border border-accent/20"
                : step.id < currentStep ? "bg-accent/5 text-accent/60" : "text-muted-foreground/40"
              }`}>
                {step.id < currentStep ? <Check className="w-3 h-3" /> : <step.icon className="w-3 h-3" />}
                <span className="hidden sm:inline">{step.label}</span>
              </div>
            ))}
          </div>

          <div className="bg-card rounded-2xl border border-border p-8 shadow-sm min-h-[280px] flex flex-col">
            <AnimatePresence mode="wait">
              <motion.div key={currentStep} variants={slideVariants} initial="enter" animate="center" exit="exit" transition={{ duration: 0.2 }} className="flex-1">
                {currentStep === 1 && (
                  <div className="space-y-4">
                    <div>
                      <Label className="text-base font-bold text-foreground">Dados de Contacto</Label>
                      <p className="text-sm text-muted-foreground mt-1 mb-3">Para podermos entrar em contacto consigo sobre o pedido.</p>
                    </div>
                    <div>
                      <Label className="text-sm">Nome do responsável / instituição *</Label>
                      <Input placeholder="ex.: Maria Santos ou APPC" value={form.name} onChange={(e) => updateField("name", e.target.value)} className="mt-1" autoFocus />
                    </div>
                    <div>
                      <Label className="text-sm">Email *</Label>
                      <Input type="email" placeholder="email@exemplo.com" value={form.email} onChange={(e) => updateField("email", e.target.value)} className="mt-1" />
                    </div>
                    <div>
                      <Label className="text-sm">Telefone (opcional)</Label>
                      <Input type="tel" placeholder="+351 912 345 678" value={form.phone} onChange={(e) => updateField("phone", e.target.value)} className="mt-1" />
                    </div>
                  </div>
                )}

                {currentStep === 2 && (
                  <div className="space-y-4">
                    <div>
                      <Label className="text-base font-bold text-foreground">Localização</Label>
                      <p className="text-sm text-muted-foreground mt-1 mb-3">A região ajuda-nos a encontrar voluntários próximos.</p>
                    </div>
                    <Select value={form.region} onValueChange={(v) => updateField("region", v)}>
                      <SelectTrigger className="text-base py-5"><SelectValue placeholder="Selecionar região" /></SelectTrigger>
                      <SelectContent>
                        {PORTUGAL_REGIONS.map((r) => (
                          <SelectItem key={r.id} value={r.id}>{r.name}</SelectItem>
                        ))}
                      </SelectContent>
                    </Select>
                  </div>
                )}

                {currentStep === 3 && isNotSuitableAge && (
                  <motion.div key="not-suitable" variants={slideVariants} initial="enter" animate="center" className="space-y-6 py-4">
                    <div className="flex flex-col items-center text-center">
                      <div className="w-16 h-16 rounded-full bg-amber-500/10 flex items-center justify-center mb-4">
                        <AlertCircle className="w-8 h-8 text-amber-600 dark:text-amber-500" />
                      </div>
                      <h3 className="text-xl font-bold text-foreground mb-2">Lamentamos, não podemos prosseguir</h3>
                      <p className="text-muted-foreground text-sm leading-relaxed max-w-sm">
                        Esta cadeira não é adequada para a faixa etária que indicou. O nosso modelo está concebido apenas para crianças entre 1,5 e 8 anos e não conseguimos aceitar pedidos para idades superiores.
                      </p>
                      <p className="text-muted-foreground text-sm mt-2">
                        Se a criança tiver até 8 anos, escolha a opção abaixo para continuar o pedido. Para outras idades, recomendamos que contacte o seu médico ou uma associação de apoio à mobilidade para explorar outras soluções.
                      </p>
                    </div>
                    <div className="flex flex-col sm:flex-row gap-2 justify-center">
                      <Button variant="outline" onClick={() => updateField("type", "ate_8")}
                        className="border-accent/30 text-accent hover:bg-accent/10">
                        É para uma criança até 8 anos — continuar
                      </Button>
                      <Button variant="ghost" onClick={() => setCurrentStep(2)} className="text-muted-foreground">
                        <ArrowLeft className="w-4 h-4 mr-1" /> Voltar à localização
                      </Button>
                    </div>
                  </motion.div>
                )}

                {currentStep === 3 && !isNotSuitableAge && (
                  <div className="space-y-4">
                    <div>
                      <Label className="text-base font-bold text-foreground">Detalhes da Necessidade</Label>
                      <p className="text-sm text-muted-foreground mt-1 mb-3">Descreva para quem é e o que precisa.</p>
                    </div>
                    <div>
                      <Label className="text-sm">Para quem é a cadeira? *</Label>
                      <p className="text-xs text-muted-foreground mt-0.5 mb-1">Criança até 8 anos ou com mais de 8 anos?</p>
                      <div className="grid grid-cols-2 gap-2 mt-1">
                        {beneficiaryTypes.map((t) => (
                          <button key={t.value} onClick={() => updateField("type", t.value)}
                            className={`text-left px-4 py-3 rounded-xl border text-sm transition-all duration-200 ${
                              form.type === t.value ? "bg-accent/10 border-accent/30 text-accent" : "bg-background border-border text-foreground hover:border-accent/20"
                            }`}>
                            <span className="font-medium">{t.label}</span>
                            <span className="block text-xs mt-0.5 opacity-70">{t.description}</span>
                          </button>
                        ))}
                      </div>
                    </div>
                    <div>
                      <Label className="text-sm">Idade aproximada *</Label>
                      <Input placeholder="ex.: 3 anos" value={form.age} onChange={(e) => updateField("age", e.target.value)} className="mt-1" />
                    </div>
                    <div>
                      <Label className="text-sm">Descrição da necessidade *</Label>
                      <Textarea placeholder="Descreva a situação — tipo de mobilidade necessária, condição, etc." value={form.description} onChange={(e) => updateField("description", e.target.value)} className="mt-1 resize-none" rows={3} />
                    </div>
                  </div>
                )}

                {currentStep === 4 && (
                  <div className="space-y-4">
                    <div>
                      <Label className="text-base font-bold text-foreground">Como soube do projeto?</Label>
                      <p className="text-sm text-muted-foreground mt-1 mb-3">Opcional — ajuda-nos a melhorar a divulgação.</p>
                    </div>
                    <div className="space-y-2">
                      {howFoundOptions.map((opt) => (
                        <button key={opt} onClick={() => updateField("howFound", opt)}
                          className={`w-full text-left px-4 py-3 rounded-xl border text-sm font-medium transition-all duration-200 ${
                            form.howFound === opt ? "bg-accent/10 border-accent/30 text-accent" : "bg-background border-border text-foreground hover:border-accent/20"
                          }`}>{opt}</button>
                      ))}
                    </div>
                    <div className="mt-4 p-4 bg-muted/50 rounded-xl border border-border">
                      <h4 className="text-sm font-bold text-foreground mb-2">Resumo do pedido:</h4>
                      <div className="text-xs text-muted-foreground space-y-1">
                        <p><span className="font-medium text-foreground">Nome:</span> {form.name}</p>
                        <p><span className="font-medium text-foreground">Email:</span> {form.email}</p>
                        <p><span className="font-medium text-foreground">Região:</span> {PORTUGAL_REGIONS.find(r => r.id === form.region)?.name}</p>
                        <p><span className="font-medium text-foreground">Para quem:</span> {beneficiaryTypes.find(t => t.value === form.type)?.label ?? form.type}, {form.age}</p>
                      </div>
                    </div>
                  </div>
                )}
              </motion.div>
            </AnimatePresence>

            <div className="flex justify-between mt-8">
              <Button variant="ghost" onClick={() => setCurrentStep((s) => Math.max(s - 1, 1))} disabled={currentStep === 1}
                className="text-muted-foreground hover:text-foreground">
                <ArrowLeft className="w-4 h-4 mr-1" /> Anterior
              </Button>
              <Button onClick={handleNext} disabled={!canProceed() || submitting}
                className="bg-accent text-accent-foreground hover:bg-emerald-light btn-lift font-semibold">
                {submitting ? <Loader2 className="w-4 h-4 mr-1 animate-spin" /> : null}
                {currentStep === 4 ? "Submeter Pedido" : "Seguinte"}
                {currentStep < 4 && <ArrowRight className="w-4 h-4 ml-1" />}
              </Button>
            </div>
          </div>
        </div>
      </div>
      <Footer />
    </div>
  );
};

export default Request;
