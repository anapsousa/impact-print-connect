

# Gestao de Pecas no Painel de Administracao

## Resumo

Adicionar ao painel de administracao a capacidade de criar projetos pre-configurados com todas as pecas do 3D Toddler Mobility Trainer (TMT), atribuir pecas a voluntarios, e monitorizar o progresso de cada cadeira em construcao.

## O que muda para si

- No separador "Projetos" do Centro de Comando, ao criar um novo projeto, as **24 pecas do TMT** sao automaticamente adicionadas
- Cada peca pode ser **atribuida a um voluntario** diretamente na interface
- O **estado de cada peca** pode ser atualizado (nao atribuido, atribuido, a imprimir, impresso, enviado, concluido)
- Uma barra de progresso mostra **quantas pecas faltam** para completar cada cadeira
- Os voluntarios verao as pecas atribuidas no seu **Portal de Contribuicao**

## Pecas do TMT (24 placas de impressao)

Baseado no modelo MakerWorld "3D Toddler Mobility Trainer", as pecas serao organizadas por grupo:

**Estrutura (PETG):**
1. Handle Right (Pega Direita)
2. Handle Left (Pega Esquerda)
3. Handle Center (Pega Central)
4. Frame Right (Estrutura Direita)
5. Frame Left (Estrutura Esquerda)
6. Frame Center (Estrutura Central)
7. Frame Base Front (Base Frontal)
8. Frame Base Rear (Base Traseira)
9. Axle Mount Right (Suporte Eixo Direito)
10. Axle Mount Left (Suporte Eixo Esquerdo)
11. Caster Mount Front Right (Suporte Roda Frontal Direito)
12. Caster Mount Front Left (Suporte Roda Frontal Esquerdo)
13. Footrest Right (Apoio Pe Direito)
14. Footrest Left (Apoio Pe Esquerdo)
15. Seat Base (Base do Assento)
16. Seat Back (Encosto)
17. Side Panel Right (Painel Lateral Direito)
18. Side Panel Left (Painel Lateral Esquerdo)
19. Tray (Tabuleiro)
20. Wheel Right (Roda Direita)
21. Wheel Left (Roda Esquerda)

**Pecas Macias (TPU/Foaming TPU):**
22. Seat Cushion (Almofada do Assento)
23. Back Cushion (Almofada do Encosto)
24. Grip Pads (Pegas Macias)

## Detalhes Tecnicos

### 1. Nova tabela de templates de pecas (migracao SQL)

Adicionar uma tabela `part_templates` para armazenar as pecas padrao do TMT, e adicionar colunas `material` e `category` a tabela `parts`:

```text
part_templates
  - id (uuid)
  - template_name (text) -- ex: "TMT v1"
  - part_name (text)
  - category (text) -- "Estrutura" ou "Pecas Macias"
  - material (text) -- "PETG" ou "TPU"
  - print_time_hours (numeric) -- tempo estimado
  - sort_order (integer)
```

Alterar a tabela `parts`:
- Adicionar coluna `category` (text, nullable)
- Adicionar coluna `material` (text, nullable)

Pre-popular com as 24 pecas do TMT.

### 2. Alteracoes no Admin.tsx (separador Projetos)

- **Criar projeto com template**: Ao criar um projeto, adicionar automaticamente as 24 pecas do TMT
- **Lista de pecas por projeto**: Mostrar todas as pecas agrupadas por categoria (Estrutura / Pecas Macias)
- **Atribuir voluntario**: Dropdown em cada peca para selecionar um voluntario da lista
- **Alterar estado**: Dropdown para mudar o estado de cada peca (nao atribuido -> atribuido -> a imprimir -> impresso -> enviado -> concluido)
- **Barra de progresso**: Mostrar visualmente quantas pecas estao concluidas vs total
- **Indicador de pecas em falta**: Destacar claramente quais pecas ainda nao foram atribuidas

### 3. Componentes novos

- `src/components/admin/ProjectPartsList.tsx` -- Lista de pecas com atribuicao e gestao de estado
- `src/components/admin/PartAssignmentSelect.tsx` -- Componente de selecao de voluntario para cada peca
- `src/components/admin/ProjectProgressCard.tsx` -- Cartao de projeto com barra de progresso detalhada

### 4. Atualizacao do Portal do Voluntario

O portal (`Portal.tsx`) ja mostra pecas atribuidas. Sera melhorado para mostrar:
- Nome do projeto associado a cada peca
- Material necessario (PETG/TPU)
- Categoria da peca

### 5. Fluxo de utilizacao

```text
Organizador cria projeto
        |
        v
24 pecas TMT criadas automaticamente
        |
        v
Organizador ve lista de pecas por categoria
        |
        v
Atribui voluntarios a pecas individuais
        |
        v
Atualiza estado conforme progresso
        |
        v
Barra de progresso atualiza em tempo real
        |
        v
Voluntario ve atribuicao no seu portal
```

### 6. Seguranca

- Apenas organizadores/admins podem criar, atualizar e eliminar pecas (RLS ja configurado)
- Voluntarios apenas podem ver as pecas que lhes foram atribuidas (via portal com token)

