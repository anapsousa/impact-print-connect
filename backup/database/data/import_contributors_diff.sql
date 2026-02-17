-- Import contributors — insere apenas os que não existem (por id e email)
-- Gerado automaticamente por csv_to_insert_sql.py

INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '8e400fc6-ddb5-4812-9d97-eea10791e770', 'Diogo', 'apdiog@sapo.pt', 'Viseu', 'centro', 'Limitado (algumas horas/semana)', true, 'Ctt',
  'cfde1b89-9630-427f-aca7-11f929098ccb', '2026-02-11 17:18:20.399495+00', '2026-02-11 17:18:20.399495+00', NULL, ARRAY['PETG','TPU'], false,
  'intermediate', '1-2 weeks', true, ARRAY['Anycubic Kobra 3'],
  NULL, NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '0d0349d1-8b34-4dbb-9882-bf340f73e7ba', 'Nuno Figueiredo', 'nuno_figueiredo85@hotmail.com', '2840-080', 'lisboa', 'Flexível / Qualquer altura', true, 'Ctt',
  'b037eedf-caf2-4c0d-82bb-d60b8c04b910', '2026-02-11 17:18:25.5062+00', '2026-02-11 17:18:25.5062+00', '910167665', ARRAY['PETG'], true,
  'intermediate', '1-2 weeks', true, ARRAY['Bambu Lab A1'],
  NULL, NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '582fa53d-d261-4210-97b0-eaa5458feb40', 'Kinhas', 'irenesss60@gmail.com', 'figueira da foz 3090-898', 'centro', 'Flexível / Qualquer altura', true, NULL,
  'f09a4ca6-921e-48e6-9842-86bf669b81cd', '2026-02-11 21:48:10.953906+00', '2026-02-11 21:48:10.953906+00', '926566913', ARRAY['PETG'], true,
  'intermediate', '1-2 weeks', true, ARRAY['Bambu Lab A1','Bambu Lab A1 mini','Bambu Lab P1S'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '774c546c-b5f2-45ca-9c89-480e79b46fcb', 'Armando Cardoso', 'armando_freixo@hotmail.com', 'Guarda', 'centro', 'Dias úteis (9h–17h)', true, 'Ctt',
  '510800e3-1570-4676-bf2c-ca60b48de177', '2026-02-11 20:29:29.326002+00', '2026-02-11 22:16:37.183155+00', '961133145', ARRAY['PETG'], true,
  'beginner', '2-4 weeks', false, ARRAY['Bambu Lab A1'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '5b2daf9b-279f-48dc-9a15-6e7179e6ef49', 'Valter Alexandre', 'valterhvnox@gmail.com', 'Alenquer', 'centro', 'Noites (17h–22h)', true, 'Ctt',
  '240901c0-188e-4ad9-92ff-67da51b3c80e', '2026-02-11 23:47:08.638049+00', '2026-02-11 23:47:08.638049+00', '914459488', ARRAY['PETG','TPU'], true,
  'intermediate', '1-2 weeks', false, ARRAY['Bambu Lab P2S'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '3b38b053-8158-4e82-913a-64e096ab9227', 'Pedro Tadeu', 'pedrotadeu501@gmail.com', '2625-396', 'lisboa', 'Dias úteis (9h–17h)', true, 'Ctt',
  'e76c528d-c53a-4ba3-a14c-a677a58d5b4f', '2026-02-10 21:41:37.555831+00', '2026-02-10 21:41:37.555831+00', '914551612', ARRAY['PETG'], true,
  'intermediate', '2-4 weeks', false, ARRAY['Outra'],
  NULL, NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '7c59d7b0-1547-4ba3-819f-ef4255cfa713', 'Luís Dias', 'las_dias@hotmail.com', '4705-774', 'norte', 'Flexível / Qualquer altura', true, NULL,
  '72a1bf4a-f3e3-4f62-a80a-5b246ccc46d6', '2026-02-12 17:16:16.383423+00', '2026-02-12 17:16:16.383423+00', '916859903', ARRAY['TPU','PETG'], true,
  'intermediate', '2-4 weeks', false, ARRAY['Bambu Lab A1'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '6da9430f-52be-407c-932b-6db53c1c734b', 'António Ferraz', 'ammfvi@gmail.com', 'Ílhavo', 'centro', 'Limitado (algumas horas/semana)', true, 'Nacex',
  '6692e41f-2152-48cd-9e60-bdafaadf3dd0', '2026-02-13 00:03:03.635305+00', '2026-02-13 00:03:03.635305+00', '914343545', ARRAY['PETG'], true,
  'beginner', '1-2 weeks', true, ARRAY['Bambu Lab P1S'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  'c3afdc61-cb7f-4fdf-b53a-106eacc1160f', 'Ana', 'anapsousa@gmail.com', 'Aveiro', 'centro', 'Flexível / Qualquer altura', true, NULL,
  '5f0a37f8-2783-4b7e-af0d-641d7561b661', '2026-02-10 19:24:48.392911+00', '2026-02-16 09:49:25.768161+00', '934924235', ARRAY['PETG'], true,
  'beginner', '1-2 weeks', true, ARRAY['Outra'],
  NULL, 'cf6a922162336a8fd323dac9c0f7dda66d2feb2bb7606d97719689f3eb3a944e'
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '2067ed43-2963-412a-af9a-31a9e95648f2', 'Nelson de Matos', 'nelson.simoes.matos@gmail.com', 'Leiria', 'centro', 'Flexível / Qualquer altura', true, 'CTT',
  'dc79fae6-ecf8-4436-8f86-54d42ba0dc63', '2026-02-11 01:18:54.657791+00', '2026-02-14 08:00:39.681526+00', NULL, ARRAY['PETG','TPU'], false,
  'intermediate', '2-4 weeks', true, ARRAY['Creality Ender 3 V3'],
  '220x220x220', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '74675756-0ed3-4704-bfa6-7e618e83588b', 'Daniel Rita', 'daniel.rita@gmail.com', '2620-271', 'lisboa', 'Limitado (algumas horas/semana)', true, NULL,
  '3653212f-44a4-40d5-a993-81b2a4b0d510', '2026-02-13 16:09:40.984427+00', '2026-02-14 12:20:59.960502+00', NULL, ARRAY['PETG'], false,
  'beginner', '2-4 weeks', true, ARRAY['Bambu Lab P1S'],
  '256×256×256', '14b5bc2fda75c8f020176c6e57a5d5f1f06a47d4d15e65bbf30c4ab7b46c93e4'
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '71f33273-a1ee-4afb-8b1b-532d6427a5a4', 'Caribe', 'pereirabruno148@gmail.com', 'Porto', 'centro', 'Flexível / Qualquer altura', true, NULL,
  '37aca4c7-65d1-4089-8759-9281be639180', '2026-02-16 23:08:35.324542+00', '2026-02-16 23:08:35.324542+00', NULL, ARRAY['PETG'], false,
  'intermediate', '1-2 weeks', false, ARRAY['Creality Ender 3 V3'],
  '220×220×250', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  'b0ad75ca-61c3-4c66-bdbe-05a4a8ceffca', 'Dimensão XZ', '3dprint.xxiv@gmail.com', 'Viseu', 'centro', 'Limitado (algumas horas/semana)', true, 'CTT',
  '17d45e81-9c4f-4747-a825-cbb018124222', '2026-02-14 14:03:31.764305+00', '2026-02-14 14:05:57.509377+00', NULL, ARRAY['PETG','TPU'], true,
  'intermediate', '1-2 weeks', true, ARRAY['Creality K1C','Outra: Creality Hi (1) Combo'],
  '220×220×250', '00007c801e2c27e95ebc1e286211f43b0c4a3a9dc41151403e33df05180d9097'
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  'e9e43600-e9f9-4f8b-bb9f-3d5bd394e8c2', 'Diogo Tinoco', 'tinocodiogo6@gmail.com', '3140-447', 'centro', 'Flexível / Qualquer altura', false, NULL,
  '34ec54a0-b481-458e-9465-c96f864f6f22', '2026-02-11 12:46:37.846875+00', '2026-02-14 15:44:54.77521+00', '926 495 870', ARRAY['PETG'], true,
  'expert', '1-2 weeks', true, ARRAY['Bambu Lab A1'],
  '256×256×256', '0b4735ef2f4f30f731c03810e9a68eac8aff65087db821d160a21ea45fd42f53'
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  'f0051c98-357a-46f1-b2d0-30245066bf57', 'Carlos Oliveira', 'Carlitosbv71@gmail.com', 'Aveiro', 'centro', 'Noites (17h–22h)', true, 'Ctt',
  '20434f37-fb65-475d-bb31-e1c9b0ebf046', '2026-02-14 23:55:11.212595+00', '2026-02-14 23:58:45.932113+00', NULL, ARRAY['PETG'], false,
  'beginner', '2-4 weeks', false, ARRAY['Bambu Lab A1'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  'ff21a0d6-f62e-4340-bc50-130d493b07e5', 'Fabio santos', 'fabio_santos_244@hotmail.com', 'Viseu', 'centro', 'Flexível / Qualquer altura', true, 'CTT',
  '399164de-c139-4114-ab74-944c4fa53f56', '2026-02-10 21:41:52.954321+00', '2026-02-15 18:56:47.459222+00', '915704807', ARRAY['PETG'], true,
  'expert', '1-2 weeks', false, ARRAY['Outra','Anycubic Kobra 3'],
  NULL, 'b3fca153d33fdb57e938672f225c9382201c3199c2dea4dd9c4e2dfd445921e4'
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  'de76ac43-c644-497a-bd78-6ec1ca224428', 'Carlos Fernandez', 'carlosfernandez@sapo.pt', '3770-351', 'centro', 'Flexível / Qualquer altura', true, NULL,
  '3aadefdc-ac2c-4eca-97d1-e5951be89478', '2026-02-15 21:03:43.104423+00', '2026-02-15 21:03:43.104423+00', '913307355', ARRAY['PETG','TPU'], true,
  'intermediate', NULL, true, ARRAY['Bambu Lab H2S'],
  '340x320x340', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '54334ae3-a2fe-41d3-b97e-d8eef4f262ff', 'André Costa', 'profil3r@hotmail.com', '3800-853', 'norte', 'Flexível / Qualquer altura', false, NULL,
  '08517a81-e184-4bde-a1df-467cea9b1b6c', '2026-02-10 21:55:53.113917+00', '2026-02-11 17:16:46.990778+00', NULL, ARRAY['PETG'], false,
  'beginner', '1-2 weeks', true, ARRAY['Bambu Lab A1 mini'],
  '180×180×180', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  'dfdc9cc1-c886-46db-9c2a-05cc5c76ab16', 'Fábio Gregório', 'fabio.gregorio1@gmail.com', 'Mirandela', 'norte', 'Apenas fins de semana', true, 'CTT',
  '04bb13f3-ed63-4fc3-b3cf-36e6f845b5ca', '2026-02-13 12:04:31.328836+00', '2026-02-15 23:51:04.994818+00', NULL, ARRAY['PETG'], false,
  'intermediate', '1-2 weeks', false, ARRAY['Bambu Lab A1 mini'],
  '180×180×180', '0c4b43976df605e22ab515bdc3333ce37929c2039b9e20f3cd054af4edb7841b'
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  'd1737b99-c3b4-453a-89f3-3fe0ed7c2777', 'João monteiro', 'joaovgm2012@gmail.com', 'Souselo, cinfães', 'norte', 'Flexível / Qualquer altura', true, NULL,
  '5d1f3645-247d-43e6-b0c9-81bc50a9503d', '2026-02-11 20:54:08.346275+00', '2026-02-11 20:54:08.346275+00', '914061026', ARRAY['PETG'], true,
  'intermediate', '1-2 weeks', true, ARRAY['Bambu Lab P1S'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '2d0435e9-99bd-4916-bce0-296bc687bac9', 'Make3Design', 'make3designoficial@gmail.com', 'Ponte da barca', 'norte', 'Flexível / Qualquer altura', true, NULL,
  '5ac051cb-36b5-41f6-b03f-5ff4da968d8c', '2026-02-11 22:08:44.724699+00', '2026-02-11 22:08:44.724699+00', NULL, ARRAY['PETG','TPU'], false,
  'expert', '1-2 weeks', true, ARRAY['Creality Ender 3 V3','Anycubic Kobra 3','FlashForge Adventurer 5M','Artillery Sidewinder X4 Plus'],
  '220×220×250', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  'c0a1474c-49aa-41e3-be18-97db182b5864', 'Flávio Soares', 'flaviosoares1976@gmail.com', '4535-366', 'centro', 'Flexível / Qualquer altura', true, 'CTT',
  '91016f21-1672-479f-a011-9cc2c4ed8428', '2026-02-12 09:32:35.796883+00', '2026-02-12 09:32:35.796883+00', NULL, ARRAY['PETG','TPU'], false,
  'beginner', NULL, true, ARRAY['Bambu Lab P1S'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  'cefc319d-75c7-4fcc-8ea5-079b5a63050d', 'Emanuel Melo', 'gorgita19@gmail.com', '9760-201', 'acores', 'Flexível / Qualquer altura', true, 'CTT',
  '70f11197-3e18-484a-b1e6-fe9f8e0ac336', '2026-02-10 22:52:36.636961+00', '2026-02-13 12:12:34.912534+00', '964826532', ARRAY['PETG','TPU'], false,
  'intermediate', '1-2 weeks', false, ARRAY['Bambu Lab P2S'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '26b1056f-28d3-46a5-b07a-f07eea0e2830', 'Ricardo Alfaiate', 'ricardo_alfaiate@hotmail.com', '3105-364', 'centro', 'Flexível / Qualquer altura', true, NULL,
  'b47ec993-0e11-46f6-aba2-4944f0fdd3f6', '2026-02-13 18:12:40.990681+00', '2026-02-13 18:17:12.53319+00', NULL, ARRAY['PETG','TPU'], false,
  'intermediate', '1-2 weeks', true, ARRAY['Bambu Lab A1','Prusa Core One'],
  '300×300×300', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '1d49f4bd-b8c2-4fc4-b13a-6d1e3acb66d9', 'Luis Alves', 'luis.moises.alves@gmail.com', 'Vila Nova de Gaia', 'norte', 'Flexível / Qualquer altura', true, 'Nacex',
  '1fa2b6f2-8bdc-47b9-bc4c-3a18cecb92f9', '2026-02-14 10:42:52.493571+00', '2026-02-14 10:42:52.493571+00', '919252677', ARRAY['PETG','TPU'], true,
  'expert', '1-2 weeks', false, ARRAY['Bambu Lab H2S','Outra: Endler 5 plus'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '8ef517a7-f6b2-445f-ad73-edd154249f1f', 'Simão Fernandes', 'geral@innoprint.pt', '3240-326', 'centro', 'Dias úteis (9h–17h)', true, 'CTT',
  '62933300-4354-4b17-b9b3-43d9afe350a4', '2026-02-10 22:13:02.052696+00', '2026-02-14 23:56:31.076467+00', '931782503', ARRAY['PETG'], true,
  'intermediate', '1-2 weeks', false, ARRAY['Bambu Lab A1','Bambu Lab P1S'],
  '256×256×256', 'b8d418150bbe88043f008f78d5a8a2ade2096c07b450c734f327bd7c124c2af8'
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '241f06a2-1cd0-452e-a532-321e169acc0d', 'Luísa Veríssimo', 'luisa.m.m.verissimo@gmail.com', 'Porto', 'norte', 'Apenas fins de semana', true, NULL,
  '4954e426-042f-4ade-bcda-8fd441923a3a', '2026-02-13 08:23:20.608771+00', '2026-02-15 08:34:32.401332+00', '932884756', ARRAY['PETG'], false,
  'beginner', '2-4 weeks', false, ARRAY['Bambu Lab A1'],
  '256×256×256', '12cc8a1d074e1214ec1d31e169b6b03c56124824ea41d55190443c89e6b9c559'
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '7aaca0be-c396-463f-a3f8-ca499c4723f4', 'Paulo Tavares', 'Paulojtavares@hotmail.com', '3050-423', 'centro', 'Noites (17h–22h)', true, NULL,
  'c2843373-6a85-48d6-92fb-11cc36d7b17c', '2026-02-11 17:19:58.311855+00', '2026-02-14 13:45:50.899594+00', '915505974', ARRAY['PETG','TPU'], true,
  'expert', '1-2 weeks', true, ARRAY['Bambu Lab A1','Anycubic Kobra 3','Anycubic Kobra 2 Pro'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '64dfdb22-8d05-4deb-8339-44d45a49234a', 'André José', 'andrejose76@gmail.com', '2890-311', 'lisboa', 'Flexível / Qualquer altura', true, 'CTT',
  'def377b6-ac0e-4e06-8b6c-fddaf14c03af', '2026-02-14 14:04:15.344466+00', '2026-02-14 14:04:15.344466+00', NULL, ARRAY['PETG'], true,
  'beginner', '2-4 weeks', false, ARRAY['Bambu Lab A1'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '15b01b38-f56f-40f1-b51b-7d9eb0286890', 'Joana Cachaço', 'tf.joanacachaco@gmail.com', '2625-634', 'lisboa', 'Flexível / Qualquer altura', false, NULL,
  '512a81cb-87f0-4206-a1b5-13d83803cd35', '2026-02-10 21:42:34.279061+00', '2026-02-14 15:41:55.407678+00', '911000360', ARRAY['PETG'], true,
  'intermediate', '1 weeks', true, ARRAY['Bambu Lab A1'],
  '256×256×256', 'afae81ad5327cd7f86617d992213a465cf08c951a82c09a5a845d6d937b25311'
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '729509b9-75b1-4427-ad25-6d9388746401', 'Vasco Mendes', 'dj_recaro@hotmail.com', '4720-457', 'norte', 'Noites (17h–22h)', true, NULL,
  'c0708136-181b-4ff5-99b5-584d01bcc484', '2026-02-10 21:46:27.965978+00', '2026-02-14 16:25:12.955214+00', '933065019', ARRAY['PETG','TPU'], true,
  'intermediate', '1-2 weeks', true, ARRAY['Bambu Lab H2D'],
  '325x320x320', 'a95f953b3d994be779f75a603f795c9dd7739f4abacfba41adb933252cef441e'
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '0e67bb27-c29f-4c3e-bb50-33197e4f4f5c', 'Nelson Sampaio', 'coretek3dworks@gmail.com', 'Trofa', 'norte', 'Apenas fins de semana', true, 'CTT',
  'fe8ad66f-02fe-409c-8c26-83405647267b', '2026-02-12 17:46:56.133561+00', '2026-02-16 12:57:33.237181+00', '915770073', ARRAY['PETG','TPU'], true,
  'expert', '1-2 weeks', false, ARRAY['Bambu Lab P1S','Bambu Lab P1P'],
  '256×256×256', '74cc9c35377b9476dc7acb93c76b5625079f84beaadad63fdc45eb8340ea416d'
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '8c8e56e4-054c-4213-b4b4-91551f655d98', 'Filipe Pereira', 'filipepereira41fp@gmail.com', '3840-421', 'centro', 'Noites (17h–22h)', true, NULL,
  'b6a1ed4a-f1b7-4ccd-aec6-2a24dfc7cead', '2026-02-10 22:24:40.029139+00', '2026-02-10 22:24:40.029139+00', NULL, ARRAY['PETG'], false,
  'intermediate', '1-2 weeks', true, ARRAY['Outra','Creality Ender 3 V2'],
  NULL, NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '0a659d4f-4eda-4f05-ab36-3704fc6578f8', 'Rodrigo Correia', 'rodrigorccorreia57@gmail.com', 'Setúbal', 'lisboa', 'Noites (17h–22h)', true, 'CTT',
  '08022ab2-1c78-4008-a11e-5c655b70bdd2', '2026-02-10 22:26:30.701082+00', '2026-02-10 22:26:30.701082+00', '	+351926890168', ARRAY['PETG','TPU'], false,
  'beginner', '1-2 weeks', true, ARRAY['Outra'],
  NULL, NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '3b36e9ca-469f-4b58-9945-564f56e323c6', 'Henrique Varela', 'hicas999@gmail.com', 'Évora', 'alentejo', 'Flexível / Qualquer altura', true, 'CTT ',
  '53ada681-887d-43a7-a7a0-dc9d71baf126', '2026-02-10 21:40:58.282701+00', '2026-02-11 17:16:46.990778+00', '935134890', ARRAY['PETG'], true,
  'intermediate', '2-4 weeks', false, ARRAY['Bambu Lab P1S'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '3514306e-f2c2-4f2c-ae19-3a8c0623686f', 'João Almeida', 'aura.agel@gmail.com', 'Lisboa', 'centro', 'Flexível / Qualquer altura', true, 'Ctt',
  'c262218f-efc7-4c69-a77c-3135c262ec87', '2026-02-11 17:48:13.867458+00', '2026-02-11 17:48:13.867458+00', '969413362', ARRAY['PETG'], true,
  'expert', '1-2 weeks', false, ARRAY['Bambu Lab P1S','Bambu Lab P1P'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  'd8a4c417-4860-4c47-b83a-646f3cbbae63', 'Luís Arnauth', 'luisarnauth3@hotmail.com', '6030_234', 'centro', 'Limitado (algumas horas/semana)', true, NULL,
  'a273bc75-0834-402f-90d8-669acb34e03f', '2026-02-10 22:31:17.843118+00', '2026-02-14 16:42:44.00277+00', '918422317', ARRAY['PETG'], true,
  'expert', '1-2 weeks', false, ARRAY['Bambu Lab H2S','Bambu Lab P1S'],
  '340x320x340', 'aa0799c7750703fc2a6c7552056fa0cee63df76e4dd41a9ef4e9781d3e09688d'
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '2a108140-e973-4b42-89f9-e2f2ab47ac1b', 'Tiago', 'tpereira805@gmail.com', '4745-515', 'norte', 'ILimitado ', true, 'Ctt',
  '23b63163-e42c-4b42-8afb-d758d2a020aa', '2026-02-11 21:03:58.739722+00', '2026-02-11 21:05:28.884542+00', '912287865', ARRAY['PETG'], false,
  'intermediate', '1-2 weeks', false, ARRAY['Outra: Bambu lab h2s'],
  '340x320x340', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '00e43403-aec6-4904-a6ec-fa934e26d148', 'Tiago Lima', 'puredriveparts@outlook.pt', 'Matosinhos', 'norte', 'Noites (17h–22h)', true, 'Ctt',
  'c41a61e8-5bfe-4358-bd1f-22d07ea5e8cf', '2026-02-11 22:23:30.717574+00', '2026-02-11 22:23:30.717574+00', '925705527', ARRAY['PETG'], true,
  'intermediate', '1-2 weeks', true, ARRAY['Bambu Lab A1','Creality K1 Max'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  'f5199273-5960-4397-a81e-33b3a8357201', 'Paulo Borges', 'pauloesabe@gmail.com', 'Cantanhede', 'centro', 'Noites (17h–22h)', false, NULL,
  '24e41c5b-db04-42e9-94e3-8acb3b59e1fd', '2026-02-11 23:52:29.69353+00', '2026-02-11 23:52:29.69353+00', NULL, ARRAY['PETG'], true,
  'intermediate', '1-2 weeks', true, ARRAY['Bambu Lab A1'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '703cc6e6-ffb3-4aca-9e96-616a69c6ff6f', 'Pedro Gonçalves', '3d.p3dro@gmail.com', '4150-638', 'norte', 'Noites (17h–22h)', true, 'CTT ',
  'bfda253a-d883-45c1-a7fb-d1e5754e8921', '2026-02-12 12:56:01.767359+00', '2026-02-12 12:56:01.767359+00', '919070987', ARRAY['PETG','TPU'], true,
  'expert', '4-6 weeks', true, ARRAY['Bambu Lab A1','Bambu Lab H2S'],
  '340×320×340', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  'e73162b7-13df-4956-9c82-fe544162b307', 'Douro Make', 'geral@douromake.pt', '4400-107', 'norte', 'Limitado (algumas horas/semana)', true, 'CTT ',
  '63f99945-da5b-40e5-a543-ddca7cd8af08', '2026-02-12 18:47:34.474478+00', '2026-02-12 18:47:34.474478+00', '932093947', ARRAY['PETG'], true,
  'expert', '2-4 weeks', true, ARRAY['Bambu Lab X1C','Bambu Lab H2S','Bambu Lab H2D'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '6aea0861-7198-48fc-83a7-0eb2e86ed8a2', 'Rúben Torres', 'rubenfp_torres92@icloud.com', 'Esposende', 'norte', 'Flexível / Qualquer altura', true, 'Ctt',
  'fcf0d9d0-d8a0-45bd-bc71-476820f870e1', '2026-02-14 12:21:42.043351+00', '2026-02-14 12:21:42.043351+00', NULL, ARRAY['PETG'], true,
  'intermediate', '1-2 weeks', false, ARRAY['Bambu Lab A1'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  'a210160c-87c7-40d8-8eb4-32211e8be395', 'Ricardo', 'subdiver75@gmail.com', 'Dijon', 'centro', 'Flexível / Qualquer altura', true, NULL,
  'f90fe390-0f93-4438-bed8-ca8aa2bade61', '2026-02-14 14:10:56.233042+00', '2026-02-14 14:11:06.050153+00', NULL, ARRAY['PETG','TPU'], false,
  'beginner', '2-4 weeks', false, ARRAY['Outra: Anycubic kobra3 V2'],
  '300×300×300', 'fabb4d0b844f0db07f34c8bce40d373aac90b22676e59edf33ec533377fdeec5'
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '6553eac6-aa9f-48ed-b8ee-3c4b22510316', 'André Teixeira', 'andre23teixeira@gmail.com', '4410-263', 'norte', 'Noites (17h–22h)', true, NULL,
  'ea490061-c04b-4e25-bc49-ff8086cb8b49', '2026-02-13 08:54:37.444549+00', '2026-02-14 15:52:40.205181+00', NULL, ARRAY['PETG'], true,
  'intermediate', '1-2 weeks', true, ARRAY['Bambu Lab A1'],
  '256×256×256', '260b719b64b05aea708c749abfcfe128248d8436debd3a104a81ef48f508b19c'
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '73c77ded-85ab-4056-8c21-0a393688f2bf', 'Joel Leal', 'Joel.leal_@hotmail.com', '3860-021', 'centro', 'Flexível / Qualquer altura', true, 'Ctt',
  'e0c322d6-01af-49ee-817a-70d155dee644', '2026-02-16 02:15:24.994512+00', '2026-02-16 02:17:42.580936+00', NULL, ARRAY['PETG'], true,
  'intermediate', NULL, false, ARRAY['Bambu Lab A1 mini','Bambu Lab A1','Bambu Lab X1C'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '84855c3a-ae05-4297-8814-8973fecc13f6', 'João Correia', 'joao_queijo@hotmail.com', 'Lamego', 'norte', 'Noites (17h–22h)', true, 'Inpost, Locky',
  'a5c0d3eb-545e-4f2a-a48b-6aea1d15e1c8', '2026-02-14 17:21:56.55681+00', '2026-02-14 17:27:54.348297+00', NULL, ARRAY['PETG'], false,
  'intermediate', '1-2 weeks', false, ARRAY['Outra: Creality Ender 3 Pro'],
  '220x220x250', '84971719c34785a72cf15b39c4ca2c4f499b7024a65ebd5d4e64fb6dfb22997a'
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '38cba2e6-b4d9-47c1-939c-1d0dec287f09', 'Ricardo Pinho', 'franklim_pinho@hotmail.com', '3860-350', 'norte', 'Dias úteis (9h–17h)', true, 'Ctt',
  'c05e8120-8140-423b-bc8b-3a2020de193d', '2026-02-10 22:51:54.265296+00', '2026-02-14 17:33:21.635849+00', NULL, ARRAY['PETG'], true,
  'intermediate', '1-2 weeks', true, ARRAY['Outra'],
  '300x300x400', 'c8fe88bea39c980efe2a66257f0025fea2eb3f37bff838df342b8a2f21468151'
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '3af8756b-0daf-482d-acbe-43c238a69b92', 'Pedro Silva', 'pmls3d@gmail.com', '4575-434', 'norte', 'Flexível / Qualquer altura', false, NULL,
  'b346c6d3-16a2-4360-9804-2fcc4339712d', '2026-02-10 22:42:55.310476+00', '2026-02-14 20:33:51.514497+00', '912101228', ARRAY['PETG'], true,
  'intermediate', '1-2 weeks', true, ARRAY['Outra'],
  NULL, '1629c05e0bdae301c71e336db5edfc7717ce14ff90940fa049081b0a9bf83ebe'
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  'b573b958-e9e6-4113-a550-14a28567e560', 'Márcio Martins', 'marcio_fhm@hotmail.com', '4460-663', 'norte', 'Apenas fins de semana', false, NULL,
  '5fb4217a-f89b-435e-b76f-338e935e15d3', '2026-02-15 01:32:06.807436+00', '2026-02-15 01:32:06.807436+00', '917941990', ARRAY['PETG'], true,
  'beginner', '1-2 weeks', true, ARRAY['Bambu Lab P1S'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '29318147-6f4b-4131-81b0-7d60db0fc5fd', 'Emanuel Mota', 'geral@printwave.pt', '4560-872', 'norte', 'Flexível / Qualquer altura', true, 'CTT',
  '1399eca9-11ef-4f62-bfed-f07ec6ea1cb7', '2026-02-11 00:16:00.42188+00', '2026-02-11 00:16:00.42188+00', '919430007', ARRAY['PETG'], true,
  'expert', '1-2 weeks', false, ARRAY['Outra'],
  NULL, NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  'f86e920c-de0e-4153-ab73-edeac51f1080', 'Joao Calisto', 'joaocali@gmail.com', 'Fernão Ferro', 'lisboa', 'Flexível / Qualquer altura', true, 'CTT',
  '36e75d8a-d3a4-43a4-b8ff-87a8bf602827', '2026-02-10 22:03:06.256517+00', '2026-02-11 22:29:28.031018+00', '933409575', ARRAY['PETG','TPU'], false,
  'expert', '2-4 weeks', false, ARRAY['Bambu Lab A1','Prusa Core One','Creality K1 Max'],
  '300×300×300', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '3dc2f77b-0a59-4af2-872e-dba0ca9c4ad4', 'Visprint', 'mr.filipeferreira@gmail.com', '3500-033', 'centro', 'Flexível / Qualquer altura', true, 'CTT',
  '5e0f3bde-8c64-4a0b-a4b7-8bb2c43d6b4f', '2026-02-11 23:54:57.178762+00', '2026-02-11 23:54:57.178762+00', '938262554', ARRAY['PETG','TPU'], true,
  'expert', '1-2 weeks', true, ARRAY['Bambu Lab A1','Bambu Lab P1S','Bambu Lab H2S','Bambu Lab H2D'],
  '300×300×300', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '12af0c89-d928-4e52-8f1f-87ebcd055e63', 'Telmo Moura (3d_ShapeStudio)', 'omlet2003@hotmail.com', 'Vila Nova De Gaia', 'norte', 'Flexível / Qualquer altura', true, 'CTT ',
  '915052d6-33f2-4847-80ca-529256d289b9', '2026-02-12 14:36:06.889982+00', '2026-02-12 14:36:06.889982+00', '916835298', ARRAY['PETG'], true,
  'beginner', '2-4 weeks', false, ARRAY['Bambu Lab A1'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '2527d5ea-c697-4d3c-9976-1d26687f01a3', 'Sr Maker', 'srm.maker@gmail.com', '3105-021', 'centro', 'Dias úteis (9h–17h)', true, 'CTT',
  '230f577b-4635-4ee6-af95-c100aea8784d', '2026-02-11 18:10:50.498462+00', '2026-02-12 16:27:32.961119+00', '968832245', ARRAY['PETG'], false,
  'intermediate', '2-4 weeks', false, ARRAY['Bambu Lab P1S','Creality K1'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '059a1d96-1bd7-4e2a-bdd0-1e0c57ad9f42', 'Daniela', 'uniquebea01@gmail.com', 'Marinha Grande', 'centro', 'Flexível / Qualquer altura', true, 'Ctt',
  '08d6e46d-cb68-42b0-910e-d0d6e8e9da3b', '2026-02-12 19:43:40.487315+00', '2026-02-12 19:43:40.487315+00', '911006706', ARRAY['PETG'], false,
  'beginner', '1-2 weeks', false, ARRAY['Bambu Lab P2S'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '0bc110c2-7aff-4978-981e-ee2e50e368b0', 'Andre Rodrigues', 'agrotuga08@gmail.com', 'Azambuja', 'centro', 'Noites (17h–22h)', true, 'Ctt',
  'fa05fa80-1c97-4a6e-9992-f091d41bcb27', '2026-02-13 09:22:49.330054+00', '2026-02-13 09:22:49.330054+00', NULL, ARRAY['PETG'], true,
  'intermediate', '1-2 weeks', true, ARRAY['Bambu Lab P1S'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '2b20e563-d793-4fc7-9eef-09966acab0f2', 'Nuno Silva', 'nunogoncalokl@gmail.com', 'Pinhal Novo', 'lisboa', 'Flexível / Qualquer altura', true, 'CTT',
  '14b0cab9-b72f-49fb-acd0-a92104f108e4', '2026-02-11 07:15:38.075675+00', '2026-02-11 07:15:38.075675+00', '915317694', ARRAY['PETG'], true,
  'beginner', '1-2 weeks', false, ARRAY['Outra'],
  NULL, NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '0c84af44-ecf2-45da-9b97-fc9627fcb13f', 'SarugO Calisto', 'sarugo.hc@gmail.com', '4620-364', 'norte', 'Flexível / Qualquer altura', true, NULL,
  '8540efad-9915-4ede-a2f8-9d3ca3abd158', '2026-02-13 12:42:21.674022+00', '2026-02-13 12:42:21.674022+00', '933110396', ARRAY['PETG'], true,
  'intermediate', '2-4 weeks', false, ARRAY['Bambu Lab A1'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '68cf8ded-70bb-410f-bfff-997e9e7932d1', 'Ramiro', 'alexoutubro1988@hotmail.com', '5340-321', 'norte', 'Flexível / Qualquer altura', true, 'Ctt',
  'd87436f8-9524-49c7-bb35-246faff0c289', '2026-02-11 07:17:37.976969+00', '2026-02-11 07:17:37.976969+00', '913179699', ARRAY['PETG'], false,
  'beginner', '2-4 weeks', false, ARRAY['Outra'],
  NULL, NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  'ab218f56-c166-494e-b439-0d20953bf4c6', 'Breno Andrade', '3dzaap@gmsil.com', '2675-535', 'lisboa', 'Apenas fins de semana', true, NULL,
  '51c419ab-41b1-40cd-86eb-5cb106ec5f6c', '2026-02-14 01:14:27.643824+00', '2026-02-14 01:14:27.643824+00', '938 925 645‬', ARRAY['PETG'], false,
  'intermediate', '1-2 weeks', false, ARRAY['Bambu Lab A1 mini'],
  '180×180×180', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '5b8d7fb1-535d-4244-b56f-8b2af6e80d77', 'Cristina Ribeiro', 'adoreionline@gmail.com', '2635', 'lisboa', 'Flexível / Qualquer altura', true, NULL,
  'c3fe3693-b657-414e-97cd-abf40a471b52', '2026-02-14 13:11:19.16916+00', '2026-02-14 13:12:02.669727+00', '964774477', ARRAY['PETG'], true,
  'intermediate', '1-2 weeks', true, ARRAY['Bambu Lab P1S','Outra: Snapmaker'],
  '256×256×256', 'ffe3a482e09c869ce73628182f875f2d460e40d8ffbe41448a8df516df8b771a'
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  'a24c9928-abdc-44b8-8b58-af3c9b95b357', 'Vanessa de Almeida', 'vanessaalmeida2025@gmail.com', '3020-928', 'centro', 'Apenas fins de semana', false, NULL,
  '223bd965-04a3-44c0-810d-6d9b107f6baf', '2026-02-14 15:04:24.934132+00', '2026-02-14 15:04:24.934132+00', NULL, ARRAY['TPU','PETG'], true,
  'intermediate', NULL, true, ARRAY['Bambu Lab A1','Bambu Lab P2S','Outra: FLSUN V400'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '89310e04-5887-469d-af78-de5d60a0473b', 'Tiago Canoso', 'tiagocanoso89@hotmail.com', '3050-419', 'centro', 'Noites (17h–22h)', false, NULL,
  'aa6ebdb3-2872-4ebb-b8c8-9c57dd302f59', '2026-02-14 21:12:35.815362+00', '2026-02-14 21:12:44.429329+00', '913774300', ARRAY['PETG'], true,
  'intermediate', NULL, true, ARRAY['Bambu Lab A1'],
  '256×256×256', '2fbd485636a0ddbf72cab37a10a2e098e8d2791bf125f4dc2abe918bcc65e89b'
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '5c8a0891-22db-45da-8cc7-ac7abaffac51', 'Victor', 'volveline.13@gmail.com', '8100-333', 'algarve', 'Flexível / Qualquer altura', true, 'Ctt',
  '73fcf43f-4297-457f-983e-7a16bfd00fd2', '2026-02-15 13:29:48.665416+00', '2026-02-15 13:30:07.0722+00', NULL, ARRAY['PETG'], true,
  'intermediate', '2-4 weeks', true, ARRAY['Bambu Lab A1'],
  '256×256×256', '81fc552f5789a6c8b0be89baf2220359c988e4a8fb3cc051ef6cbf43df95a12c'
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '04bdfe71-b788-43b2-8ecb-437d6317c48f', 'Amcubed.Lda', 'amcubed@amcubed.com', '2430-403', 'centro', 'Dias úteis (9h–17h)', true, 'GLS',
  '214f2a1f-1a74-4f47-8271-b7061f31c392', '2026-02-16 15:15:09.795329+00', '2026-02-16 15:15:49.225804+00', '	+351960200893', ARRAY['PETG','TPU'], true,
  'expert', '1-2 weeks', true, ARRAY['Prusa MK4S','Prusa XL','Bambu Lab H2D','FlashForge Adventurer 5M Pro','FlashForge Adventurer 5M','Prusa Core One','Outra: elegoo, modix, mingda'],
  '800x800x1000', 'ce8457d59078a699acb70416f88155a96a906b7b7aad43708402e3a3bcc8a4b4'
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '4522fa96-3a20-4c2f-8627-e13774bdc255', 'Richard Carvalhais', 'richardcarvalhais@ua.pt', '3840', 'centro', 'Apenas fins de semana', false, NULL,
  'b53480f5-028d-49e0-99df-07c8761815d4', '2026-02-11 18:34:50.099015+00', '2026-02-11 18:34:50.099015+00', NULL, ARRAY['PETG'], false,
  'beginner', '2-4 weeks', true, ARRAY['Bambu Lab X1C'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '1e646e0e-dc7c-40e3-bf94-c49b50297b87', 'Ricardo Félix', 'ricardosg.felix@gmail.com', '2580-582', 'lisboa', 'Flexível / Qualquer altura', true, NULL,
  '52237b09-6fde-4897-860e-906c895c44a0', '2026-02-11 21:08:19.354161+00', '2026-02-11 21:08:19.354161+00', '927548213', ARRAY['PETG','TPU'], true,
  'intermediate', '2-4 weeks', true, ARRAY['Outra: Qidi Q2'],
  NULL, NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '031d8566-e088-41ea-bae3-de025e62ed64', 'Paulo Vaz', 'paulovaz64@gmail.com', 'Setubal', 'alentejo', 'Apenas fins de semana', false, NULL,
  '7446d9fc-1c4c-4fec-83bd-a193112f57db', '2026-02-11 22:53:17.553516+00', '2026-02-11 22:53:17.553516+00', '960356436', ARRAY['PETG'], false,
  'intermediate', '2-4 weeks', true, ARRAY['Outra: Anycubic S1 Combo'],
  '250x250x250', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '73927922-fe68-4338-bc06-bc1f49eb174b', 'Rui Silva', 'ruisilvapt@gmail.com', 'Rio de Mouro', 'centro', 'Noites (17h–22h)', false, NULL,
  '7fd473a6-8f91-4130-a2a1-3f76e4e0adc5', '2026-02-12 00:41:10.614788+00', '2026-02-12 00:41:10.614788+00', '	+351935100599', ARRAY['PETG','TPU'], false,
  'beginner', '1-2 weeks', true, ARRAY['Bambu Lab A1','Bambu Lab P2S'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '19a1a39a-18fa-4837-8477-d8288f518548', 'ab3d.print Hugo Rodrigues', 'ab3dprint25@gmail.com', '2735-606', 'lisboa', 'Flexível / Qualquer altura', false, NULL,
  '32c1c863-2f0d-459d-b3ae-a56d59c17e35', '2026-02-12 16:24:58.456365+00', '2026-02-12 16:24:58.456365+00', NULL, ARRAY['PETG'], false,
  'intermediate', NULL, false, ARRAY['Bambu Lab A1'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '39195dc8-7124-44ae-afd4-f8c3e51dd257', 'Luclecia Silva', 'lucleciasilva.arq@gmail.com', '4480-712', 'norte', 'Flexível / Qualquer altura', true, 'CTT',
  '3ab3cc1f-1b74-46b1-9f5d-677f55b3e70c', '2026-02-16 20:48:18.411695+00', '2026-02-16 20:48:33.602152+00', '915671117', ARRAY['PETG','TPU'], false,
  'expert', '1-2 weeks', true, ARRAY['Bambu Lab A1','Bambu Lab X1C'],
  '256×256×256', 'a3e6bf83622af8696ae20608e17633f1b3c83ffd0f7b64691f7dfdda7cebf526'
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '8514d037-3eaa-4415-963a-d71f7854ef22', 'Ruben Almeida', 'almeidarubenalmeida@gmail.com', '3020-261', 'centro', 'Noites (17h–22h)', true, 'Ctt',
  '233efa9b-d2f6-473b-bfff-9df299128c7d', '2026-02-13 14:15:25.49789+00', '2026-02-13 14:15:25.49789+00', '939258456', ARRAY['PETG'], false,
  'beginner', '1-2 weeks', false, ARRAY['Creality Ender 3 V3'],
  '220×220×250', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '0ff92a84-4c19-4311-9460-1786aad8173a', 'Breno Andrade', '3dzaap@gmail.com', '2675-535', 'lisboa', 'Apenas fins de semana', true, NULL,
  '89e0f459-1365-4133-8c12-945f41643b81', '2026-02-14 01:18:02.588703+00', '2026-02-14 01:18:02.588703+00', '938 925 645‬', ARRAY['PETG'], false,
  'intermediate', '1-2 weeks', false, ARRAY['Bambu Lab A1 mini'],
  '180×180×180', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '39bc169a-935a-4031-be12-25ce85e65e5d', 'Filipe Pereira', 'filpereira82@gmail.com', 'Oliveira de Azeméis', 'centro', 'Flexível / Qualquer altura', true, 'CTT',
  'a301963b-944f-4d36-ae18-f4f59a1df29d', '2026-02-13 10:11:56.002795+00', '2026-02-15 09:02:53.610825+00', '965159806', ARRAY['PETG','TPU'], false,
  'expert', '1-2 weeks', false, ARRAY['Bambu Lab X1C','Bambu Lab H2S','Prusa XL'],
  '256×256×256', 'f771fb844b9309ed012e4669043937c17ea82b4ee8f3871a74e9007524bb0592'
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  'c8d59268-1793-4067-a78d-086d746dae63', 'Moica', 'monica.s.antunes@hotmail.com', 'Moita - Setúbal', 'lisboa', 'Flexível / Qualquer altura', true, 'CTT ',
  'c3dc2c99-c9df-482f-a693-000a026e342b', '2026-02-14 13:13:20.730276+00', '2026-02-14 13:14:31.015856+00', NULL, ARRAY['PETG'], true,
  'intermediate', '1-2 weeks', true, ARRAY['Bambu Lab A1 mini','Bambu Lab A1','Bambu Lab P1S'],
  '256×256×256', '13772652726a328372cd3ecbece1996b2806d34823a274fa8edddbde1b7dd12a'
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  'a44a0813-72a4-445e-897d-3940b27852b9', 'Miguel cordeiro', 'miguelcordeiro_@hotmail.com', '2040-260', 'centro', 'Noites (17h–22h)', true, NULL,
  'a24b2928-a97f-435a-82eb-768db499ed20', '2026-02-14 15:07:34.215259+00', '2026-02-14 15:08:05.321643+00', '913463890', ARRAY['PETG'], true,
  'intermediate', '1-2 weeks', false, ARRAY['Bambu Lab P1S'],
  '256×256×256', '4f50765f1fed28c46d40fcece4a3cda600c99538c700804b1893017a6d39c0be'
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  'fbb870b4-6adf-4b8f-8097-9c91e768d4a3', 'Paulo Marinho', 'xlmarinho@gmail.com', '3045-398', 'centro', 'Dias úteis (9h–17h)', false, NULL,
  '6d2ced3f-7b61-44d2-9e9c-dc0ca118cb4f', '2026-02-11 16:56:54.613096+00', '2026-02-15 09:30:33.245043+00', '	+351914325175', ARRAY['PETG'], false,
  'intermediate', '1-2 weeks', true, ARRAY['Outra'],
  '220×220×250', '7a979a795798a7a4c2a130aca16b0a2ef73638986145588faeeb098138e6c4de'
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  'f64bba92-ae86-4691-9215-2ed693d49509', 'Bruno Ferreira', 'brunodcfcabrum@gmail.com', 'Vale de Cambra', 'centro', 'Noites (17h–22h)', false, NULL,
  '18aa55ba-058a-418e-89ba-ca7732987af8', '2026-02-14 22:27:47.539918+00', '2026-02-14 22:29:16.351354+00', '914076410', ARRAY['PETG'], false,
  'intermediate', '2-4 weeks', true, ARRAY['Bambu Lab A1 mini','Bambu Lab A1'],
  '256×256×256', 'd36eed7a5e27535b3f823e70dd5f28fce761ba6a11da48d322c30850f1176d7c'
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '95b62079-5f75-41c2-8550-0403e5497c11', 'Ricardo Soares', 'rs4612896@gmail.com', '4710-293', 'norte', 'Flexível / Qualquer altura', true, 'Ctt',
  '479ca53b-ce03-46bd-aa4f-6bc87c565859', '2026-02-15 14:31:11.536858+00', '2026-02-15 14:31:25.366657+00', '935044241', ARRAY['PETG'], true,
  'intermediate', '2-4 weeks', true, ARRAY['Bambu Lab A1 mini','Bambu Lab A1'],
  '256×256×256', '7f1d29c8e00c9c1f368b880698b80d19bd45406b33ed5ce6495adaa7ec83e503'
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '15de2527-9985-4a15-8441-238ee5f5836e', 'Pedro Tavares', 'ptavares360@gmail.com', '3780-222', 'centro', 'Noites (17h–22h)', true, NULL,
  '6fc5519c-3548-4f66-95f4-00a6f3469199', '2026-02-10 21:56:21.90919+00', '2026-02-11 17:16:46.990778+00', NULL, ARRAY['PETG','TPU'], false,
  'intermediate', '1-2 weeks', true, ARRAY['Creality Ender 3 S1'],
  '220×220×270', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '2c7ef758-6bcb-4d2b-b4f3-c1c63e13a608', 'Gabriel Gomes', 'sempnaproa@gmail.com', 'Anadia', 'centro', 'Flexível / Qualquer altura', true, 'CTT',
  'a7c05313-9a71-411f-985d-42e8b805a988', '2026-02-10 17:50:20.936426+00', '2026-02-11 17:16:46.990778+00', NULL, ARRAY['PETG','TPU'], false,
  'intermediate', NULL, false, ARRAY['Bambu Lab A1'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '379d53f7-6980-4899-8c2a-ee94675a8f70', 'Nuno Nunes', 'nunonunes2005@gmail.com', 'Fundão', 'centro', 'Flexível / Qualquer altura', true, 'CTT',
  '78c9d84d-4f53-40d5-8097-88b7bd002083', '2026-02-10 21:40:40.386843+00', '2026-02-11 17:16:46.990778+00', NULL, ARRAY['PETG'], true,
  'intermediate', '1-2 weeks', false, ARRAY['Bambu Lab A1','Bambu Lab P1S'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '0aaad09c-1c22-469b-ad61-9e1d63d154cd', 'Carlos Ribeiro K9', 'carlosribeiro2100740@gmail.com', '4560-532', 'norte', 'Flexível / Qualquer altura', true, 'Ctt',
  'a324d691-5bed-43a8-b8aa-f334b04e4f00', '2026-02-10 21:40:49.134437+00', '2026-02-11 17:16:46.990778+00', '913012331', ARRAY['TPU','PETG'], false,
  'beginner', NULL, false, ARRAY['Creality Ender 3 V3'],
  '220×220×250', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  'c6032edb-7921-4001-ae30-48337dec1f7e', 'Elton Batista', 'elton.oliv.batista@gmail.com', '3770-102', 'centro', 'Flexível / Qualquer altura', false, NULL,
  '60b929af-c01d-4cea-a0db-391d878361b1', '2026-02-11 10:24:58.917923+00', '2026-02-11 17:16:46.990778+00', '916375065', ARRAY['PETG'], false,
  'intermediate', '1-2 weeks', true, ARRAY['Bambu Lab A1','Bambu Lab A1 mini'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  'e256253b-be4c-45ce-b791-f90a15f45737', 'Mario Viana', 'mar_viana@hotmail.com', '5450', 'norte', 'Flexível / Qualquer altura', true, NULL,
  '4dea5bca-9694-403d-b199-c352475cee52', '2026-02-10 21:44:24.151176+00', '2026-02-11 17:16:46.990778+00', NULL, ARRAY['PETG'], true,
  'beginner', NULL, false, ARRAY['Bambu Lab P2S'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '156e8e24-0c5d-4099-a70e-e896710d1834', 'Hugo Machado', 'hugotiago@msn.com', '5300-043', 'norte', 'Flexível / Qualquer altura', true, NULL,
  '55657a6f-d980-4540-9360-6dc763d3ce13', '2026-02-10 21:45:45.687037+00', '2026-02-11 17:16:46.990778+00', '932225218', ARRAY['PETG','TPU'], true,
  'intermediate', '1-2 weeks', false, ARRAY['Bambu Lab P1S','Outra'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  'ebebbae7-6efd-48e5-b213-52c30ee34005', 'Miguel Ferreira', 'miguelferreira071995@gmail.com', '4510-647', 'norte', 'Flexível / Qualquer altura', false, NULL,
  'b879b28b-0e55-4916-858d-56b6627675d4', '2026-02-10 21:45:59.857407+00', '2026-02-11 17:16:46.990778+00', '924748273', ARRAY['PETG'], true,
  'beginner', '1-2 weeks', true, ARRAY['Bambu Lab P1S'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '5ae5dbc9-2473-484b-8332-15126ecf23bf', 'Rui Cozinheiro', 'rcozinheiro@gmail.com', '2725-364', 'lisboa', 'Flexível / Qualquer altura', true, 'CTT',
  '078e66f6-0049-4802-83d6-b4bbf5a4e401', '2026-02-10 21:47:46.944145+00', '2026-02-11 17:16:46.990778+00', '926998525', ARRAY['TPU','PETG'], true,
  'expert', '1-2 weeks', true, ARRAY['Prusa XL','Prusa Core One'],
  '360×360×360', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '5b69803e-9474-4322-ad87-076680bdf8be', 'Cristina Ribeiro', 'adoreionline@gmail', 'Rio de Mouro Sintra', 'lisboa', 'Flexível / Qualquer altura', true, 'Correos express',
  'bded7dff-e490-45b3-8580-dd05c3aa7f45', '2026-02-10 21:49:17.246061+00', '2026-02-11 17:16:46.990778+00', NULL, ARRAY['PETG'], true,
  'intermediate', '1-2 weeks', true, ARRAY['Bambu Lab A1 mini','Bambu Lab P1S'],
  '180×180×180', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '4990e706-5369-4d26-b9fc-96b3f356b014', 'Moranguito', 'moranguitooo@icloud.com', 'Braga', 'norte', 'Apenas fins de semana', true, 'CTT',
  'ac7e2d93-32a4-41eb-8b72-48e473e5ea80', '2026-02-10 21:52:05.658783+00', '2026-02-11 17:16:46.990778+00', '923121737', ARRAY['PETG'], true,
  'intermediate', NULL, false, ARRAY['Bambu Lab P1S'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '88c8034c-9829-4de4-8863-ba67a7c9da88', 'Paulo Veloso', 'ct2ixj@hotmail.com', 'Tomar', 'centro', 'Flexível / Qualquer altura', true, 'Ctt',
  'd6cefc26-3e15-4590-935d-5a98e38ac225', '2026-02-10 21:53:15.629857+00', '2026-02-11 17:16:46.990778+00', '918189392', ARRAY['PETG'], true,
  'intermediate', '1-2 weeks', false, ARRAY['Bambu Lab A1','Bambu Lab P1S'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '72b1699f-9b09-4fd8-b77c-ad35bdfbb42c', 'Joel Samúdio', 'joel.samudio@hotmail.com', '3840-265', 'centro', 'Noites (17h–22h)', true, 'eu como sou da gafanha posso ir até anadia e deixar na loja smart3d',
  '28a0e9dd-5734-436c-a5d7-dcc2ab4d1078', '2026-02-10 21:56:27.062321+00', '2026-02-11 17:16:46.990778+00', '928111535', ARRAY['PETG','TPU'], true,
  'beginner', '2-4 weeks', false, ARRAY['Anycubic Kobra 3'],
  '220×220×250', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  'e503bf44-4eb2-4852-a914-0cd2dd0405c5', 'Dénise Carvalho', 'denise.lino.carvalho@gmail.com', 'Figueira da Foz', 'centro', 'Flexível / Qualquer altura', false, NULL,
  'be346028-ca4e-4c23-b9c9-be9a3e331609', '2026-02-10 21:56:24.525775+00', '2026-02-11 17:16:46.990778+00', '917473613', ARRAY['PETG','TPU'], true,
  'intermediate', '1-2 weeks', true, ARRAY['Bambu Lab H2S','Bambu Lab P1P'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '6f46adf4-612b-4812-9841-c06359459490', 'Miguel António', 'miguel8.negocios@gmail.com', '2430-379', 'centro', 'Flexível / Qualquer altura', false, NULL,
  '26603dc7-ad64-48f2-b0a7-afbf26a4038a', '2026-02-10 21:45:50.389863+00', '2026-02-11 17:16:46.990778+00', '912122137', ARRAY['PETG','TPU'], true,
  'expert', '1-2 weeks', true, ARRAY['Bambu Lab A1'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '8cb70eaa-24a9-4871-96f0-fff62791daf5', 'Carlos Melo', 'carlosmelo0112@gmail.com', '3050-381', 'centro', 'Dias úteis (9h–17h)', true, NULL,
  '1eab5b7e-f677-4708-b066-e31511e701b6', '2026-02-10 22:02:04.216648+00', '2026-02-11 17:16:46.990778+00', '910989459', ARRAY['PETG'], false,
  'intermediate', '1-2 weeks', true, ARRAY['Bambu Lab A1 mini','Bambu Lab A1'],
  '180×180×180', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  'f08931b8-22b6-4cd2-babf-4914af3e6327', 'Tiago Morgado', 'geral@sublime3d.com', 'Viseu', 'centro', 'Flexível / Qualquer altura', true, 'Ctt',
  '6eda6b5e-cd99-4f8f-a200-4fd328830fe8', '2026-02-10 22:04:20.447062+00', '2026-02-11 17:16:46.990778+00', '932276986', ARRAY['PETG','TPU'], true,
  'expert', '1-2 weeks', true, ARRAY['Bambu Lab A1','Bambu Lab P1S','Bambu Lab A1 mini','Prusa XL'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  'fc1da1f5-8af2-4362-a950-ec9e03a5a349', 'Diogo Martins', 'vdiogocmartins@gmail.com', '5000-033', 'norte', 'Noites (17h–22h)', true, 'CTT',
  '06e7661b-379e-4866-8f3f-7c83f0dccd53', '2026-02-10 22:04:24.886156+00', '2026-02-11 17:16:46.990778+00', '914961347', ARRAY['PETG'], true,
  'beginner', '1-2 weeks', true, ARRAY['Bambu Lab A1'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  'abc3bac0-f13b-41b5-bd61-bf6f94b0309d', 'João moreira', 'jm3darc@gmail.com', '4540-414', 'norte', 'Noites (17h–22h)', true, 'Ctt',
  'fa15a070-578a-493c-bbc7-e74ce25beab9', '2026-02-10 22:07:02.366601+00', '2026-02-11 17:16:46.990778+00', '918200078', ARRAY['PETG','TPU'], false,
  'intermediate', '1-2 weeks', true, ARRAY['Bambu Lab A1','Anycubic Kobra 3','Outra'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  'f070d924-d93d-4974-9594-ebbf7d7665f8', 'Ricardo Dias', 'r.dias@live.com.pt', 'Albergaria a velha', 'centro', 'Flexível / Qualquer altura', true, 'CTT , Nacex ',
  'de0cade7-f3b0-4d19-8fc1-29317e8f4985', '2026-02-10 21:46:01.001688+00', '2026-02-12 13:49:03.266466+00', '928 263 771', ARRAY['PETG','TPU'], false,
  'intermediate', NULL, true, ARRAY['Elegoo Neptune 4 Plus','Creality K1C'],
  '320x320x385', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '00fd5d50-00da-437d-84d8-417a045b4475', 'Hugo Santos (KukiiStamp)', 'kukiistamp@gmail.com', '4150-740', 'norte', 'Flexível / Qualquer altura', true, 'CTT',
  '33662b34-b4c1-4336-a4fb-5d2c9e980b90', '2026-02-10 21:50:40.468502+00', '2026-02-14 13:02:29.377896+00', '917290222', ARRAY['PETG','TPU'], true,
  'intermediate', '1-2 weeks', false, ARRAY['Bambu Lab A1','Bambu Lab A1 mini'],
  '256×256×256', 'af2103a6fc431fa632b78d936ea03862fae5a040db3fcb3d076a27cc97091fb1'
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '92a292f9-9e10-4e57-a5e9-e1b565a053ec', 'Tal.vez3d (Márcio)', 'talvez3d@gmail.com', '8800-504', 'algarve', 'Flexível / Qualquer altura', true, 'CTT',
  'ba9e207c-58c9-4318-921e-28d83c5ec559', '2026-02-10 22:04:28.479285+00', '2026-02-16 12:48:32.488859+00', '963168881', ARRAY['PETG'], true,
  'intermediate', '1-2 weeks', true, ARRAY['Bambu Lab A1 mini','Bambu Lab A1'],
  '256×256×256', 'd21888b43ecc0381045de8eafc241e6ea53c95af462ce47ec69df6455bf5de91'
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '7dad4655-0632-4b62-bd80-2737da2da8fd', 'Carlos Moreira', 'carloslmoreira7@gmail.com', '2530-766', 'lisboa', 'Flexível / Qualquer altura', true, 'CTT',
  'f67ff7ad-cc86-40ee-8dd1-520845ef904f', '2026-02-10 21:45:59.849615+00', '2026-02-14 18:45:28.400861+00', '916805153', ARRAY['PETG'], true,
  'intermediate', '1-2 weeks', false, ARRAY['Bambu Lab A1','Bambu Lab A1 mini','Bambu Lab H2S'],
  '256×256×256', '21ccc13c811ab8d23aa2e32537162af2fbb366bf0449506894e34488ef1be51b'
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '53bbf722-0fab-4623-b97a-984cc3573158', 'Diogo Ferreira', 'deovferreira@gmail.com', '2690-501', 'lisboa', 'Flexível / Qualquer altura', true, NULL,
  '83fe48f3-b32a-4869-b778-9ac8bedb8d4a', '2026-02-10 21:44:39.905709+00', '2026-02-14 22:14:11.820691+00', '965321999', ARRAY['PETG','TPU'], true,
  'expert', '1-2 weeks', false, ARRAY['Bambu Lab P1S'],
  '256×256×256', 'f97557ce9b1cf089c8ad22a60ea45c2be754ab1ce73c209d5d9c187003e91c87'
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  'c051c2ee-436b-480e-95fa-febda4f65254', 'Carlos Mendes', 'carlos_mendes7@sapo.pt', '4615-186', 'norte', 'Flexível / Qualquer altura', true, 'CTT',
  '6b1a214f-e6d8-4dc4-9414-4b88ef550d1f', '2026-02-10 22:00:37.836541+00', '2026-02-15 11:38:46.930779+00', NULL, ARRAY['PETG','TPU'], true,
  'intermediate', '1-2 weeks', true, ARRAY['Bambu Lab P1S','Bambu Lab A1 mini'],
  '256×256×256', '8a9ab85d1a07879fd88f374e726a63acd6f792cea726f2d2a42d2495ee926268'
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  'ab1a32cf-62bd-402e-991e-ded423c65972', 'Ricardo Rego', 'rego.ricar@gmail.com', 'Braga', 'norte', 'Flexível / Qualquer altura', true, 'Ctt',
  '107a5d05-0bb1-4247-a5db-14af28b911eb', '2026-02-10 22:07:15.93516+00', '2026-02-11 17:16:46.990778+00', '965063954', ARRAY['PETG','TPU'], true,
  'intermediate', '1-2 weeks', true, ARRAY['Bambu Lab A1 mini','Bambu Lab A1','Bambu Lab P1S'],
  '180×180×180', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '8f525ee6-e428-473b-890e-6e82861305fe', 'Ricardo Passos', 'rpassos2000@hotmail.com', '2900-365', 'centro', 'Flexível / Qualquer altura', true, 'CTT',
  '9b1f769f-1090-422f-bb1c-086a09edb72f', '2026-02-10 22:07:26.337473+00', '2026-02-11 17:16:46.990778+00', '917053317', ARRAY['PETG'], true,
  'intermediate', '1-2 weeks', false, ARRAY['Bambu Lab P1S'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '94e3adad-8c73-4f9a-84b4-5de743b4b63d', 'Fábio Lopes', 'svplopes@hotmail.com', '3880-863', 'norte', 'Noites (17h–22h)', true, 'CTT',
  'eb278023-7401-49d3-b9f3-113f2abe293d', '2026-02-10 22:07:48.358217+00', '2026-02-11 17:16:46.990778+00', '917197281', ARRAY['PETG'], false,
  'intermediate', '1-2 weeks', false, ARRAY['Anycubic Kobra 3'],
  '220×220×250', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '260e5a32-4797-46d4-bc77-0007b15d1a29', 'IP3D', 'info@ip3d.pt', '4420-301', 'norte', 'Flexível / Qualquer altura', true, 'Carro a pilhas',
  'f6eb8df5-a0d1-43a3-acad-ad0dfe87402c', '2026-02-10 22:08:50.122639+00', '2026-02-11 17:16:46.990778+00', '919383817', ARRAY['PETG','TPU'], true,
  'expert', '1-2 weeks', true, ARRAY['Bambu Lab P1S','Bambu Lab A1'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '150f2747-9ecf-457a-9c27-c22152bb8f99', 'Diogo Bento', 'diprintpt@gmail.com', 'Leiria', 'centro', 'Limitado (algumas horas/semana)', true, 'Ctt',
  '9bc4de67-41be-4ac8-8d05-0cfbcdace5ed', '2026-02-10 22:17:13.661984+00', '2026-02-11 17:16:46.990778+00', NULL, ARRAY['PETG'], true,
  'intermediate', '1-2 weeks', true, ARRAY['Bambu Lab P2S','Prusa MK3S+'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '603b657b-2ad9-42ad-bafd-31cf9646e6e9', 'Telmo Carvalho', 'telmoc90@gmail.com', '3440-018', 'centro', 'Flexível / Qualquer altura', true, 'CTT, ',
  '330e4c6c-4892-4874-a22f-7852fa2d71bf', '2026-02-10 22:21:06.721402+00', '2026-02-11 17:16:46.990778+00', '968472909', ARRAY['PETG','TPU'], true,
  'expert', '1-2 weeks', true, ARRAY['Bambu Lab A1','Outra'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '2d20a365-703e-4388-86ce-d2b5e3770c90', 'Sérgio Cardoso', 'sergioaraujocardoso@outlook.pt', '4760-810', 'norte', 'Flexível / Qualquer altura', true, 'ctt',
  'f1fbaf5b-968e-439c-aee7-3e9f199988eb', '2026-02-10 22:23:53.152083+00', '2026-02-11 17:16:46.990778+00', NULL, ARRAY['PETG'], false,
  'intermediate', '1-2 weeks', true, ARRAY['Bambu Lab P2S'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '4977e39b-2967-4d0c-8c2f-7116926f5475', 'Rodrigo Santana', 'falback@msn.com', 'Funchal', 'madeira', 'Flexível / Qualquer altura', false, NULL,
  '36d13d7e-23b9-4ee7-be7e-d8b84b79ed0f', '2026-02-10 22:25:46.447687+00', '2026-02-11 17:16:46.990778+00', NULL, ARRAY['PETG','TPU'], true,
  'expert', '2-4 weeks', true, ARRAY['Creality K1 Max'],
  '300×300×300', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '28fcf0fd-5318-4378-940e-20f9b9c142bb', 'Joana Almeida', 'joanna1990lemos@hotmail.com', 'Sintra 2735-369', 'lisboa', 'Flexível / Qualquer altura', true, 'Ctt',
  '1dcb44b8-13ee-47bd-b514-8553c21eb6b3', '2026-02-10 22:26:32.294808+00', '2026-02-11 17:16:46.990778+00', '918037863', ARRAY['PETG'], true,
  'intermediate', '1-2 weeks', false, ARRAY['Bambu Lab P1S'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '302a81cb-52ac-4fd4-a4c3-c649e13e91e1', 'David Fontes', 'bargaofontes@gmail.com', 'Sesimbra', 'lisboa', 'Flexível / Qualquer altura', true, 'Ctt',
  '19e0f3f9-3716-4f88-90bd-6b49e7666c4d', '2026-02-10 22:27:52.561861+00', '2026-02-11 17:16:46.990778+00', '912659348', ARRAY['PETG'], true,
  'intermediate', '2-4 weeks', true, ARRAY['Bambu Lab A1 mini','Bambu Lab P1S','Bambu Lab H2S'],
  '180×180×180', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  'a78f2f8a-4e19-490d-a533-1533775ec019', 'Tec3D', 'tec3d@hotmail.com', 'Póvoa de lanhoso', 'norte', 'Noites (17h–22h)', true, 'Ctt',
  'f88380aa-edc8-4d03-a979-d58cb6692b8c', '2026-02-10 22:28:00.640712+00', '2026-02-11 17:16:46.990778+00', '964268443', ARRAY['PETG','TPU'], true,
  'intermediate', '1-2 weeks', false, ARRAY['Bambu Lab A1','Bambu Lab A1 mini','Bambu Lab P1S','Prusa MK3S+','Elegoo Neptune 4 Pro','QIDI X-Max 3','Voron 0.2'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '1308fb1d-ea63-4d2f-8816-755e51ca1103', 'A3D.PT', 'geral.a3d@gmail.com', '4910-456', 'norte', 'Noites (17h–22h)', true, 'CTT',
  '048c244f-c06a-4ebd-836b-6954a16bc979', '2026-02-10 22:34:08.848613+00', '2026-02-11 17:16:46.990778+00', NULL, ARRAY['PETG'], true,
  'expert', '1-2 weeks', false, ARRAY['Bambu Lab A1 mini','Bambu Lab A1','Bambu Lab P1S','Bambu Lab X1C'],
  '180×180×180', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '55abab03-fbaa-490d-909b-26c66a581d44', 'Rui Silva', 'ruicarro@sapo.pt', '3750-481', 'centro', 'Noites (17h–22h)', true, NULL,
  'c82b9328-0255-4714-8fef-21812f1771ee', '2026-02-10 22:34:48.746296+00', '2026-02-11 17:16:46.990778+00', '914036891', ARRAY['PETG'], true,
  'intermediate', '2-4 weeks', true, ARRAY['Bambu Lab P1S'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  'bc1ac8c7-dd96-4c0e-ac12-785a7301a1a2', 'Francisco Veríssimo', 'fmvv2001@gmail.com', 'Castelo Branco', 'centro', 'Noites (17h–22h)', true, 'CTT',
  'a7713037-1796-4833-866e-0db5b3dbc068', '2026-02-10 22:41:46.338154+00', '2026-02-11 17:16:46.990778+00', '969738130', ARRAY['PETG'], false,
  'intermediate', '2-4 weeks', true, ARRAY['Bambu Lab A1'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '31a1254a-636f-434d-8db3-692c3570a6e3', 'Paulo Barbosa', 'dream4print3d@gmail.com', '3850-364', 'centro', 'Flexível / Qualquer altura', true, 'ctt',
  'd574532a-0a13-4264-bea6-aadaf813e7b9', '2026-02-10 22:45:59.584739+00', '2026-02-11 17:16:46.990778+00', NULL, ARRAY['PETG'], true,
  'expert', '1-2 weeks', false, ARRAY['Bambu Lab X1C','Bambu Lab A1'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '51d28c81-62a5-4b8f-a36d-11b1bd256234', 'Pedro Luis', 'pedromluis@gmail.com', '2650-436', 'lisboa', 'Flexível / Qualquer altura', true, NULL,
  'b0eeba64-d1f6-4ef1-8c3a-59812d8df74d', '2026-02-10 23:03:32.491784+00', '2026-02-11 17:16:46.990778+00', NULL, ARRAY['PETG'], true,
  'intermediate', '1-2 weeks', false, ARRAY['Bambu Lab P2S'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '4fece60f-72b4-41f5-8438-77bb63d282ef', 'Marco Bento (Bento3D)', 'bento3dprints@gmail.com', '3810-363', 'centro', 'Limitado (algumas horas/semana)', true, NULL,
  'e956e4f6-0d33-42e0-bbb0-e5c88088fa20', '2026-02-10 23:07:29.607629+00', '2026-02-11 17:16:46.990778+00', '967441760', ARRAY['PETG','TPU'], false,
  'expert', '1-2 weeks', true, ARRAY['Bambu Lab A1'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  'a1417e36-4840-4ecf-8556-0c444c997ed9', 'Hribeiro', 'helder.ribeiro1@gmail.com', 'Lisboa', 'centro', 'Flexível / Qualquer altura', true, 'Ctt express,dhl',
  '461195c2-d699-4b43-81e4-89cb3ec24d8a', '2026-02-10 22:41:21.234893+00', '2026-02-14 12:21:14.459373+00', '914838736', ARRAY['PETG'], false,
  'intermediate', '1-2 weeks', false, ARRAY['Bambu Lab A1','Bambu Lab P1S'],
  '256×256×256', 'cd46903e0fe92b5a709d5ec38a135ab789ec8d15dbe87b486698945df6ae5a9f'
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  'e9c94913-66e2-4923-acaf-c9d1f748e7dc', 'Ruben Lacerda', 'ruben.lacerda@gmail.com', '4405-834', 'norte', 'Flexível / Qualquer altura', false, NULL,
  '48fd826c-e0d3-4259-8002-8d5de1167c64', '2026-02-10 22:17:47.330713+00', '2026-02-14 18:50:12.946471+00', '916468302', ARRAY['PETG','TPU'], true,
  'intermediate', '1-2 weeks', false, ARRAY['Bambu Lab A1','Bambu Lab P1S'],
  '256×256×256', '7411892e8adb2bbf4f00c5134fb840f4f887a99151bd5f057ee28b1aff67806f'
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '7177645a-9636-4288-babb-bb22e8ef353a', 'José Diogo vieira', 'diogovieira9@hotmail.com', '2025-251', 'centro', 'Flexível / Qualquer altura', true, 'Ctt',
  'e39e4ff6-dce2-4eb9-8526-569085203ed7', '2026-02-10 23:07:43.84952+00', '2026-02-14 22:58:11.26745+00', '913756216', ARRAY['PETG'], true,
  'intermediate', '1-2 weeks', true, ARRAY['Bambu Lab A1'],
  '256×256×256', '602931b4dd2381d9e2dea80582a8bcee3ecb0e047db1c963d387fefafd3d8004'
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '03f9b71d-16c1-4fc5-a036-e6f0a3e96330', 'Carlos Silva', 'caalcosi@gmail.com', '4525-371', 'norte', 'Noites (17h–22h)', true, NULL,
  '9d2ba1fc-5296-4175-9374-d28546800780', '2026-02-10 22:10:40.388622+00', '2026-02-15 20:37:10.934751+00', '915850687', ARRAY['PETG','TPU'], true,
  'intermediate', NULL, true, ARRAY['Bambu Lab P1S'],
  '256×256×256', '28ec767632ac03b578d34738d6953787c478a8cd55bfd40bbc08509292f82b19'
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '805cfe71-babe-41d6-9b64-8ace83ee1be8', 'Daniel Candeias', 'daniel.filipe.candeias@gmail.com', '2840', 'lisboa', 'Flexível / Qualquer altura', false, NULL,
  'e9283b82-3ae4-4509-b359-d6662f56525c', '2026-02-11 10:00:24.288916+00', '2026-02-16 09:45:08.908321+00', NULL, ARRAY['TPU','PETG'], true,
  'intermediate', '2-4 weeks', false, ARRAY['Bambu Lab P1S'],
  '256×256×256', 'f2a189e5759654e867e7e3e75754ee96a4d526e26c16af0d6c25a92d885f7b0e'
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  'ea58bef5-a63d-4225-8bc8-b25f2379fd73', 'Bruno Rivera', 'brunorivera6@gmail.com', '4590', 'norte', 'Limitado (algumas horas/semana)', true, NULL,
  '50839e95-f261-404d-8f68-9baafed405a0', '2026-02-10 23:13:09.674322+00', '2026-02-11 17:16:46.990778+00', '912970188', ARRAY['PETG'], false,
  'intermediate', '2-4 weeks', true, ARRAY['Creality K1'],
  '220×220×250', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '3e36581e-b944-46de-b446-f4c60b03148f', 'Filipe Silva', 'ffilipessilva@gmail.com', '1950', 'lisboa', 'Flexível / Qualquer altura', true, 'DPD',
  '88ff5ca6-3d1d-4de7-8f84-099ef00f52c6', '2026-02-10 23:14:08.460251+00', '2026-02-11 17:16:46.990778+00', NULL, ARRAY['PETG'], true,
  'intermediate', '2-4 weeks', true, ARRAY['Bambu Lab P1S'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '4a723a67-c7c3-4b7a-aec5-c7857cc8223c', 'Tiago Ferreira', 'tiagodaniel21@live.com.pt', '2955-409', 'centro', 'Flexível / Qualquer altura', true, 'Ctt',
  'acc3edea-e41e-47eb-a029-a43f502ea39e', '2026-02-10 23:14:17.623679+00', '2026-02-11 17:16:46.990778+00', '932307626', ARRAY['PETG','TPU'], true,
  'expert', '1-2 weeks', true, ARRAY['Bambu Lab A1'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '56ecbb17-21c3-485e-a919-6daffcfe1e61', 'Joana Fazenda', 'sunbean3dprints@gmail.com', 'Lisboa', 'centro', 'Flexível / Qualquer altura', true, 'Ctt, mrw',
  '0c5f9762-1563-4faf-ac24-2eff0008f6ed', '2026-02-10 23:14:58.747977+00', '2026-02-11 17:16:46.990778+00', NULL, ARRAY['PETG','TPU'], true,
  'intermediate', '1-2 weeks', false, ARRAY['Bambu Lab A1','Bambu Lab P1S'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '9723ff5e-c382-438a-a836-14c5b71c7054', 'Fernando Preto', 'fernando.jmp.92@gmail.com', '2745-767', 'lisboa', 'Noites (17h–22h)', true, 'CTT',
  '929cea1e-0d37-4290-b312-ebdb45a26597', '2026-02-10 23:25:44.448331+00', '2026-02-11 17:16:46.990778+00', '912688891', ARRAY['PETG','TPU'], true,
  'intermediate', '1-2 weeks', true, ARRAY['Bambu Lab P1S'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  'c99b821f-6f54-458a-9bae-49ff8d4c940c', 'Luis carneiro', 'luisfc190@gmail.com', '5425-272', 'norte', 'Flexível / Qualquer altura', true, NULL,
  'c7cf454e-6730-4f5b-bc13-ef8e52d60a5b', '2026-02-10 23:42:00.285634+00', '2026-02-11 17:16:46.990778+00', NULL, ARRAY['PETG','TPU'], true,
  'expert', '2-4 weeks', true, ARRAY['Bambu Lab P1S','Bambu Lab A1','Prusa XL'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '36ee9545-36ec-414d-bbe0-1a81b124aa33', 'Ruben Marques', 'rubenamarques96@gmail.com', 'Braga', 'norte', 'Flexível / Qualquer altura', true, NULL,
  '22142cc2-bd38-4dac-98c2-f91863ec62ef', '2026-02-10 23:47:01.329368+00', '2026-02-11 17:16:46.990778+00', '934312169', ARRAY['PETG'], true,
  'intermediate', '2-4 weeks', true, ARRAY['Bambu Lab P1S','Bambu Lab A1 mini','Bambu Lab A1','Outra'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '0669b490-f58c-40a2-9cd6-b6cdd9dd84d5', 'Bruno Maciel', 'bruno_mac85@hotmail.com', 'Barcelos', 'norte', 'Noites (17h–22h)', true, 'Ctt',
  'fbc6532c-9e28-49d0-9f75-7b596d611f68', '2026-02-10 23:50:48.228348+00', '2026-02-11 17:16:46.990778+00', '933011301', ARRAY['TPU','PETG'], true,
  'intermediate', '1-2 weeks', false, ARRAY['Bambu Lab P1S'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '6b8c1da2-27fa-43b6-8178-46725cf4792f', 'Jose Santos', 'zesantos@sapo.pt', 'Évora', 'alentejo', 'Flexível / Qualquer altura', true, NULL,
  'e9223a95-c33e-4fb2-b48c-f63d841154c9', '2026-02-10 23:59:13.653623+00', '2026-02-11 17:16:46.990778+00', NULL, ARRAY['TPU'], false,
  'intermediate', '2-4 weeks', false, ARRAY['Creality Ender 3 V3'],
  '220×220×250', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '51b2516d-c420-4020-9c00-98c4c9a41894', 'Luís Oliveira', 'pw.luis@gmail.com', '3700-155', 'centro', 'Flexível / Qualquer altura', false, NULL,
  '8a9ce859-f1aa-4e3e-8a73-38893527f804', '2026-02-10 22:48:47.141022+00', '2026-02-11 17:16:46.990778+00', '914526662', ARRAY['PETG','TPU'], true,
  'intermediate', '1-2 weeks', true, ARRAY['Bambu Lab A1'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '81b5de30-baa8-4d6a-8769-61b83700e9b9', 'Diogo Silva', 'diogosilva20122003@gmail.com', '4770-441', 'norte', 'Flexível / Qualquer altura', true, 'CTT ',
  '8c5bf446-6559-475f-bfc2-61a396e5cb0c', '2026-02-11 00:57:11.399173+00', '2026-02-11 17:16:46.990778+00', '911780404', ARRAY['TPU','PETG'], false,
  'intermediate', '1-2 weeks', false, ARRAY['Bambu Lab H2S','Bambu Lab A1'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  'f9119013-3811-4b86-9cea-7eb457fd37ec', 'Nuno Silva', 'nunoalexandresva@gmail.com', '2955-207', 'lisboa', 'Noites (17h–22h)', false, NULL,
  '00ca2353-9a8b-4407-9687-25966683be97', '2026-02-10 22:57:58.422802+00', '2026-02-11 17:16:46.990778+00', '938479633', ARRAY['PETG','TPU'], true,
  'beginner', NULL, true, ARRAY['Bambu Lab P1S'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  'dd5cb9f5-c5e7-4c4f-9517-49ba63cbdb04', 'Marco Teixeira', '3dtexprint@gmail.com', '3880-339', 'centro', 'Limitado (algumas horas/semana)', false, NULL,
  'e0a922a8-f5e9-4d01-96b5-429198126c2e', '2026-02-11 01:06:18.26822+00', '2026-02-11 17:16:46.990778+00', '939429443', ARRAY['PETG','TPU'], true,
  'intermediate', '1-2 weeks', true, ARRAY['Bambu Lab X1C','Bambu Lab A1','Bambu Lab A1 mini','Anycubic Kobra 3','Outra'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  'c45fc6d8-e50c-4079-8549-1014808d9883', 'MC3D', 'mc3dprint23@gmail.com', '3880-587', 'centro', 'Noites (17h–22h)', true, 'Ctt',
  '2349952c-0c6f-4b35-a52e-f53abee74a12', '2026-02-11 01:19:30.628366+00', '2026-02-11 17:16:46.990778+00', '963066898', ARRAY['TPU','PETG'], false,
  'expert', '1-2 weeks', false, ARRAY['Bambu Lab X1C','Bambu Lab P1S','Creality K2 Plus','Outra'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  'faa5082b-5817-4977-b91d-d8c6db0be90c', 'Art3D Creations', 'art3dcreations24@gmail.com', 'Cantanhede', 'centro', 'Flexível / Qualquer altura', true, NULL,
  '2bcba1ea-f020-4748-b6d8-0c78e5676c42', '2026-02-11 02:56:25.185224+00', '2026-02-11 17:16:46.990778+00', '915431607', ARRAY['PETG'], true,
  'expert', '1-2 weeks', true, ARRAY['Bambu Lab P1S'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '0df08a7a-09fd-4c16-b0ea-7bf8f87d37a3', 'Rafael Saraiva', 'rafajs7@gmail.com', 'Coimbra', 'centro', 'Noites (17h–22h)', false, NULL,
  '6464d5c3-2d07-4b78-b2f5-36c9668b2b06', '2026-02-11 04:26:01.133334+00', '2026-02-11 17:16:46.990778+00', '967258424', ARRAY['PETG'], true,
  'intermediate', '1-2 weeks', true, ARRAY['Bambu Lab P1S'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '5df98bcb-a0b0-4a43-9071-f8fca7974bd3', 'Bruno Ferro', 'brunoferro1979@gmail.com', 'Sines', 'alentejo', 'Apenas fins de semana', true, 'Nacex',
  '65426d33-84b0-424f-b35a-81a01b191ebc', '2026-02-11 07:16:05.577974+00', '2026-02-11 17:16:46.990778+00', '962751858', ARRAY['PETG','TPU'], true,
  'expert', '1-2 weeks', true, ARRAY['Bambu Lab A1 mini','Bambu Lab A1'],
  '180×180×180', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  'e52b894c-1149-4746-b244-f924cb8d2a3c', 'Ricardo Rodrigues', 'ricardorodrigues.92@hotmail.com', '3515-419', 'centro', 'Flexível / Qualquer altura', true, 'Ctt',
  '10711405-82ed-4f62-9929-5e8ee11e4d6e', '2026-02-11 07:45:25.04505+00', '2026-02-11 17:16:46.990778+00', '	+351925560625', ARRAY['PETG','TPU'], false,
  'expert', '1-2 weeks', true, ARRAY['Bambu Lab P1S','Bambu Lab H2S'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  'ba178975-9f24-46f1-84ba-9e6c9953cef1', 'Mauro Santos', 'maurosanto@gmail.com', '3140-022', 'centro', 'Apenas fins de semana', false, NULL,
  '104fc210-a94f-4ce4-88d0-13560cf83e27', '2026-02-11 07:48:05.595023+00', '2026-02-11 17:16:46.990778+00', '911964634', ARRAY['PETG'], true,
  'intermediate', '2-4 weeks', true, ARRAY['Bambu Lab P1S'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '631b66cd-3b7e-4e7a-b378-db76a11e942e', '3DD3 Luis', '0bandeira0@gmail.com', '2725-361 Mem Martins', 'lisboa', 'Flexível / Qualquer altura', true, 'CTT',
  '532af605-fe5d-45f7-8160-25713472e520', '2026-02-11 07:52:02.42542+00', '2026-02-11 17:16:46.990778+00', '917635400', ARRAY['PETG','TPU'], true,
  'intermediate', '1-2 weeks', false, ARRAY['Bambu Lab P1S','Bambu Lab X1C'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '91942778-325d-4ad3-b9c5-3a535df73d92', 'Carlos Charréu', 'carlaoboss_slb@hotmail.com', 'Elvas', 'alentejo', 'Flexível / Qualquer altura', true, 'CTT ',
  '5b37fee6-4a22-4eae-a6d6-b536ce2b71ce', '2026-02-11 07:56:25.320105+00', '2026-02-11 17:16:46.990778+00', '963918153', ARRAY['PETG'], false,
  'expert', '1-2 weeks', false, ARRAY['Bambu Lab P2S','Creality Ender 3 V2','Outra'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '5f445671-408e-4992-af40-31ea937d731d', 'Vitor', 'vitorsilva.13@outlook.pt', 'Loulé 8100-333', 'algarve', 'Flexível / Qualquer altura', true, NULL,
  '1f320b98-271f-4458-8c1c-52594da7a764', '2026-02-11 08:02:30.962501+00', '2026-02-11 17:16:46.990778+00', '961427753', ARRAY['PETG'], true,
  'intermediate', '1-2 weeks', true, ARRAY['Bambu Lab A1'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '4e821626-4762-4b54-b4f9-75965fd4d452', 'Tiago Borrego', 'borrego.tiago@gmail.com', '6090-335', 'centro', 'Flexível / Qualquer altura', true, NULL,
  '2ec3cd48-97c2-4f28-97ae-27cb64052e09', '2026-02-11 00:10:20.288531+00', '2026-02-14 23:49:19.023944+00', '961222083', ARRAY['PETG','TPU'], true,
  'expert', NULL, true, ARRAY['Bambu Lab P1S'],
  '256×256×256', 'c70071f82e1d4b8618b47ac1285655bc222a52b54b5916c31b06db1af0094dba'
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  'fe1ce175-4f2e-41a8-bfd4-5f36c452303a', 'Manuel Lino', 'manuelino@gmail.com', 'Alges 1495-143', 'lisboa', 'Noites (17h–22h)', false, NULL,
  'd30e3672-122d-423e-92a7-0c6cd863da10', '2026-02-11 08:10:10.4172+00', '2026-02-11 17:16:46.990778+00', NULL, ARRAY['PETG'], false,
  'intermediate', '1-2 weeks', true, ARRAY['Bambu Lab A1 mini'],
  '180×180×180', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '6f0669c4-3daa-46b8-b03e-21d8d7666ee6', 'CRAZY3D', 'rui_sore@hotmail.com', 'Valongo', 'norte', 'Flexível / Qualquer altura', false, NULL,
  'a7a1e954-a786-4674-ac03-65909b13bf58', '2026-02-11 08:14:06.844739+00', '2026-02-11 17:16:46.990778+00', NULL, ARRAY['PETG'], true,
  'expert', '1-2 weeks', true, ARRAY['Bambu Lab A1 mini'],
  '180×180×180', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  'aabb07ef-2aa9-4b7e-986f-7bb7a07079ca', 'Waldenrique', 'waldenrique@gmail.com', 'Famalicão', 'norte', 'Dias úteis (9h–17h)', true, 'Ctt',
  '1f67ea62-2e29-4c3a-9b6d-e9090ba8ad6c', '2026-02-11 08:19:52.818797+00', '2026-02-11 17:16:46.990778+00', '938392404', ARRAY['PETG'], true,
  'expert', NULL, false, ARRAY['Bambu Lab P1P'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '97e17aa2-03d0-42d7-9917-3b13172355e0', 'Hugo', 'hugo.horta.3@gmail.com', '2860-051', 'lisboa', 'Noites (17h–22h)', false, NULL,
  '6c9f7eac-3977-40a0-892c-ad5ab76c081a', '2026-02-11 08:21:04.861059+00', '2026-02-11 17:16:46.990778+00', NULL, ARRAY['PETG'], false,
  'intermediate', NULL, true, ARRAY['Bambu Lab P1S'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  'd65db4fa-9675-40a4-aa3e-60e75471a0a0', 'Luis Baltazar', 'baltazartab@gmail.com', '4520-192', 'norte', 'Limitado (algumas horas/semana)', true, 'Ctt',
  '723396be-9638-4044-8a0b-29e031bac149', '2026-02-11 08:26:53.110614+00', '2026-02-11 17:16:46.990778+00', NULL, ARRAY['PETG'], true,
  'beginner', '6+ weeks', true, ARRAY['Bambu Lab P1S','Bambu Lab A1 mini'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '5ba6a202-94cb-4789-85d8-22932d7c909a', 'Lprint', 'lprint.aec@gmail.com', 'Leiria', 'centro', 'Noites (17h–22h)', true, NULL,
  'bb969e5c-04ac-403a-8efa-c4ca63cdc19b', '2026-02-11 08:27:58.178572+00', '2026-02-11 17:16:46.990778+00', '916685498', ARRAY['PETG','TPU'], true,
  'expert', '1-2 weeks', false, ARRAY['Bambu Lab P1S','Bambu Lab A1 mini'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '51447cb2-50c3-4807-9c1a-e3313db2e919', 'Marcelo Pinto', 'mpmods@hotmail.com', '4610', 'norte', 'Flexível / Qualquer altura', true, 'Fema express',
  'd3f31f69-1190-4a74-9b68-e6fda7e763b5', '2026-02-11 08:46:53.369423+00', '2026-02-11 17:16:46.990778+00', '912868139', ARRAY['PETG','TPU'], true,
  'intermediate', '1-2 weeks', false, ARRAY['Bambu Lab H2D'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '42a5a27b-a5d5-4c13-8b97-6d34ab4d9b58', 'Gonçalo Marques', 'pgcmarques+rodinhas@gmail.com', '3050', 'centro', 'Flexível / Qualquer altura', false, NULL,
  '2d90c02e-3b5e-4e5c-a6f5-33a06b95a71a', '2026-02-11 08:47:40.029691+00', '2026-02-11 17:16:46.990778+00', NULL, ARRAY['PETG','TPU'], true,
  'intermediate', NULL, true, ARRAY['Bambu Lab A1','Prusa Core One'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  'ccad1c81-f866-49f8-b691-b88a0843e9c6', 'Moica', 'hobby3dbymoica@gmail.com', '2860', 'lisboa', 'Flexível / Qualquer altura', true, 'CTT ',
  '6d9593cc-25ba-42d8-b0d8-e5735da1d390', '2026-02-11 08:51:02.991639+00', '2026-02-11 17:16:46.990778+00', NULL, ARRAY['PETG'], true,
  'intermediate', '1-2 weeks', true, ARRAY['Bambu Lab A1 mini','Bambu Lab A1','Bambu Lab P1S'],
  '180×180×180', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  'ddd2c14d-38de-457d-ad22-888911591e59', 'Gonçalo Lima', 'goncalolimawebmaster@gmail.com', 'Viana do Castelo', 'norte', 'Dias úteis (9h–17h)', true, 'NA',
  '41a1f0cc-0d97-42b5-8ad0-cfedb2fd376b', '2026-02-11 08:59:40.849761+00', '2026-02-11 17:16:46.990778+00', NULL, ARRAY['PETG'], true,
  'intermediate', '2-4 weeks', true, ARRAY['Bambu Lab X1C'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  'b4622577-6d45-4743-8b5a-1be72f4fbeaa', 'Bruno Moreira', 'geral@tech2u.pt', '4780-376', 'norte', 'Flexível / Qualquer altura', true, 'ctt',
  '830b6ab6-64ad-4826-9a3d-65f9ceda1942', '2026-02-11 09:28:35.44816+00', '2026-02-11 17:16:46.990778+00', '969217091', ARRAY['PETG','TPU'], true,
  'intermediate', '1-2 weeks', false, ARRAY['Bambu Lab A1 mini','Outra'],
  '180×180×180', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  'c32a7d1b-5ae5-4d80-ae8e-23b1c30750ce', 'Bruno Pereira', 'brunomspereira0@gmail.com', 'Porto', 'norte', 'Flexível / Qualquer altura', false, NULL,
  'a4725099-5eff-4da6-81a0-05975cfe98bd', '2026-02-11 09:48:04.819206+00', '2026-02-11 17:16:46.990778+00', '919117646', ARRAY['PETG'], true,
  'expert', '2-4 weeks', true, ARRAY['Bambu Lab P1S'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '2be188d4-badf-4784-8c52-984cb4f1cb25', '3D ROCKET', 'waldenriquept@gmail.com', '4760-298', 'norte', 'Dias úteis (9h–17h)', true, 'ctt',
  '35f0157f-47af-4351-a8bc-34c02a7f9e6e', '2026-02-11 10:53:13.04757+00', '2026-02-11 17:16:46.990778+00', NULL, ARRAY['PETG'], true,
  'expert', '1-2 weeks', false, ARRAY['Bambu Lab P1P'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '1ca467fb-61c1-41e8-a0b2-c314242325be', 'Rui Simões', 'simoes-rui@hotmail.com', 'Setúbal', 'lisboa', 'Noites (17h–22h)', true, 'Ctt',
  'f631c314-3943-4d2d-96c5-8f60800327e0', '2026-02-11 11:15:24.362347+00', '2026-02-11 17:16:46.990778+00', NULL, ARRAY['PETG','TPU'], false,
  'intermediate', '1-2 weeks', false, ARRAY['Anycubic Kobra 3'],
  '220×220×250', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  'd5071eb1-224b-4dce-9c5f-195966c7f24e', 'Alexandre Dias', 'alexdias@gmail.com', '4440-000', 'norte', 'Dias úteis (9h–17h)', false, NULL,
  '683a154f-19ec-4d99-9f3c-e61695d48d58', '2026-02-11 11:23:49.212146+00', '2026-02-11 17:16:46.990778+00', NULL, ARRAY['PETG'], true,
  'expert', '2-4 weeks', true, ARRAY['Bambu Lab P1S'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '1b3e85c9-6127-446e-8c71-4d5760c8d2d2', 'Tiago pinto', 'pinto18l@gmail.com', '2625-214', 'lisboa', 'Apenas fins de semana', false, NULL,
  'd296614d-a081-4478-b788-2da8ddc81eb8', '2026-02-11 11:43:50.24486+00', '2026-02-11 17:16:46.990778+00', '931363228', ARRAY['PETG'], true,
  'beginner', '1-2 weeks', true, ARRAY['Bambu Lab A1'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '9aea0f87-b6d4-4ca9-bb99-007b1b4739e6', 'Ana Carvalho', 'anacarvalho928@gmail.com', 'Maia', 'norte', 'Noites (17h–22h)', true, NULL,
  '178edaf5-22a2-4875-98f2-34e9a2d4815e', '2026-02-11 11:45:32.19089+00', '2026-02-11 17:16:46.990778+00', '937478615', ARRAY['PETG'], false,
  'beginner', '1-2 weeks', true, ARRAY['Bambu Lab A1','Bambu Lab P2S'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '1424b934-9052-4233-9fe8-b11637a1702a', 'Fábio Silva', 'licas47@gmail.com', 'Barcelos 4750-658', 'norte', 'Flexível / Qualquer altura', true, 'CTT',
  'b22bc4b1-4571-4fb0-a12b-4550d0c7bc37', '2026-02-11 12:15:48.068864+00', '2026-02-11 17:16:46.990778+00', '910085599', ARRAY['PETG'], true,
  'expert', '1-2 weeks', false, ARRAY['Bambu Lab A1'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '4cf80f41-1438-4022-ba8f-e87b9e0127f4', 'Fábio Teixeira', 'txfabio@hotmail.com', '4430-384', 'norte', 'Flexível / Qualquer altura', true, 'Ctt',
  'dbd6255d-7155-42e1-8cbe-8e66a58710b7', '2026-02-11 12:28:45.405189+00', '2026-02-11 17:16:46.990778+00', '918345927', ARRAY['PETG'], false,
  'intermediate', '1-2 weeks', true, ARRAY['Bambu Lab X1C','Bambu Lab H2S','Bambu Lab A1','Bambu Lab H2D'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '9f7d5bdd-7daf-4943-aac0-e66d4ea2a52c', 'Mário Pereira MKBS-3D', 'wilsonzeus@hotmail.com', '2590-501', 'lisboa', 'Flexível / Qualquer altura', true, 'CTT ',
  '1659a075-864c-417e-bcc4-8ad19dfa4e52', '2026-02-11 12:40:29.595138+00', '2026-02-11 17:16:46.990778+00', '961317324', ARRAY['PETG','TPU'], true,
  'intermediate', '1-2 weeks', true, ARRAY['Bambu Lab A1','Bambu Lab P1S'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '597aad01-9f7b-40d7-9379-eb75de0d02cf', 'Francisco Silva', 'francisco3f@gmail.com', '3060-833', 'centro', 'Noites (17h–22h)', true, NULL,
  '03e4cd47-0436-446d-ac31-3f4fa0b429d7', '2026-02-11 13:12:39.707978+00', '2026-02-11 17:16:46.990778+00', NULL, ARRAY['PETG'], true,
  'intermediate', NULL, false, ARRAY['Bambu Lab P1S'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '144521ca-9241-4306-b0b3-dc3902178b05', 'Renato Barreira', 'bfr@ua.pt', 'Anadia', 'centro', 'Noites (17h–22h)', false, NULL,
  '0c8971b5-4a49-41c1-bccb-7e72af7b0782', '2026-02-11 13:13:33.940289+00', '2026-02-11 17:16:46.990778+00', '913781886', ARRAY['PETG'], true,
  'intermediate', '2-4 weeks', true, ARRAY['Bambu Lab P1S'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  'f39e02a6-02bb-4780-a1fc-cec45eda4859', 'Imprim3D', 'geral@imprim3d.pt', '4485-833', 'norte', 'Apenas fins de semana', true, 'CTT',
  '9791cf9b-2e0b-4478-a954-cdbd0fa14c65', '2026-02-11 13:45:25.447204+00', '2026-02-11 17:16:46.990778+00', '918282927', ARRAY['PETG','TPU'], true,
  'intermediate', '1-2 weeks', true, ARRAY['Bambu Lab A1','Creality K2 Plus'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  'ad9e51b2-7fc3-4b65-be16-5fac2e103428', 'Luís França', 'luis.franca.1985@gmail.com', 'Vimieiro', 'alentejo', 'Noites (17h–22h)', false, NULL,
  'd5bd37dc-3b5c-41fc-b66a-a57f389e2201', '2026-02-11 13:48:46.133269+00', '2026-02-11 17:16:46.990778+00', NULL, ARRAY['PETG','TPU'], true,
  'intermediate', '2-4 weeks', true, ARRAY['Bambu Lab P2S'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '2aecee75-c939-436f-a8b8-b31e896802b0', 'Sergio Botelho', 'sergifil99@gmail.com', 'Lamego', 'centro', 'Noites (17h–22h)', true, NULL,
  '45cefb63-cf7b-4c46-9ad2-7c6b6610b3ef', '2026-02-11 14:52:31.327655+00', '2026-02-11 17:16:46.990778+00', NULL, ARRAY['PETG'], true,
  'intermediate', '1-2 weeks', false, ARRAY['Bambu Lab A1'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '2ab7b7fd-301e-48da-bcae-52861543d66e', 'João Júnior', 'joaorodrigues.br.pt@gmail.com', 'Monte Abraão', 'lisboa', 'Apenas fins de semana', true, 'CTT ',
  'c22c5485-e56f-4283-a343-dd51ffabd32d', '2026-02-11 15:55:18.367931+00', '2026-02-11 17:16:46.990778+00', '935126363', ARRAY['PETG'], false,
  'beginner', '1-2 weeks', false, ARRAY['Bambu Lab A1 mini'],
  '180×180×180', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '0077c734-da04-4419-aa1d-fbd7485372da', 'Nuno Isidoro', 'sparkify3d@gmail.com', '4730-020', 'norte', 'Noites (17h–22h)', true, 'CTT ou transporte próprio Local a combinar)',
  '2e7430dc-9640-4cd3-8991-4e81c8b70e86', '2026-02-11 17:14:24.726596+00', '2026-02-11 17:16:46.990778+00', '923193997', ARRAY['PETG'], true,
  'intermediate', '1-2 weeks', false, ARRAY['Bambu Lab A1','Bambu Lab P1S','Anycubic Kobra 3','Outra'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '1bd0ac07-baa1-44d6-913e-00caab5715a0', 'Ricardo Fialho', 'ricardo.fialho1991@gmail.com', '7370-216', 'alentejo', 'Flexível / Qualquer altura', true, NULL,
  'fd6b8c03-23e7-49e7-af94-6bbc1cc57e7b', '2026-02-11 19:09:30.710009+00', '2026-02-11 19:09:30.710009+00', '961153417', ARRAY['PETG'], true,
  'expert', '1-2 weeks', true, ARRAY['Bambu Lab P1S','Bambu Lab A1'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  'ab11c127-05b0-4694-bc11-71ae141e0584', '3D’frent', '3d.frent@gmail.com', 'Lisboa', 'lisboa', 'Flexível / Qualquer altura', true, 'CTT',
  '6e61fcf8-b9b2-4804-8b70-66549536d688', '2026-02-11 15:45:41.092838+00', '2026-02-11 20:32:21.484169+00', '914670531', ARRAY['PETG'], true,
  'beginner', '1-2 weeks', true, ARRAY['Bambu Lab A1','Bambu Lab P2S'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  'b5db4845-6c38-4dbd-83f1-743ad814ae62', 'Tiago Coelho', 't.ia.guinho@hotmail.com', 'Trofa', 'norte', 'Noites (17h–22h)', false, NULL,
  '2ff67f54-1e72-419d-a15d-6fc649f6b8c3', '2026-02-11 21:29:02.018835+00', '2026-02-11 21:29:02.018835+00', NULL, ARRAY['PETG'], true,
  'beginner', '1-2 weeks', true, ARRAY['Bambu Lab P2S'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '83b4a829-94e4-4dca-aaa9-e145202e6510', 'Tiago Silvestre', 'tiagosilvestre@msn.com', '2140-307', 'centro', 'Flexível / Qualquer altura', true, NULL,
  '56c3f53d-4b4c-4b04-9a50-3e97e29d50b2', '2026-02-11 23:10:27.057048+00', '2026-02-11 23:10:27.057048+00', '917840454', ARRAY['PETG','TPU'], false,
  'expert', '1-2 weeks', false, ARRAY['Creality K1C','FlashForge Adventurer 5M'],
  '220×220×250', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '8b80a0ed-7284-479c-86e8-6297be40696b', 'José Luís Rodrigues', 'acroman.lx@gmail.com', '7400-044', 'alentejo', 'Flexível / Qualquer altura', true, 'CTT ',
  '488a0fb2-26b1-499f-8d7c-8c0ed2b0aca3', '2026-02-12 07:03:53.022242+00', '2026-02-12 07:03:53.022242+00', NULL, ARRAY['PETG','TPU'], true,
  'intermediate', '1-2 weeks', false, ARRAY['Bambu Lab A1','Creality Ender 3 V3'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '9f55dbb3-6382-40bb-8b59-6da3825650fa', 'Leão', 'rui.am.leao@gmail.com', '4590-558', 'norte', 'Flexível / Qualquer altura', true, NULL,
  '88f3850f-4e0f-4a45-ac35-357880e6934d', '2026-02-11 17:01:22.940053+00', '2026-02-12 14:22:28.295112+00', '917733353', ARRAY['PETG','TPU'], false,
  'intermediate', '1-2 weeks', false, ARRAY['Bambu Lab A1 mini','Bambu Lab A1','Bambu Lab H2D'],
  '300×300×300', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  'a9c05219-c6ca-47d9-91ec-4f2480c90828', 'Ivo Couto', 'iacouto@gmail.com', '4440-108', 'norte', 'Noites (17h–22h)', true, NULL,
  '3694b2c4-2b24-42ff-8083-59cef98f6e8d', '2026-02-12 17:00:39.054559+00', '2026-02-12 17:00:39.054559+00', NULL, ARRAY['PETG'], true,
  'intermediate', '2-4 weeks', true, ARRAY['Bambu Lab P1S'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '83a73009-3701-4d39-a8e1-2a6a9e071a01', 'Ricardo Duarte', 'ricardo.duarte@gmail.com', '3500-175', 'centro', 'Flexível / Qualquer altura', true, 'Asfalto Largo CTT',
  '8b7f5e0e-ce15-49ba-92b6-8299bbdc9e43', '2026-02-12 22:18:35.655378+00', '2026-02-12 22:18:35.655378+00', '935251409', ARRAY['PETG','TPU'], true,
  'intermediate', NULL, true, ARRAY['Bambu Lab P1S'],
  '256×256×256', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '04607bb4-4364-4efd-adc2-f89a2188c8f8', 'Diogo Ferreira', 'db.ferreira.176@gmail.com', '2840-380', 'lisboa', 'Flexível / Qualquer altura', true, 'CTT',
  '64b3487e-aaf8-4fc6-ae12-fe0ec7dcb7df', '2026-02-13 14:53:27.247245+00', '2026-02-13 14:53:27.247245+00', '937106334', ARRAY['PETG','TPU'], false,
  'intermediate', '2-4 weeks', true, ARRAY['Outra: Anycubic Kobra 1'],
  '220×220×250', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  'e8d92a26-d78a-4cbc-97f2-cd93ad41bd9d', 'Tiago Pimenta', 'pepper3d@outlook.pt', 'Coimbra', 'centro', 'Apenas fins de semana', true, 'CTT',
  '58555730-550f-4b9c-ac49-f50c06fafde1', '2026-02-14 06:37:23.210519+00', '2026-02-14 06:37:23.210519+00', NULL, ARRAY['PETG'], false,
  'intermediate', '1-2 weeks', false, ARRAY['Bambu Lab P1S','Bambu Lab A1 mini','Outra: Bambu Lab H2S'],
  '350x320x340', NULL
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '67ff8089-59e0-4b69-b5c3-e885a323ed50', 'Paulo Tavares', 'paulituh@gmail.com', '3050-423', 'centro', 'Noites (17h–22h)', true, NULL,
  '32e69c85-3820-4032-8411-9b8e81bb56ea', '2026-02-14 13:48:00.635253+00', '2026-02-14 13:48:12.037211+00', NULL, ARRAY['PETG','TPU'], true,
  'expert', '1-2 weeks', false, ARRAY['Bambu Lab A1','Anycubic Kobra 2 Pro','Anycubic Kobra 3'],
  '256×256×256', '4d7b6f5cf939b404d7aa57ac90b0b08fc32f8f43769112bfc69b60f06a8b21e0'
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  'dd9561eb-f633-4f7a-afa2-5f2168d1fd03', 'Rafael Pereira', 'rafaelveb94@gmail.com', '6200-761', 'centro', 'Limitado (algumas horas/semana)', true, 'Ctt',
  'dbdf140e-5846-4f11-b999-da0f0326b260', '2026-02-14 15:43:04.184317+00', '2026-02-14 15:43:13.796586+00', '963707506', ARRAY['PETG','TPU'], false,
  'intermediate', '1-2 weeks', false, ARRAY['Anycubic Kobra 3'],
  '256×256×256', '36631f004d52f72e3aeade0c002aba2ed8f3dc8316a0b5b05164f1b2e460da8e'
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '2f9eb4e1-6483-4f5e-852e-2d201ace0491', 'Arménio Catarino', 'armenio_nanque@hotmail.com', 'Paço De Arcos', 'lisboa', 'Flexível / Qualquer altura', true, 'Ctt',
  'b2bb98c4-e9cb-4088-8ef4-31b9d30849c8', '2026-02-14 22:38:41.40181+00', '2026-02-14 22:39:06.205694+00', '961055849', ARRAY['PETG','TPU'], true,
  'intermediate', '2-4 weeks', true, ARRAY['Bambu Lab P1S'],
  '256×256×256', '692d04b88c6398015e33bd1baf71aaaf5992482675de2ae982e4c814712f09a3'
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  'ec974591-43e7-43b4-ac65-0a3da5d98b5b', 'Luís Costa', 'luiscosta.lithium@gmail.com', '2950-679', 'lisboa', 'Flexível / Qualquer altura', true, 'Inpost',
  '1fc6ef8d-1a85-4fb2-bc58-4100d079ddf5', '2026-02-13 10:48:06.730302+00', '2026-02-15 19:12:25.592567+00', NULL, ARRAY['PETG','TPU'], true,
  'intermediate', '1-2 weeks', false, ARRAY['Outra: Creality Ender 3v3 plus'],
  '300×300×300', '681c2fdbf9b742d66646ff9a94ba37463e1e5f50ea92565ac2c219818f7b16b9'
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '466463d6-d793-4965-842f-5a7a02253eac', 'Ricardo Peres', 'ricardoperesduarte@gmail.com', '3500-175', 'centro', 'Flexível / Qualquer altura', true, 'Asfalto Largo',
  '5bd7e828-44ab-4d1d-b0ea-d25d018af734', '2026-02-15 19:24:58.657282+00', '2026-02-15 19:25:12.351064+00', NULL, ARRAY['PETG','TPU'], true,
  'intermediate', '1-2 weeks', true, ARRAY['Bambu Lab P1S'],
  '256×256×256', 'fdcd9c711050c889852e24a5f981f5488d8b2b91309d0835ba8237ab71a4cbc9'
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '9fdcff65-f90c-4eab-a2de-5f6f4e997494', 'Alberto Miguel', 'alberto.miguel.simples@hotmail.com', '2690-296', 'centro', 'Flexível / Qualquer altura', true, 'Ctt',
  '6fb956be-e4d1-4f57-861b-b0c660837930', '2026-02-11 15:58:28.131424+00', '2026-02-16 11:00:18.514713+00', '962010017', ARRAY['PETG'], true,
  'beginner', '1-2 weeks', true, ARRAY['Bambu Lab P2S'],
  '256×256×256', 'c4b29ac3e0954eb962c4be49b10aed25fdcc65c0988dd6513e6546dc92666217'
)
ON CONFLICT (id) DO NOTHING;
INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  '5a2b248c-27d6-43c7-b63c-b7b3fabafa1f', 'Rui Pereira', 'rui.miguel.pereira.rp@gmail.com', '2665-605', 'lisboa', 'Flexível / Qualquer altura', false, NULL,
  '05b9b17d-8580-43e0-afa1-764d4eade8cf', '2026-02-16 21:13:00.569459+00', '2026-02-16 21:13:15.233944+00', '969562292', ARRAY['PETG','TPU'], false,
  'intermediate', '2-4 weeks', true, ARRAY['Bambu Lab P1S','Bambu Lab A1'],
  '256×256×256', 'a91bbec830f7b2689b9155b3f7081ed022a67e0d5634a782f17b2602b86f22c7'
)
ON CONFLICT (id) DO NOTHING;