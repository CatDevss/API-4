# Padrão de Commits

Este documento define o padrão de mensagens de commit do projeto GeoRuralDataHub. O objetivo é manter o histórico do repositório organizado, facilitar a leitura do que foi feito e vincular cada commit à tarefa correspondente no backlog.

Baseado no modelo [Conventional Commits](https://www.conventionalcommits.org), com um adicional: o ID da tarefa entra no lugar do escopo.

## Estrutura

```
<tipo>(T<id da tarefa>): <descrição curta>

<corpo opcional, se precisar explicar o porquê>
```

- **tipo**: obrigatório, ver tabela abaixo
- **(T...)**: obrigatório, ID da tarefa no backlog, no lugar do escopo
- **descrição curta**: no imperativo ("criar", "corrigir"), até ~72 caracteres

## Tipos

| Tipo | Quando usar |
|---|---|
| `feat` | Nova funcionalidade |
| `fix` | Correção de bug |
| `docs` | Documentação |
| `style` | Formatação, sem mudança de lógica |
| `refactor` | Reestruturação de código sem mudar comportamento |
| `test` | Criação ou ajuste de testes |
| `chore` | Manutenção, configs, dependências |
| `perf` | Melhoria de performance |

## Exemplos

```
feat(T1.2): criar endpoints POST /fontes e POST /conjuntos

feat(T1.4): criar tela de cadastro de fonte e conjunto

fix(T2.1): corrigir modelagem da tabela arquivo_ingerido

chore(T2.5): configurar storage para upload de arquivos

refactor(T1.3): simplificar validação do endpoint GET /conjuntos
```

## Regras rápidas

- Se o commit resolver mais de uma task, liste as duas: `feat(T1.3, T1.4): ...`
- Prefira commits pequenos e frequentes a commits gigantes
- Se o corpo do commit for necessário, deixe uma linha em branco depois da primeira linha
