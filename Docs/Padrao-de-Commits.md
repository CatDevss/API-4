<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<h1 align="center">⌞ Padrão de Commits ⌝</h1>

<p align="center">
  Define o padrão de mensagens de commit do projeto <strong>GeoRural DataHub</strong>. O objetivo é manter o
  histórico do repositório organizado, facilitar a leitura do que foi feito e vincular cada commit à tarefa
  correspondente no backlog.
</p>

<p align="center">
  <sub>Baseado no modelo <a href="https://www.conventionalcommits.org">Conventional Commits</a>, com um adicional: o ID da tarefa entra no lugar do escopo.</sub>
</p>

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<h2 align="center"><img src="https://api.iconify.design/tabler/git-commit.svg?color=%23FFFFFF" width="20" /> Estrutura</h2>

<br>

```
<tipo>(T<id da tarefa>): <descrição curta>

<corpo opcional, se precisar explicar o porquê>
```

<br>

<div align="center">

| Campo | Regra |
| :---: | --- |
| `tipo` | Obrigatório, ver tabela abaixo |
| `(T...)` | Obrigatório, ID da tarefa no backlog, no lugar do escopo |
| descrição curta | No imperativo ("criar", "corrigir"), até ~72 caracteres |

</div>

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<h2 align="center"><img src="https://api.iconify.design/tabler/tag.svg?color=%23FFFFFF" width="20" /> Tipos</h2>

<br>

<div align="center">

| Tipo | Quando usar |
| :---: | --- |
| `feat` | Nova funcionalidade |
| `fix` | Correção de bug |
| `docs` | Documentação |
| `style` | Formatação, sem mudança de lógica |
| `refactor` | Reestruturação de código sem mudar comportamento |
| `test` | Criação ou ajuste de testes |
| `chore` | Manutenção, configs, dependências |
| `perf` | Melhoria de performance |

</div>

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<h2 align="center"><img src="https://api.iconify.design/tabler/code.svg?color=%23FFFFFF" width="20" /> Exemplos</h2>

<br>

```
feat(T1.2): criar endpoints POST /fontes e POST /conjuntos
feat(T1.4): criar tela de cadastro de fonte e conjunto
fix(T2.1): corrigir modelagem da tabela arquivo_ingerido
chore(T2.5): configurar storage para upload de arquivos
refactor(T1.3): simplificar validação do endpoint GET /conjuntos
```

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<h2 align="center"><img src="https://api.iconify.design/tabler/bolt.svg?color=%23FFFFFF" width="20" /> Regras Rápidas</h2>

<br>

- [ ] Se o commit resolver mais de uma task, liste as duas: `feat(T1.3, T1.4): ...`
- [ ] Prefira commits pequenos e frequentes a commits gigantes
- [ ] Se o corpo do commit for necessário, deixe uma linha em branco depois da primeira linha

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<p align="center">
  <sub>Documento do projeto <strong>GeoRural DataHub</strong>, desenvolvido para a <strong>Visiona Tecnologia Espacial</strong>.</sub>
</p>
