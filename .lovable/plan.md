
# Seccao de Introducao do Projeto na Pagina Inicial

## O que vamos fazer

Adicionar uma nova seccao "Sobre o Projeto" na pagina inicial, logo abaixo do HeroSection e antes do mapa. Tera uma foto (imagem do projeto/cadeira de rodas) e um texto curto a explicar o que e o PrintImpact Connect e a missao por detras.

## Layout

Uma seccao simples com:
- Imagem a esquerda (ou em cima no mobile)
- Texto a direita com titulo e 2-3 paragrafos curtos a explicar o projeto
- Estilo visual consistente com o resto da app (cards, cores navy/esmeralda)

O texto pode incluir:
- O que e o projeto (impressao 3D distribuida de cadeiras de rodas)
- A inspiracao (TMT / 3D-Mobility.org)
- Como funciona de forma resumida
- Quem esta por detras (Smart 3D / comunidade portuguesa)

A imagem pode ser um placeholder por agora que facilmente se troca por uma foto real mais tarde.

## Detalhes Tecnicos

### Ficheiros

1. **Novo: `src/components/AboutSection.tsx`**
   - Componente com layout lado a lado (grid 2 colunas no desktop, stack no mobile)
   - Imagem com `rounded-2xl` e sombra
   - Titulo H2 + texto em paragrafos
   - Possivel badge/tag tipo "Sobre o Projeto"
   - Usar `motion.div` do Framer Motion para fade-in ao scroll (consistente com HeroSection)

2. **Editar: `src/pages/Index.tsx`**
   - Importar e inserir `AboutSection` entre `HeroSection` e `RegionMap`

### Nota sobre a imagem

Por agora usamos uma imagem placeholder (ou o `/placeholder.svg` que ja existe no projeto). O utilizador pode depois facilmente trocar por uma foto real do projeto carregando uma imagem.
