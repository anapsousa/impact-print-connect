
# Materiais, Telefone e Agrupamento Geografico

## O que muda para si

1. **Novo passo no formulario de contribuicao** - Pergunta se o voluntario imprime TPU, PETG ou ambos
2. **Telefone opcional** - Campo de telefone adicionado ao formulario e ao dialogo de adicao manual no admin
3. **Informacao de materiais visivel no admin** - Ao atribuir pecas, ve-se que materiais cada voluntario imprime, para nao atribuir uma peca TPU a quem so imprime PETG
4. **Agrupamento por regiao no admin** - No separador de voluntarios, os voluntarios aparecem agrupados por regiao (Norte, Centro, Lisboa, etc.) para facilitar a alocacao

## Detalhes Tecnicos

### 1. Migracao SQL
Adicionar duas colunas a tabela `contributors`:
- `phone` (text, nullable) - numero de telefone opcional
- `materials` (text[], default `'{PETG}'`) - array com os materiais que imprime (PETG, TPU, ou ambos)

### 2. Formulario de contribuicao (`Contribute.tsx`)
- Adicionar **passo 3.5** (entre Impressora e Disponibilidade): "Que materiais imprime?" com opcoes PETG, TPU ou Ambos (selecao visual como a disponibilidade)
- Adicionar campo de telefone opcional no passo 6 (Ativar), junto ao email
- Enviar `materials` e `phone` no insert

### 3. Dialogo de adicao manual (`AddContributorDialog.tsx`)
- Adicionar campo de telefone (opcional)
- Adicionar selecao de materiais (PETG/TPU/Ambos)

### 4. Atribuicao de pecas (`PartAssignmentSelect.tsx`)
- Mostrar badge de materiais (PETG/TPU) ao lado do nome do voluntario no dropdown
- Filtrar automaticamente: quando a peca e TPU, destacar ou priorizar voluntarios que imprimem TPU

### 5. Tabela de voluntarios no admin (`Admin.tsx`)
- Adicionar coluna "Materiais" com badges PETG/TPU
- Adicionar coluna "Telefone" (se disponivel)
- Agrupar voluntarios por regiao com separadores visuais (headers de grupo) na tabela

### 6. Filtros (`ContributorsFilters.tsx`)
- Adicionar filtro por material (Todos / PETG / TPU)

### Ficheiros afetados
1. `supabase/migrations/` - Nova migracao (phone + materials)
2. `src/pages/Contribute.tsx` - Novo passo de materiais + campo telefone
3. `src/components/admin/AddContributorDialog.tsx` - Campos telefone e materiais
4. `src/components/admin/PartAssignmentSelect.tsx` - Mostrar materiais, filtrar por compatibilidade
5. `src/components/admin/ContributorsFilters.tsx` - Filtro por material
6. `src/pages/Admin.tsx` - Coluna materiais/telefone na tabela, agrupamento por regiao
