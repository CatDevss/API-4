<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<h1 align="center">⌞ Estratégia de Branches e Pull Requests ⌝</h1>

<p align="center">
  Define o uso de branches no repositório do <strong>GeoRural DataHub</strong>, mantendo o histórico limpo,
  facilitando a revisão de código e organizando o desenvolvimento por sprint.
</p>

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<h2 align="center"><img src="https://api.iconify.design/tabler/alert-triangle.svg?color=%23FFFFFF" width="20" /> Antes de Qualquer Push</h2>

<br>

<div align="center">

<table>
  <tr>
    <td align="center">
      <img width="60" height="3" src="https://placehold.co/60x3/FE5000/FE5000.png"/>
      <br><strong>SEMPRE DAR <code>git pull</code> ANTES DE DAR <code>git push</code></strong><br><br>
      <sub>
      Antes de subir qualquer alteração, atualize sua branch local primeiro:
      </sub>
    </td>
  </tr>
</table>

</div>

```bash
git pull origin <nome-da-branch>
```

> *Só depois disso rode o `git push`. Pular esse passo pode sobrescrever o trabalho de outra pessoa ou gerar
> conflitos difíceis de resolver depois. Isso vale para **qualquer branch**, inclusive `sprint-1`, `sprint-2`,
> `sprint-3` e `main`.*

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<h2 align="center"><img src="https://api.iconify.design/tabler/lock.svg?color=%23FFFFFF" width="20" /> Branches Fixas</h2>

<br>

Não são deletadas durante o projeto:

<br>

<div align="center">

| Branch | Descrição |
| :---: | --- |
| `main` | Código em produção (ou pronto para publicar). Nenhum commit é feito diretamente nela |
| `sprint-1` · `sprint-2` · `sprint-3` | Uma branch por sprint, criada a partir de `main` no início de cada sprint. Servem de base para o desenvolvimento das User Stories daquela sprint |

</div>

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<h2 align="center"><img src="https://api.iconify.design/tabler/git-fork.svg?color=%23FFFFFF" width="20" /> Branches Temporárias (User Story Branches)</h2>

<br>

Para cada **User Story** do backlog, cria-se uma branch a partir da branch da sprint correspondente. O nome
da branch é o próprio ID da User Story.

**Formato:**

```
US<id da user story>
```

**Exemplo:** a User Story `US01` pertence à Sprint 1, então a branch é criada a partir de `sprint-1`:

```
US01
```

Todas as **tasks que compõem essa User Story** são commitadas diretamente na branch da própria US — não
existe uma branch por task. Os commits seguem o [padrão de commits](./Padrao-de-Commits.md), referenciando
a task correspondente dentro da US:

```
feat(T1.1): modelar as tabelas fonte e conjunto
feat(T1.2): adicionar constraints e índices nas tabelas
fix(T1.3): corrige validação de upload
```

Como cada ID de task no backlog é único (não existe, por exemplo, duas tasks `T1.1`), não há conflito de
nomes de commit mesmo com várias tasks sendo commitadas na mesma branch `USxx`.

> *Essas branches são temporárias e devem ser deletadas após o merge da User Story.*

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<h2 align="center"><img src="https://api.iconify.design/tabler/git-pull-request.svg?color=%23FFFFFF" width="20" /> Fluxo de Trabalho</h2>

<br>

<div align="center">

| # | Etapa | Detalhe |
| :---: | --- | --- |
| 1 | **Criar a branch da User Story** | `git checkout sprint-1` → `git pull origin sprint-1` → `git checkout -b US01` |
| 2 | **Desenvolver e commitar as tasks** | Cada task da US gera um ou mais commits na própria branch `US01`, seguindo o [padrão de commits](./Padrao-de-Commits.md) |
| 3 | **Abrir um Pull Request** | Da branch da US para a branch da sprint correspondente (ex.: `US01` → `sprint-1`) |
| 4 | **Revisão** | Feita por outra pessoa do time (nunca o próprio autor) — analisa o código, testa conflitos e aprova |
| 5 | **Merge e deleção** | PR mesclado na branch da sprint; a branch da US é deletada em seguida |

</div>

<br>

**Comandos da etapa 1:**

```bash
git checkout sprint-1
git pull origin sprint-1
git checkout -b US01
```

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<h2 align="center"><img src="https://api.iconify.design/tabler/git-merge.svg?color=%23FFFFFF" width="20" /> Integração na Main</h2>

<br>

Ao final de cada sprint, a branch da sprint é mesclada em `main`:

```bash
git checkout main
git pull origin main
git merge sprint-1
git push origin main
```

> *Isso garante que `main` sempre reflita a soma de todas as sprints concluídas.*

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<h2 align="center"><img src="https://api.iconify.design/tabler/binary-tree-2.svg?color=%23FFFFFF" width="20" /> Visualização</h2>

<br>

```
main
 ├── sprint-1
 │    ├── US01 (T1.1, T1.2, T1.3) → PR → sprint-1 → deleta branch
 │    └── US02 (T2.1)             → PR → sprint-1 → deleta branch
 ├── sprint-2
 │    ├── US03 (T2.3, T4.1) → PR → sprint-2 → deleta branch
 │    └── US04 (T4.2)       → PR → sprint-2 → deleta branch
 └── sprint-3
      └── US05 (T7.1) → PR → sprint-3 → deleta branch
```

> *Ao final de cada sprint, a respectiva branch `sprint-X` é mesclada em `main`. Dentro de cada branch de
> User Story, os commits referenciam as tasks (`Tx.x`) que compõem aquela US.*

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<h2 align="center"><img src="https://api.iconify.design/tabler/tag.svg?color=%23FFFFFF" width="20" /> Padrão de Título de Pull Request</h2>

<br>

O título do PR referencia a User Story da branch:

<br>

<div align="center">

| Tipo | Descrição | Exemplo de título do PR |
| :---: | --- | --- |
| `feat` | Nova funcionalidade | `feat(US01): modelar tabelas fonte e conjunto` |
| `fix` | Correção de bug | `fix(US02): corrige modelagem da tabela arquivo_ingerido` |
| `docs` | Mudança em documentação | `docs: adiciona estratégia de branches` |
| `refactor` | Refatoração sem mudar comportamento | `refactor(US01): simplifica validação de upload` |
| `chore` | Manutenção, configs, dependências | `chore: configura storage de upload` |

</div>

<br>

> *Se o PR não tiver uma User Story associada (ex: ajuste de processo, configuração geral), omita o escopo
> ou use algo descritivo como `(docs)` ou `(config)`.*

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<h2 align="center"><img src="https://api.iconify.design/tabler/shield-check.svg?color=%23FFFFFF" width="20" /> Regras Importantes</h2>

<br>

<div align="center">

<table>
  <tr>
    <td align="center" width="50%">
      <img width="60" height="3" src="https://placehold.co/60x3/FE5000/FE5000.png"/>
      <br><strong>NUNCA FAZER</strong><br><br>
      <sub>
      Commitar diretamente em <code>main</code> — toda alteração chega via merge de uma branch de sprint<br><br>
      Commitar diretamente nas branches <code>sprint-1</code>, <code>sprint-2</code>, <code>sprint-3</code> — elas só recebem merges de branches de User Story, via PR<br><br>
      Criar uma branch por task — as tasks são commitadas direto na branch da User Story a que pertencem
      </sub>
    </td>
    <td align="center" width="50%">
      <img width="60" height="3" src="https://placehold.co/60x3/FFA300/FFA300.png"/>
      <br><strong>SEMPRE FAZER</strong><br><br>
      <sub>
      Deletar as branches de User Story após o merge, para manter o repositório organizado<br><br>
      Resolver conflitos localmente como autor do PR e atualizar a branch antes de pedir nova revisão
      </sub>
    </td>
  </tr>
</table>

</div>

<br>

> *Merge das branches de sprint para `main` deve ser feito apenas pelo responsável definido pelo time
> (ex: Scrum Master).*

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<p align="center">
  <sub>Documento do projeto <strong>GeoRural DataHub</strong>, desenvolvido para a <strong>Visiona Tecnologia Espacial</strong>.</sub>
</p>
