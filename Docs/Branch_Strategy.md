# Estratégia de Branches e Pull Requests

Este documento define a estratégia de uso de branches no repositório do projeto Datahub. O objetivo é manter um histórico limpo, facilitar a revisão de código e organizar o desenvolvimento por sprint.

---

> ## ⚠️ SEMPRE DAR `git pull` ANTES DE DAR `git push`
>
> Antes de subir qualquer alteração, **atualize sua branch local primeiro**:
> ```bash
> git pull origin <nome-da-branch>
> ```
> Só depois disso rode o `git push`. Pular esse passo pode sobrescrever o trabalho de outra pessoa ou gerar conflitos difíceis de resolver depois. Isso vale para **qualquer branch**, inclusive `sprint1`, `sprint2`, `sprint3` e `main`.

---

## Branches fixas

Não são deletadas durante o projeto:

- **`main`** — código em produção (ou pronto para publicar). Nenhum commit é feito diretamente nela.
- **`sprint1`**, **`sprint2`**, **`sprint3`** — uma branch por sprint, criada a partir de `main` no início de cada sprint. Servem de base para o desenvolvimento das tarefas daquela sprint.

## Branches temporárias (feature branches)

Para cada **task** do backlog, cria-se uma branch a partir da branch da sprint correspondente. O nome da branch é o próprio ID da task.

**Formato:**
```
T<id da tarefa>
```

**Exemplo:** a task `T1.1` pertence à Sprint 1, então a branch é criada a partir de `sprint1`:
```
T1.1
```

Os commits dentro dela seguem o [padrão de commits](./Padrao-de-Commits.md), referenciando essa mesma task — pode ser um único commit ou vários, conforme o trabalho avança:
```
feat(T1.1): modelar as tabelas fonte e conjunto
feat(T1.1): adicionar constraints e índices nas tabelas
```

Como cada ID de task no backlog é único (não existe, por exemplo, duas tasks `T1.1`), esse formato não gera conflito de nomes no Git, mesmo com tasks de sprints diferentes.

Essas branches são temporárias e devem ser deletadas após o merge.

## Fluxo de trabalho

**1. Criar a branch da task**
```bash
git checkout sprint1
git pull origin sprint1
git checkout -b T1.1
```

**2. Desenvolver e commitar**

Fazer os commits necessários, seguindo o [padrão de commits](./Padrao-de-Commits.md).

**3. Abrir um Pull Request**

Quando a task estiver pronta, abrir um PR da branch da task para a branch da sprint correspondente (ex.: `T1.1` → `sprint1`).

**4. Revisão**

O PR deve ser revisado por outra pessoa do time (nunca o próprio autor). O revisor analisa o código, testa se há conflitos e, se estiver tudo certo, aprova.

**5. Merge e deleção**

Após aprovado, o PR é mesclado na branch da sprint. Em seguida, a branch da task é deletada (automaticamente pelo GitHub ou manualmente).

## Integração na main

Ao final de cada sprint, a branch da sprint é mesclada em `main`:

```bash
git checkout main
git pull origin main
git merge sprint1
git push origin main
```

Isso garante que `main` sempre reflita a soma de todas as sprints concluídas.

## Visualização

```
main
 ├── sprint1
 │    ├── T1.1 → PR → sprint1 → deleta branch
 │    ├── T1.2 → PR → sprint1 → deleta branch
 │    └── T2.1 → PR → sprint1 → deleta branch
 ├── sprint2
 │    ├── T2.3  → PR → sprint2 → deleta branch
 │    └── T4.1  → PR → sprint2 → deleta branch
 └── sprint3
      └── T7.1 → PR → sprint3 → deleta branch
```

Ao final de cada sprint, a respectiva branch `sprintX` é mesclada em `main`.

## Padrão de título de Pull Request

O título do PR referencia a task da branch:

| Tipo | Descrição | Exemplo de título do PR |
|---|---|---|
| `feat` | Nova funcionalidade | `feat(T1.1): modelar tabelas fonte e conjunto` |
| `fix` | Correção de bug | `fix(T2.1): corrige modelagem da tabela arquivo_ingerido` |
| `docs` | Mudança em documentação | `docs: adiciona estratégia de branches` |
| `refactor` | Refatoração sem mudar comportamento | `refactor(T1.3): simplifica validação de upload` |
| `chore` | Manutenção, configs, dependências | `chore: configura storage de upload` |

> Se o PR não tiver uma task associada (ex: ajuste de processo, configuração geral), omita o escopo ou use algo descritivo como `(docs)` ou `(config)`.

## Regras importantes

- **Nunca** commitar diretamente em `main` — toda alteração chega via merge de uma branch de sprint.
- **Nunca** commitar diretamente nas branches `sprint1`, `sprint2`, `sprint3` — elas só recebem merges de branches de task, via PR.
- **Deletar** as branches de task após o merge, para manter o repositório organizado.
- **Conflitos**: se um PR apresentar conflitos, o próprio autor resolve localmente, atualiza a branch e atualiza o PR. O merge só é aceito sem conflitos e com o código revisado.
- **Merge** das branches de sprint para `main` deve ser feito apenas pelo responsável definido pelo time (ex: Scrum Master).
