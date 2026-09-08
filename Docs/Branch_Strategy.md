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
> conflitos difíceis de resolver depois. Isso vale para **qualquer branch**, inclusive `sprint1`, `sprint2`,
> `sprint3` e `main`.*

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
| `sprint1` · `sprint2` · `sprint3` | Uma branch por sprint, criada a partir de `main` no início de cada sprint. Servem de base para o desenvolvimento das tarefas daquela sprint |

</div>

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<h2 align="center"><img src="https://api.iconify.design/tabler/git-fork.svg?color=%23FFFFFF" width="20" /> Branches Temporárias (Feature Branches)</h2>

<br>

Para cada **task** do backlog, cria-se uma branch a partir da branch da sprint correspondente. O nome da
branch é o próprio ID da task.

**Formato:**

```
T<id da tarefa>
```

**Exemplo:** a task `T1.1` pertence à Sprint 1, então a branch é criada a partir de `sprint1`:

```
T1.1
```

Os commits dentro dela seguem o [padrão de commits](./Padrao-de-Commits.md), referenciando essa mesma task —
pode ser um único commit ou vários, conforme o trabalho avança:

```
feat(T1.1): modelar as tabelas fonte e conjunto
feat(T1.1): adicionar constraints e índices nas tabelas
```

Como cada ID de task no backlog é único (não existe, por exemplo, duas tasks `T1.1`), esse formato não gera
conflito de nomes no Git, mesmo com tasks de sprints diferentes.

> *Essas branches são temporárias e devem ser deletadas após o merge.*

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<h2 align="center"><img src="https://api.iconify.design/tabler/git-pull-request.svg?color=%23FFFFFF" width="20" /> Fluxo de Trabalho</h2>

<br>

<div align="center">

| # | Etapa | Detalhe |
| :---: | --- | --- |
| 1 | **Criar a branch da task** | `git checkout sprint1` → `git pull origin sprint1` → `git checkout -b T1.1` |
| 2 | **Desenvolver e commitar** | Seguindo o [padrão de commits](./Padrao-de-Commits.md) |
| 3 | **Abrir um Pull Request** | Da branch da task para a branch da sprint correspondente (ex.: `T1.1` → `sprint1`) |
| 4 | **Revisão** | Feita por outra pessoa do time (nunca o próprio autor) — analisa o código, testa conflitos e aprova |
| 5 | **Merge e deleção** | PR mesclado na branch da sprint; a branch da task é deletada em seguida |

</div>

<br>

**Comandos da etapa 1:**

```bash
git checkout sprint1
git pull origin sprint1
git checkout -b T1.1
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
git merge sprint1
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

> *Ao final de cada sprint, a respectiva branch `sprintX` é mesclada em `main`.*

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<h2 align="center"><img src="https://api.iconify.design/tabler/tag.svg?color=%23FFFFFF" width="20" /> Padrão de Título de Pull Request</h2>

<br>

O título do PR referencia a task da branch:

<br>

<div align="center">

| Tipo | Descrição | Exemplo de título do PR |
| :---: | --- | --- |
| `feat` | Nova funcionalidade | `feat(T1.1): modelar tabelas fonte e conjunto` |
| `fix` | Correção de bug | `fix(T2.1): corrige modelagem da tabela arquivo_ingerido` |
| `docs` | Mudança em documentação | `docs: adiciona estratégia de branches` |
| `refactor` | Refatoração sem mudar comportamento | `refactor(T1.3): simplifica validação de upload` |
| `chore` | Manutenção, configs, dependências | `chore: configura storage de upload` |

</div>

<br>

> *Se o PR não tiver uma task associada (ex: ajuste de processo, configuração geral), omita o escopo ou use
> algo descritivo como `(docs)` ou `(config)`.*

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
      Commitar diretamente nas branches <code>sprint1</code>, <code>sprint2</code>, <code>sprint3</code> — elas só recebem merges de branches de task, via PR
      </sub>
    </td>
    <td align="center" width="50%">
      <img width="60" height="3" src="https://placehold.co/60x3/FFA300/FFA300.png"/>
      <br><strong>SEMPRE FAZER</strong><br><br>
      <sub>
      Deletar as branches de task após o merge, para manter o repositório organizado<br><br>
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
