import Navbar from "@/components/Navbar";
import HeroSection from "@/components/HeroSection";
import AboutSection from "@/components/AboutSection";
import RegionMap from "@/components/RegionMap";
import ProgressSection from "@/components/ProgressSection";
import DualCTASection from "@/components/DualCTASection";
import CTASection from "@/components/CTASection";
import Footer from "@/components/Footer";

const Index = () => {
  return (
    <div className="min-h-screen bg-background">
      <Navbar />
      <HeroSection />
      <AboutSection />
      <RegionMap />
      <ProgressSection />
      <DualCTASection />
      <CTASection />
      <Footer />
    </div>
  );
};

export default Index;
