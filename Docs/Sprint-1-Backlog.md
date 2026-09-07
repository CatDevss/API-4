# Backlog — Sprint 1

**Projeto:** GeoRural DataHub — Visiona Tecnologia Espacial
 
**Qtd. Tarefas:** 36 | **Pontos:** 64
 
## Objetivo da Sprint
 
Fluxo ponta a ponta mínimo funcionando: cadastro de fonte/conjunto, upload de arquivo com hash na zona bruta, validação básica com envio à quarentena, tratamento simplificado (gravação na zona tratada, sem reprojeção geoespacial ainda), criação e aprovação de versão, publicação e consulta básica via API retornando o dado publicado. Dá pra demonstrar um dado entrando no sistema e saindo publicado, de ponta a ponta.
 
---
 
## User Stories envolvidas
 
| ID | Prioridade | História de Usuário | Critério de Aceite |
|---|---|---|---|
| US1 | Alta | Como Operador de Dados quero cadastrar as fontes para que seja possivel realizar a validação dos mesmos | Fonte e conjunto cadastrados com campos obrigatórios preenchidos; sistema bloqueia cadastro incompleto. |
| US2 | Alta | Como Operador de Dados quero realizar a Ingestão na zona bruta para que tenha os dados brutos armazenados | Arquivo salvo na zona bruta com hash (SHA-256), data/hora e usuário registrados; formatos não suportados são rejeitados. |
| US3 | Alta | Como Operador de Dados quero validar os dados ingeridos e enviar os registros inconsistentes à quarentena para que apenas dados íntegros sigam para o tratamento | Registros inválidos (campos, tipos, duplicidades, geometrias) vão para quarentena com motivo registrado; válidos seguem para tratamento. |
| US4 | Alta | Como Operador de Dados quero tratar e padronizar os dados validados seguindo as regras do Geodatalake para que estejam prontos para o cruzamento geoespacial | Dados tratados e padronizados conforme regras do Geodatalake, com transformações aplicadas registradas para rastreabilidade. |
| US6 | Alta | Como Gestor quero avaliar a qualidade e versionamento imutável dos dados depurados para que seja considerados consistentes | Versão aprovada é registrada como imutável (hash, fonte, competência, parâmetros, regras); métricas de qualidade visíveis antes da aprovação. |
| US7 | Alta | Como Gestor quero realizar a publicação das versões para que seja possivel realizar as tomadas de decisões | Versão aprovada publicada como vigente, disponível via portal e API; versões anteriores continuam acessíveis. |
| US11 | Alta | Como Consumidor de Dados quero acessar os indicadores publicados via portal e via API para que eu possa utilizá-los em minhas análises e decisões. | Indicadores publicados acessíveis via portal (mapa, tabela, gráficos) e API, com resposta em até 3s na massa de homologação. |
 
---
