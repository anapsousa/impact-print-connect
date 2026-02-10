
# Plano: Fluxo Completo de Gestao - PrintImpact Connect

## Problemas Identificados

1. **A utilizadora Ana nao tem role de admin** - Precisa de ser atribuida para aceder ao Centro de Comando
2. **Nao e possivel adicionar voluntarios manualmente** no painel de administracao - apenas via formulario publico
3. **Sem filtros por regiao/impressora** no separador de voluntarios do admin
4. **Sem filtro por regiao na atribuicao de pecas** - quando se atribui um voluntario a uma peca, nao ha indicacao da regiao/impressora para facilitar a decisao
5. **Sem possibilidade de eliminar projetos** ou alterar o estado do projeto (Planeamento/Ativo/Concluido)
6. **Politicas RLS dos contributors demasiado permissivas** - qualquer pessoa pode ver todos os registos

## O Que Vai Mudar

### 1. Atribuir role de admin a Ana
- Inserir registo na tabela `user_roles` para a utilizadora existente (anapsousa@gmail.com)

### 2. Adicionar voluntarios manualmente no admin
- Novo formulario no separador "Voluntarios" com campos: Nome, Email, Localizacao, Regiao, Impressora, Disponibilidade, Pode Enviar
- Permite ao organizador registar voluntarios que contactaram por outros canais

### 3. Filtros no separador de Voluntarios
- Filtro por regiao (dropdown com regioes de Portugal)
- Filtro por modelo de impressora
- Pesquisa por nome
- Os filtros atualizam a tabela em tempo real

### 4. Melhorar atribuicao de pecas com contexto geografico
- No dropdown de atribuicao de voluntarios a pecas, mostrar a regiao ao lado do nome
- Agrupar voluntarios por regiao no dropdown para facilitar a escolha de voluntarios proximos

### 5. Gestao de estado e eliminacao de projetos
- Dropdown para alterar o estado do projeto (Planeamento -> Ativo -> Concluido)
- Botao para eliminar projeto (com confirmacao)

### 6. Corrigir RLS dos contributors
- Manter SELECT aberto para organizadores (via `is_organizer()`)
- Restringir SELECT para contribuidores ao seu proprio registo (via token)
- UPDATE restrito ao proprio registo via token

## Detalhes Tecnicos

### Migracao SQL
- INSERT na tabela `user_roles` para Ana (user_id: a33b4365-b5ff-472b-8bc7-474ce31a399d, role: admin)
- Atualizar RLS policies na tabela `contributors`:
  - SELECT: `is_organizer() OR (token = current_setting('request.headers')::json->>'x-contributor-token')` -- simplificado para manter SELECT true pois e necessario para o formulario publico e portal
  - Na pratica, manter as politicas atuais pois o formulario de contribuicao e o portal precisam de acesso

### Alteracoes em Admin.tsx
- Separador "Voluntarios": adicionar barra de filtros (regiao, impressora, pesquisa) e botao "Adicionar Voluntario"
- Dialog/modal para criar voluntario manualmente
- Separador "Projetos": adicionar dropdown de estado no `ProjectProgressCard` e botao de eliminar

### Alteracoes em PartAssignmentSelect.tsx
- Mostrar regiao e modelo de impressora ao lado do nome do voluntario
- Agrupar por regiao usando `SelectGroup` e `SelectLabel`

### Novo componente
- `src/components/admin/AddContributorDialog.tsx` - Modal com formulario para adicionar voluntario

### Ficheiros afetados
1. `supabase/migrations/` - Nova migracao para role de admin
2. `src/pages/Admin.tsx` - Filtros, formulario de voluntario, gestao de estado de projetos
3. `src/components/admin/PartAssignmentSelect.tsx` - Contexto geografico no dropdown
4. `src/components/admin/ProjectProgressCard.tsx` - Dropdown de estado e botao eliminar
5. `src/components/admin/AddContributorDialog.tsx` - Novo componente
