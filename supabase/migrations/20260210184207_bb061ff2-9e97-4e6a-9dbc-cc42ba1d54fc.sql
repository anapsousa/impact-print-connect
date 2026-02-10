
-- Table: donations
CREATE TABLE public.donations (
  id uuid NOT NULL DEFAULT gen_random_uuid() PRIMARY KEY,
  donor_name text,
  donor_email text,
  amount_cents integer NOT NULL DEFAULT 0,
  method text NOT NULL DEFAULT 'outro',
  message text,
  public_name boolean NOT NULL DEFAULT false,
  created_at timestamp with time zone NOT NULL DEFAULT now()
);

ALTER TABLE public.donations ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Anyone can insert donations"
  ON public.donations FOR INSERT
  WITH CHECK (true);

CREATE POLICY "Organizers can view donations"
  ON public.donations FOR SELECT
  USING (is_organizer());

CREATE POLICY "Organizers can update donations"
  ON public.donations FOR UPDATE
  USING (is_organizer());

CREATE POLICY "Organizers can delete donations"
  ON public.donations FOR DELETE
  USING (is_organizer());

-- Table: beneficiary_requests
CREATE TABLE public.beneficiary_requests (
  id uuid NOT NULL DEFAULT gen_random_uuid() PRIMARY KEY,
  contact_name text NOT NULL,
  contact_email text NOT NULL,
  contact_phone text,
  region text NOT NULL DEFAULT 'centro',
  beneficiary_age text NOT NULL,
  beneficiary_type text NOT NULL DEFAULT 'crianca',
  description text NOT NULL,
  how_found_us text,
  status text NOT NULL DEFAULT 'pendente',
  notes text,
  created_at timestamp with time zone NOT NULL DEFAULT now(),
  updated_at timestamp with time zone NOT NULL DEFAULT now()
);

ALTER TABLE public.beneficiary_requests ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Anyone can insert beneficiary requests"
  ON public.beneficiary_requests FOR INSERT
  WITH CHECK (true);

CREATE POLICY "Organizers can view beneficiary requests"
  ON public.beneficiary_requests FOR SELECT
  USING (is_organizer());

CREATE POLICY "Organizers can update beneficiary requests"
  ON public.beneficiary_requests FOR UPDATE
  USING (is_organizer());

CREATE POLICY "Organizers can delete beneficiary requests"
  ON public.beneficiary_requests FOR DELETE
  USING (is_organizer());

-- Trigger for updated_at on beneficiary_requests
CREATE TRIGGER update_beneficiary_requests_updated_at
  BEFORE UPDATE ON public.beneficiary_requests
  FOR EACH ROW
  EXECUTE FUNCTION public.update_updated_at_column();
