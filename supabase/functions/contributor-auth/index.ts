// contributor-auth edge function
// Handles contributor authentication via email + password (SHA-256 hash)
// Always returns HTTP 200 — errors are indicated via { ok: false, error: "..." } in body
// This is intentional: supabase.functions.invoke() discards res.data on non-200 responses

import { serve } from "https://deno.land/std@0.168.0/http/server.ts";
import { createClient } from "https://esm.sh/@supabase/supabase-js@2";
import { encode as encodeHex } from "https://deno.land/std@0.168.0/encoding/hex.ts";

const corsHeaders = {
  "Access-Control-Allow-Origin": "*",
  "Access-Control-Allow-Headers": "authorization, x-client-info, apikey, content-type",
};

function ok(data: object) {
  return new Response(JSON.stringify({ ok: true, ...data }), {
    status: 200,
    headers: { ...corsHeaders, "Content-Type": "application/json" },
  });
}

function err(message: string) {
  return new Response(JSON.stringify({ ok: false, error: message }), {
    status: 200, // Always 200 so supabase client keeps res.data accessible
    headers: { ...corsHeaders, "Content-Type": "application/json" },
  });
}

async function hashPassword(password: string): Promise<string> {
  const encoder = new TextEncoder();
  const data = encoder.encode(password);
  const hashBuffer = await crypto.subtle.digest("SHA-256", data);
  return new TextDecoder().decode(encodeHex(new Uint8Array(hashBuffer)));
}

serve(async (req) => {
  if (req.method === "OPTIONS") {
    return new Response("ok", { headers: corsHeaders });
  }

  try {
    const { email, password, action } = await req.json();

    if (!email || !email.includes("@")) {
      return err("Email inválido.");
    }

    const supabaseUrl = Deno.env.get("SUPABASE_URL")!;
    const serviceRoleKey = Deno.env.get("SUPABASE_SERVICE_ROLE_KEY")!;
    const supabase = createClient(supabaseUrl, serviceRoleKey);

    const normalizedEmail = email.trim().toLowerCase();

    // Look up contributor
    const { data: contributor, error: lookupErr } = await supabase
      .from("contributors")
      .select("id, token, password_hash, name")
      .eq("email", normalizedEmail)
      .maybeSingle();

    if (lookupErr || !contributor) {
      return err("Não encontrámos nenhum voluntário com esse email.");
    }

    // Action: check — check if contributor exists and has password set
    if (action === "check") {
      return ok({
        exists: true,
        has_password: !!contributor.password_hash,
        name: contributor.name,
      });
    }

    // Action: set-password — define password for the first time
    if (action === "set-password") {
      if (!password || password.length < 4) {
        return err("A password deve ter pelo menos 4 caracteres.");
      }

      const hash = await hashPassword(password);
      const { error: updateErr } = await supabase
        .from("contributors")
        .update({ password_hash: hash })
        .eq("id", contributor.id);

      if (updateErr) {
        return err("Erro ao guardar password.");
      }

      return ok({ token: contributor.token });
    }

    // Action: login — verify password
    if (action === "login") {
      if (!password) {
        return err("Introduza a sua password.");
      }

      if (!contributor.password_hash) {
        return err("Ainda não definiu password. Por favor defina uma.");
      }

      const hash = await hashPassword(password);
      if (hash !== contributor.password_hash) {
        return err("Password incorreta.");
      }

      return ok({ token: contributor.token });
    }

    return err("Ação inválida.");

  } catch (_err) {
    return err("Erro interno. Tente novamente.");
  }
});
