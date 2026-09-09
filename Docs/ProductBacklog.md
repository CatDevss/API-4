# Backlog do Produto — GeoRural DataHub

## Product Backlog

| Rank | Prioridade | User Story | Estimativa | Sprint |
|---|---|---|---|---|
| 1 | Alta | Como Operador de Dados, quero cadastrar as fontes de informação, para que seja possível organizá-las antes de serem usadas. | 8 | 1 |
| 2 | Alta | Como Operador de Dados, quero enviar os arquivos de dados para o sistema, para que fiquem guardados com segurança antes de serem tratados. | 21 | 1 |
| 3 | Alta | Como Operador de Dados, quero verificar se os dados enviados estão corretos e separar os que têm problema, para que só sigam adiante informações confiáveis. | 13 | 1 |
| 4 | Alta | Como Operador de Dados, quero organizar e padronizar os dados já verificados, para que fiquem prontos para serem cruzados com outras informações. | 21 | 2 |
| 5 | Alta | Como Analista, quero cruzar as informações de diferentes fontes e calcular os indicadores ambientais, para que consiga montar relatórios. | 34 | 2 |
| 6 | Alta | Como Gestor, quero conferir a qualidade dos dados antes de aprová-los e guardar cada versão aprovada sem permitir alterações depois, para que os dados aprovados sejam sempre confiáveis. | 21 | 2 |
| 7 | Alta | Como Gestor, quero divulgar as versões aprovadas dos dados, para que outras pessoas possam usá-las para tomar decisões. | 13 | 2 |
| 8 | Alta | Como pessoa que usa os dados, quero acessar os indicadores já divulgados, para poder utilizá-los nas minhas análises e decisões. | 21 | 3 |
| 9 | Média | Como Auditor, quero acompanhar tudo o que acontece com os dados, para conseguir verificar todo o caminho, desde a entrada até o resultado final. | 13 | 3 |
| 10 | Média | Como Administrador, quero controlar quem pode acessar o quê no sistema, para que cada pessoa tenha acesso apenas ao que precisa para seu trabalho. | 13 | 3 |
| 11 | Baixa | Como Administrador, quero acompanhar se o sistema está funcionando corretamente, para garantir que ele fique sempre disponível para uso. | 21 | 3 |

---

## Critérios de Aceite por User Story

| ID | Critério de Aceite |
|---|---|
| US1 | A fonte e o conjunto de dados são cadastrados com as informações obrigatórias preenchidas; o sistema não permite salvar um cadastro incompleto. |
| US2 | O arquivo enviado fica registrado com a data, o horário e quem enviou; arquivos em formatos não aceitos são recusados. |
| US3 | Registros com erro (campos faltando, duplicados, localização inválida) ficam separados com o motivo anotado; os corretos seguem para a próxima etapa. |
| US4 | Os dados ficam padronizados conforme as regras definidas, e é possível saber quais alterações foram feitas em cada um. |
| US5 | Todos os indicadores ambientais são calculados por propriedade e por município, com base nos dados organizados. |
| US6 | Uma vez aprovada, a versão não pode mais ser alterada; antes de aprovar é possível ver informações sobre a qualidade dos dados. |
| US7 | A versão aprovada fica disponível para consulta; versões antigas continuam acessíveis. |
| US8 | É possível ver quem enviou, alterou, aprovou ou baixou cada informação, do início ao fim. |
| US9 | O administrador consegue cadastrar pessoas e definir o que cada uma pode fazer no sistema. |
| US10 | É possível ver se tudo está funcionando bem e receber um aviso caso algo pare de funcionar. |
| US11 | Os indicadores divulgados podem ser consultados (em mapa, tabela ou gráfico) e baixados, com resposta rápida. |

---

## Sprint Backlog

### Sprint 1

| | |
|---|---|
| Capacidade estimada da Equipe por Sprint: | 42 Story Points |
| **Meta da Sprint:** | **User Stories de rank 1, 2 e 3** |
| Previsão da Sprint (extras, sem compromisso de entrega): | Nenhum item extra planejado para esta Sprint |

| Rank | Prioridade | User Story | Estimativa | Sprint |
|---|---|---|---|---|
| 1 | Alta | Como Operador de Dados, quero cadastrar as fontes de informação, para que seja possível organizá-las antes de serem usadas. | 8 | 1 |
| 2 | Alta | Como Operador de Dados, quero enviar os arquivos de dados para o sistema, para que fiquem guardados com segurança antes de serem tratados. | 21 | 1 |
| 3 | Alta | Como Operador de Dados, quero verificar se os dados enviados estão corretos e separar os que têm problema, para que só sigam adiante informações confiáveis. | 13 | 1 |

**Objetivo da Sprint:** Colocar as informações no sistema: cadastro das fontes, envio dos arquivos e uma primeira verificação para separar os dados corretos dos que têm problema.

### Sprint 2

| | |
|---|---|
| Capacidade estimada da Equipe por Sprint: | 89 Story Points |
| **Meta da Sprint:** | **User Stories de rank 4, 5, 6 e 7** |
| Previsão da Sprint (extras, sem compromisso de entrega): | Nenhum item extra planejado para esta Sprint |

| Rank | Prioridade | User Story | Estimativa | Sprint |
|---|---|---|---|---|
| 4 | Alta | Como Operador de Dados, quero organizar e padronizar os dados já verificados, para que fiquem prontos para serem cruzados com outras informações. | 21 | 2 |
| 5 | Alta | Como Analista, quero cruzar as informações de diferentes fontes e calcular os indicadores ambientais, para que consiga montar relatórios. | 34 | 2 |
| 6 | Alta | Como Gestor, quero conferir a qualidade dos dados antes de aprová-los e guardar cada versão aprovada sem permitir alterações depois, para que os dados aprovados sejam sempre confiáveis. | 21 | 2 |
| 7 | Alta | Como Gestor, quero divulgar as versões aprovadas dos dados, para que outras pessoas possam usá-las para tomar decisões. | 13 | 2 |

**Objetivo da Sprint:** Preparar e calcular: organizar os dados verificados, calcular os indicadores ambientais e conferir a qualidade antes de aprovar cada versão.

### Sprint 3

| | |
|---|---|
| Capacidade estimada da Equipe por Sprint: | 68 Story Points |
| **Meta da Sprint:** | **User Stories de rank 8, 9, 10 e 11** |
| Previsão da Sprint (extras, sem compromisso de entrega): | Nenhum item extra planejado para esta Sprint |

| Rank | Prioridade | User Story | Estimativa | Sprint |
|---|---|---|---|---|
| 8 | Alta | Como pessoa que usa os dados, quero acessar os indicadores já divulgados, para poder utilizá-los nas minhas análises e decisões. | 21 | 3 |
| 9 | Média | Como Auditor, quero acompanhar tudo o que acontece com os dados, para conseguir verificar todo o caminho, desde a entrada até o resultado final. | 13 | 3 |
| 10 | Média | Como Administrador, quero controlar quem pode acessar o quê no sistema, para que cada pessoa tenha acesso apenas ao que precisa para seu trabalho. | 13 | 3 |
| 11 | Baixa | Como Administrador, quero acompanhar se o sistema está funcionando corretamente, para garantir que ele fique sempre disponível para uso. | 21 | 3 |

**Objetivo da Sprint:** Deixar tudo pronto para uso: divulgar os dados aprovados, permitir consulta pelos usuários finais, acompanhar tudo o que acontece no sistema, controlar o acesso das pessoas e verificar se o sistema está funcionando bem.
