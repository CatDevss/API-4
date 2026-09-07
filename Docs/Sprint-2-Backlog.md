# Backlog — Sprint 2

**Projeto:** GeoRural DataHub — Visiona Tecnologia Espacial
 
**Qtd. Tarefas:** 35 | **Pontos:** 73
 
## Objetivo da Sprint
 
Pipeline de qualidade e cálculo dos indicadores: integração da biblioteca geoespacial (GDAL/GeoTools) e reprojeção real das geometrias, validações avançadas na quarentena (duplicidade/geometria) e reprocessamento, tratamento completo (dissolução de geometrias, rastreabilidade), cálculo de todos os indicadores ambientais (ICV, IRL, IAPP, ISAP, IAE, IDesmat, IFC), qualidade e comparação de versões, e melhorias no upload (métricas, preview, identificação de usuário). Dá pra demonstrar os indicadores sendo calculados de verdade a partir dos dados tratados.
 
---
 
## User Stories envolvidas
 
| ID | Prioridade | História de Usuário | Critério de Aceite |
|---|---|---|---|
| US2 | Alta | Como Operador de Dados quero realizar a Ingestão na zona bruta para que tenha os dados brutos armazenados | Arquivo salvo na zona bruta com hash (SHA-256), data/hora e usuário registrados; formatos não suportados são rejeitados. |
| US3 | Alta | Como Operador de Dados quero validar os dados ingeridos e enviar os registros inconsistentes à quarentena para que apenas dados íntegros sigam para o tratamento | Registros inválidos (campos, tipos, duplicidades, geometrias) vão para quarentena com motivo registrado; válidos seguem para tratamento. |
| US4 | Alta | Como Operador de Dados quero tratar e padronizar os dados validados seguindo as regras do Geodatalake para que estejam prontos para o cruzamento geoespacial | Dados tratados e padronizados conforme regras do Geodatalake, com transformações aplicadas registradas para rastreabilidade. |
| US5 | Alta | Como Analista quero realizar o cruzamento dos dados geoespaciais e calcular para formular relatórios | Indicadores (ICV, IRL, IAPP, ISAP, IAE, IDesmat, IFC) calculados por imóvel, APP, RL e município a partir dos dados tratados. |
| US6 | Alta | Como Gestor quero avaliar a qualidade e versionamento imutável dos dados depurados para que seja considerados consistentes | Versão aprovada é registrada como imutável (hash, fonte, competência, parâmetros, regras); métricas de qualidade visíveis antes da aprovação. |
 
---
