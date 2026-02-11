import { useState } from "react";
import { motion } from "framer-motion";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { Textarea } from "@/components/ui/textarea";
import { Checkbox } from "@/components/ui/checkbox";
import {
  Select, SelectContent, SelectItem, SelectTrigger, SelectValue,
} from "@/components/ui/select";
import Navbar from "@/components/Navbar";
import Footer from "@/components/Footer";
import {
  Heart,
  Package,
  Truck,
  Sparkles,
  Check,
  Loader2,
  MapPin,
  Mail,
  Phone,
  Copy,
  Smartphone,
  Banknote,
  CreditCard,
  ChevronDown,
  ChevronUp,
} from "lucide-react";
import { supabase } from "@/integrations/supabase/client";
import { useToast } from "@/hooks/use-toast";

const impactCards = [
  { amount: "10€", description: "1kg de PETG", detail: "≈ 3 peças de uma cadeira", icon: Package },
  { amount: "350€", description: "1 cadeira completa", detail: "Filamento + envios + montagem", icon: Heart },
  { amount: "15€", description: "Custos de envio", detail: "Enviar peças ao ponto de montagem", icon: Truck },
];

const methods = [
  { value: "mbway", label: "MB Way" },
  { value: "transferencia", label: "Transferência Bancária" },
  { value: "paypal", label: "PayPal" },
  { value: "outro", label: "Outro" },
];

const QUICK_AMOUNTS = [10, 15, 35, 50];

const mbwayNumberPretty = "+351 913 492 398";
const mbwayNumberDigits = "351913492398";
const instagramUrl = "https://www.instagram.com/smart3d_pt";
const contactEmail = "encomendas@smart3d.pt";

// Optional: set VITE_DONATE_IBAN and/or VITE_PAYPAL_LINK in .env to show bank/PayPal details
const donateIban = import.meta.env.VITE_DONATE_IBAN as string | undefined;
const paypalLink = import.meta.env.VITE_PAYPAL_LINK as string | undefined;

const Donate = () => {
  const [selectedAmount, setSelectedAmount] = useState<string>("");
  const [customAmount, setCustomAmount] = useState("");
  const [showForm, setShowForm] = useState(false);
  const [submitted, setSubmitted] = useState(false);
  const [submitting, setSubmitting] = useState(false);
  const { toast } = useToast();

  const displayAmount = customAmount.trim() || selectedAmount || "";
  const numericAmount = displayAmount ? Number(displayAmount) : null;
  const isValidAmount = numericAmount != null && !isNaN(numericAmount) && numericAmount > 0;

  const [form, setForm] = useState({
    name: "", email: "", amount: "", method: "mbway", message: "", publicName: false,
  });

  const updateField = (field: string, value: string | boolean) => {
    setForm((prev) => ({ ...prev, [field]: value }));
  };

  const setAmount = (value: string) => {
    setCustomAmount("");
    setSelectedAmount(value);
    updateField("amount", value);
  };

  const handleSubmit = async () => {
    const amountToUse = form.amount || displayAmount;
    if (!amountToUse || isNaN(Number(amountToUse))) {
      toast({ title: "Valor inválido", description: "Indique um valor numérico.", variant: "destructive" });
      return;
    }
    setSubmitting(true);
    const { error } = await supabase.from("donations" as any).insert({
      donor_name: form.name.trim() || null,
      donor_email: form.email.trim() || null,
      amount_cents: Math.round(Number(amountToUse) * 100),
      method: form.method,
      message: form.message.trim() || null,
      public_name: form.publicName,
    } as any);

    if (error) {
      toast({ title: "Erro ao registar", description: error.message, variant: "destructive" });
      setSubmitting(false);
      return;
    }
    setSubmitted(true);
    setSubmitting(false);
  };

  const handleCopyMbway = async () => {
    try {
      if (typeof navigator !== "undefined" && navigator.clipboard?.writeText) {
        await navigator.clipboard.writeText(mbwayNumberDigits);
      } else if (typeof document !== "undefined") {
        const textArea = document.createElement("textarea");
        textArea.value = mbwayNumberDigits;
        textArea.style.position = "fixed";
        textArea.style.left = "-9999px";
        document.body.appendChild(textArea);
        textArea.focus();
        textArea.select();
        document.execCommand("copy");
        document.body.removeChild(textArea);
      } else {
        throw new Error("Clipboard API indisponível");
      }
      toast({
        title: "Número copiado",
        description: "Cole na app MB Way para enviar o donativo.",
      });
    } catch {
      toast({
        title: "Não foi possível copiar",
        description: "Copie manualmente: " + mbwayNumberDigits,
        variant: "destructive",
      });
    }
  };

  const syncFormAmount = () => {
    const a = customAmount.trim() || selectedAmount;
    if (a) updateField("amount", a);
  };

  return (
    <div className="min-h-screen bg-background">
      <Navbar />

      {/* Hero */}
      <section className="pt-28 pb-12 px-6">
        <div className="max-w-3xl mx-auto text-center">
          <motion.div initial={{ opacity: 0, y: 20 }} animate={{ opacity: 1, y: 0 }} transition={{ duration: 0.4 }}>
            <div className="inline-flex items-center gap-2 px-3 py-1 rounded-full bg-accent/10 border border-accent/20 mb-6">
              <Heart className="w-3.5 h-3.5 text-accent" />
              <span className="text-xs font-semibold text-accent">Cada euro faz a diferença</span>
            </div>
            <h1 className="text-4xl sm:text-5xl font-black text-foreground mb-4">
              Apoie a <span className="text-gradient-hero">Missão</span>
            </h1>
            <p className="text-muted-foreground text-lg max-w-xl mx-auto leading-relaxed">
              Não tem impressora 3D? Pode ajudar com um donativo — o filamento, os envios e a logística precisam de apoio para que cada cadeira chegue a quem precisa.
            </p>
          </motion.div>
        </div>
      </section>

      {/* Impact Cards */}
      <section className="pb-12 px-6">
        <div className="max-w-3xl mx-auto grid grid-cols-1 sm:grid-cols-3 gap-4">
          {impactCards.map((card, i) => (
            <motion.div key={card.amount} initial={{ opacity: 0, y: 15 }} animate={{ opacity: 1, y: 0 }} transition={{ duration: 0.3, delay: i * 0.1 }}
              className="bg-card rounded-2xl border border-border p-6 text-center bg-card-hover">
              <card.icon className="w-8 h-8 text-accent mx-auto mb-3" />
              <p className="text-2xl font-black text-foreground mb-1">{card.amount}</p>
              <p className="text-sm font-semibold text-foreground mb-1">{card.description}</p>
              <p className="text-xs text-muted-foreground">{card.detail}</p>
            </motion.div>
          ))}
        </div>
      </section>

      {/* Doar em 3 passos */}
      <section className="pb-12 px-6">
        <div className="max-w-2xl mx-auto">
          <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }} className="text-center mb-8">
            <h2 className="text-2xl font-black text-foreground">Doar em 3 passos</h2>
          </motion.div>

          {/* Passo 1: Escolha o valor */}
          <motion.div initial={{ opacity: 0, y: 10 }} animate={{ opacity: 1, y: 0 }} transition={{ delay: 0.1 }} className="mb-8">
            <p className="text-sm font-bold text-accent mb-2">Passo 1 — Escolha o valor (€)</p>
            <div className="flex flex-wrap gap-2 mb-3">
              {QUICK_AMOUNTS.map((n) => (
                <Button
                  key={n}
                  type="button"
                  variant={selectedAmount === String(n) && !customAmount ? "default" : "outline"}
                  className={selectedAmount === String(n) && !customAmount ? "bg-accent text-accent-foreground hover:bg-emerald-light" : ""}
                  onClick={() => setAmount(String(n))}
                >
                  {n}€
                </Button>
              ))}
            </div>
            <div className="flex items-center gap-2">
              <Label htmlFor="custom-amount" className="text-sm text-muted-foreground whitespace-nowrap">Outro valor:</Label>
              <Input
                id="custom-amount"
                type="number"
                min="1"
                step="1"
                placeholder="ex: 25"
                value={customAmount}
                onChange={(e) => {
                  setCustomAmount(e.target.value);
                  setSelectedAmount("");
                  updateField("amount", e.target.value);
                }}
                className="max-w-[120px]"
              />
              <span className="text-muted-foreground">€</span>
            </div>
          </motion.div>

          {/* Passo 2: Como pagar */}
          <motion.div initial={{ opacity: 0, y: 10 }} animate={{ opacity: 1, y: 0 }} transition={{ delay: 0.2 }} className="space-y-4 mb-8">
            <p className="text-sm font-bold text-accent mb-3">Passo 2 — Envie o donativo</p>

            {/* MB Way — principal */}
            <div className="bg-navy-gradient rounded-2xl p-6 text-primary-foreground relative overflow-hidden">
              <div className="absolute inset-0 opacity-[0.05]" style={{ backgroundImage: `radial-gradient(circle at 1px 1px, hsl(0 0% 100%) 1px, transparent 0)`, backgroundSize: "28px 28px" }} />
              <div className="relative z-10">
                <div className="flex items-center gap-2 mb-2">
                  <Smartphone className="w-6 h-6 text-accent" />
                  <h3 className="text-lg font-black">MB Way — o mais rápido</h3>
                </div>
                <p className="text-sm text-primary-foreground/85 mb-4">
                  Use o número abaixo na app MB Way para enviar o valor {isValidAmount ? `de ${numericAmount}€` : "que escolheu"} em segundos.
                </p>
                <div className="flex flex-col sm:flex-row gap-3">
                  <Button
                    asChild
                    size="lg"
                    className="bg-accent text-accent-foreground hover:bg-emerald-light btn-lift font-bold order-2 sm:order-1"
                  >
                    <a href={`mbway://send?phone=${mbwayNumberDigits}`} rel="noreferrer">
                      <Smartphone className="w-4 h-4 mr-2" /> Abrir app MB Way
                    </a>
                  </Button>
                  <Button
                    size="lg"
                    variant="outline"
                    onClick={handleCopyMbway}
                    className="border-primary-foreground/40 bg-primary-foreground/10 text-primary-foreground font-semibold hover:bg-primary-foreground/20 order-1 sm:order-2"
                  >
                    <Copy className="w-4 h-4 mr-2" /> Copiar número {mbwayNumberPretty}
                  </Button>
                </div>
              </div>
            </div>

            {/* Transferência bancária */}
            <div className="bg-card rounded-2xl border border-border p-5">
              <div className="flex items-start gap-3">
                <Banknote className="w-5 h-5 text-accent mt-0.5" />
                <div className="min-w-0">
                  <h3 className="font-bold text-foreground mb-1">Transferência bancária</h3>
                  {donateIban ? (
                    <>
                      <p className="text-sm text-muted-foreground mb-2">Use o IBAN abaixo e indique na descrição: &quot;Donativo Print Impact&quot;.</p>
                      <div className="flex flex-wrap items-center gap-2">
                        <code className="text-sm bg-muted px-2 py-1 rounded break-all">{donateIban}</code>
                        <Button size="sm" variant="ghost" className="shrink-0" onClick={() => { navigator.clipboard?.writeText(donateIban); toast({ title: "IBAN copiado" }); }}>
                          <Copy className="w-3.5 h-3.5" />
                        </Button>
                      </div>
                    </>
                  ) : (
                    <p className="text-sm text-muted-foreground">
                      Para obter o IBAN, envie um email para{" "}
                      <a href={`mailto:${contactEmail}`} className="text-accent font-medium hover:underline">{contactEmail}</a>
                      {" "}ou{" "}
                      <a href={instagramUrl} target="_blank" rel="noopener noreferrer" className="text-accent font-medium hover:underline">contacte-nos no Instagram</a>.
                    </p>
                  )}
                </div>
              </div>
            </div>

            {/* PayPal */}
            <div className="bg-card rounded-2xl border border-border p-5">
              <div className="flex items-start gap-3">
                <CreditCard className="w-5 h-5 text-accent mt-0.5" />
                <div className="min-w-0">
                  <h3 className="font-bold text-foreground mb-1">PayPal</h3>
                  {paypalLink ? (
                    <a href={paypalLink} target="_blank" rel="noopener noreferrer" className="inline-flex items-center gap-2 text-accent font-semibold hover:underline">
                      Doar via PayPal <span aria-hidden>→</span>
                    </a>
                  ) : (
                    <p className="text-sm text-muted-foreground">
                      Para doar via PayPal, envie um email para{" "}
                      <a href={`mailto:${contactEmail}`} className="text-accent font-medium hover:underline">{contactEmail}</a>
                      {" "}ou{" "}
                      <a href={instagramUrl} target="_blank" rel="noopener noreferrer" className="text-accent font-medium hover:underline">contacte-nos no Instagram</a> para receber o link.
                    </p>
                  )}
                </div>
              </div>
            </div>
          </motion.div>

          {/* Passo 3: Registe (opcional) */}
          <motion.div initial={{ opacity: 0, y: 10 }} animate={{ opacity: 1, y: 0 }} transition={{ delay: 0.3 }}>
            <button
              type="button"
              onClick={() => { setShowForm(!showForm); syncFormAmount(); }}
              className="flex items-center gap-2 text-sm font-bold text-accent hover:underline"
            >
              Passo 3 — Já enviou? Registe o donativo (opcional)
              {showForm ? <ChevronUp className="w-4 h-4" /> : <ChevronDown className="w-4 h-4" />}
            </button>
            <p className="text-xs text-muted-foreground mt-1 mb-4">Ajuda-nos a contabilizar o impacto. Só precisa do valor; nome e email são opcionais.</p>

            {showForm && (
              <motion.div initial={{ opacity: 0, height: 0 }} animate={{ opacity: 1, height: "auto" }} className="overflow-hidden">
                {submitted ? (
                  <div className="bg-card rounded-2xl border border-border p-8 text-center">
                    <motion.div initial={{ scale: 0 }} animate={{ scale: 1 }} transition={{ type: "spring", stiffness: 200 }}
                      className="w-16 h-16 rounded-full bg-accent/10 flex items-center justify-center mx-auto mb-4">
                      <Check className="w-8 h-8 text-accent" />
                    </motion.div>
                    <h3 className="text-xl font-black text-foreground mb-2">Obrigado!</h3>
                    <p className="text-sm text-muted-foreground">O seu donativo foi registado. Juntos fazemos a diferença. 💚</p>
                  </div>
                ) : (
                  <div className="bg-card rounded-2xl border border-border p-6 space-y-4">
                    <div className="grid grid-cols-2 gap-3">
                      <div>
                        <Label className="text-sm">Nome (opcional)</Label>
                        <Input placeholder="João Silva" value={form.name} onChange={(e) => updateField("name", e.target.value)} />
                      </div>
                      <div>
                        <Label className="text-sm">Email (opcional)</Label>
                        <Input type="email" placeholder="joao@email.com" value={form.email} onChange={(e) => updateField("email", e.target.value)} />
                      </div>
                    </div>
                    <div className="grid grid-cols-2 gap-3">
                      <div>
                        <Label className="text-sm">Valor (€) *</Label>
                        <Input
                          type="number"
                          placeholder="10"
                          value={form.amount || displayAmount}
                          onChange={(e) => updateField("amount", e.target.value)}
                        />
                      </div>
                      <div>
                        <Label className="text-sm">Método</Label>
                        <Select value={form.method} onValueChange={(v) => updateField("method", v)}>
                          <SelectTrigger><SelectValue /></SelectTrigger>
                          <SelectContent>
                            {methods.map((m) => <SelectItem key={m.value} value={m.value}>{m.label}</SelectItem>)}
                          </SelectContent>
                        </Select>
                      </div>
                    </div>
                    <div>
                      <Label className="text-sm">Mensagem (opcional)</Label>
                      <Textarea placeholder="Uma palavra de apoio..." value={form.message} onChange={(e) => updateField("message", e.target.value)} className="resize-none" rows={2} />
                    </div>
                    <div className="flex items-center gap-2">
                      <Checkbox id="publicName" checked={form.publicName} onCheckedChange={(v) => updateField("publicName", !!v)} />
                      <Label htmlFor="publicName" className="text-sm cursor-pointer">Autorizo mostrar o meu nome como apoiante</Label>
                    </div>
                    <Button onClick={handleSubmit} disabled={submitting} className="w-full bg-accent text-accent-foreground hover:bg-emerald-light btn-lift font-bold">
                      {submitting ? <Loader2 className="w-4 h-4 mr-2 animate-spin" /> : <Heart className="w-4 h-4 mr-2" />}
                      Registar donativo
                    </Button>
                  </div>
                )}
              </motion.div>
            )}
          </motion.div>
        </div>
      </section>

      {/* Smart3DPT Contact */}
      <section className="pb-16 px-6">
        <motion.div
          initial={{ opacity: 0, y: 15 }}
          whileInView={{ opacity: 1, y: 0 }}
          viewport={{ once: true }}
          className="max-w-2xl mx-auto bg-card rounded-2xl border border-border p-8"
        >
          <Sparkles className="w-10 h-10 text-accent mb-4" />
          <h3 className="text-xl font-black text-foreground mb-3">Smart3DPT</h3>
          <p className="text-sm text-muted-foreground mb-6">
            Parceiro que materializa as cadeiras. Dúvidas? Contacte-nos.
          </p>
          <div className="space-y-3 text-sm text-foreground">
            <div className="flex items-start gap-3">
              <MapPin className="w-4 h-4 mt-1 text-accent shrink-0" />
              <div>
                <p className="font-semibold">Rua do Rameiral nº4, 3780-176 Anadia, Portugal</p>
              </div>
            </div>
            <div className="flex items-center gap-3">
              <Mail className="w-4 h-4 text-accent shrink-0" />
              <a href={`mailto:${contactEmail}`} className="hover:underline">{contactEmail}</a>
            </div>
            <div className="flex items-center gap-3">
              <Phone className="w-4 h-4 text-accent shrink-0" />
              <a href="tel:+351913492398" className="hover:underline">{mbwayNumberPretty}</a>
            </div>
            <a href={instagramUrl} target="_blank" rel="noopener noreferrer" className="inline-flex items-center gap-2 text-accent font-medium hover:underline text-sm">
              Instagram @smart3d_pt
            </a>
          </div>
        </motion.div>
      </section>

      <Footer />
    </div>
  );
};

export default Donate;
