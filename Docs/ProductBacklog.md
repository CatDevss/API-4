# Backlog do Produto — GeoRural DataHub

## Resumo por User Story

| User Story | Descrição resumida | Prioridade | Pontos |
|---|---|---|---|
| US1 | Cadastro de fonte e conjunto | Alta | 9 |
| US2 | Ingestão na zona bruta | Alta | 54 |
| US3 | Validação e envio à quarentena | Alta | 15 |
| US4 | Tratamento e padronização | Alta | 12 |
| US5 | Cruzamento geoespacial e cálculo | Alta | 26 |
| US6 | Qualidade e versionamento imutável | Alta | 15 |
| US7 | Publicação da versão | Alta | 14 |
| US8 | Auditoria | Média | 11 |
| US9 | Gestão de perfis de acesso | Média | 15 |
| US10 | Monitoramento de infraestrutura | Baixa | 8 |
| US11 | Consumo por portal e API | Alta | 14 |

## Resumo por Prioridade

| Prioridade | ID | User Story | Critério de Aceite | Status |
|---|---|---|---|---|
| Alta | US 1 | **Como** Operador de Dados **quero** cadastrar as fontes **para que** seja possivel realizar a validação dos mesmos | Fonte e conjunto cadastrados com campos obrigatórios preenchidos; sistema bloqueia cadastro incompleto. |:white_square_button: |
| Alta | US 2 | **Como** Operador de Dados **quero** realizar a Ingestão na zona bruta **para que** tenha os dados brutos armazenados | Arquivo salvo na zona bruta com hash (SHA-256), data/hora e usuário registrados; formatos não suportados são rejeitados. | :white_square_button: |
| Alta | US 3 | **Como** Operador de Dados **quero** validar os dados ingeridos e enviar os registros inconsistentes à quarentena **para que** apenas dados íntegros sigam para o tratamento | Registros inválidos (campos, tipos, duplicidades, geometrias) vão para quarentena com motivo registrado; válidos seguem para tratamento. | :white_square_button: |
| Alta | US 4 | **Como** Operador de Dados **quero** tratar e padronizar os dados validados seguindo as regras do Geodatalake **para que** estejam prontos para o cruzamento geoespacial | Dados tratados e padronizados conforme regras do Geodatalake, com transformações aplicadas registradas para rastreabilidade. | :white_square_button: |
| Alta | US 5 | **Como** Analista **quero** realizar o cruzamento dos dados geoespaciais e calcular **para que** consiga formular relatórios | Indicadores (ICV, IRL, IAPP, ISAP, IAE, IDesmat, IFC) calculados por imóvel, APP, RL e município a partir dos dados tratados. | :white_square_button: |
| Alta | US 6 | **Como** Gestor **quero** avaliar a qualidade e versionamento imutável dos dados depurados **para que** seja considerados consistentes | Versão aprovada é registrada como imutável (hash, fonte, competência, parâmetros, regras); métricas de qualidade visíveis antes da aprovação. | :white_square_button: |
| Alta | US 7 | **Como** Gestor **quero** realizar a publicação das versões **para que** seja possivel realizar as tomadas de decisões | Versão aprovada publicada como vigente, disponível via portal e API; versões anteriores continuam acessíveis. | :white_square_button: |
| Alta | US 11 | **Como** Consumidor de Dados **quero** acessar os indicadores publicados via portal e via API **para que** eu possa utilizá-los em minhas análises e decisões. | Indicadores publicados acessíveis via portal (mapa, tabela, gráficos) e API, com resposta em até 3s na massa de homologação. | :white_square_button: |
| Média | US 8 | **Como** Auditor **quero** ter acesso a todos os processos **para que** consiga fiscalizar e rastrear o tratamento do dado bruto ao produto final | Painel de auditoria exibe uploads, execuções, publicações, downloads e responsáveis, permitindo rastrear do dado bruto ao produto final. | :white_square_button: |
| Média | US 9 | **Como** Administrador **quero** gerenciar os perfils de acesso dos usuarios **para que** cada um tenha permissões adequadas as suas responsabilidades | Administrador cria/edita usuários e atribui perfis (Operador, Analista, Gestor, Auditor, Administrador) com permissões correspondentes. | :white_square_button: |
| Baixa | US 10 | **Como** Administrador **quero** monitora a saúde e disponibilidade da infraestrutura do Geodatalake **para que** o sistema esteja sempre operacional. | Painel exibe saúde de portal, APIs, GeoDataLake e Airflow, com consumo de recursos e alerta em caso de indisponibilidade. | :white_square_button: |

---

## Resumo por Sprint

| Sprint | Objetivo por Sprint |
|---|---|
| Sprint 1 | Fluxo ponta a ponta mínimo funcionando: cadastro de fonte/conjunto, upload de arquivo com hash na zona bruta, validação básica com envio à quarentena, tratamento simplificado (gravação na zona tratada, sem reprojeção geoespacial ainda), criação e aprovação de versão, publicação e consulta básica via API retornando o dado publicado. Dá pra demonstrar um dado entrando no sistema e saindo publicado, de ponta a ponta. |
| Sprint 2 | Pipeline de qualidade e cálculo dos indicadores: integração da biblioteca geoespacial (GDAL/GeoTools) e reprojeção real das geometrias, validações avançadas na quarentena (duplicidade/geometria) e reprocessamento, tratamento completo (dissolução de geometrias, rastreabilidade), cálculo de todos os indicadores ambientais (ICV, IRL, IAPP, ISAP, IAE, IDesmat, IFC), qualidade e comparação de versões, e melhorias no upload (métricas, preview, identificação de usuário). Dá pra demonstrar os indicadores sendo calculados de verdade a partir dos dados tratados. |
| Sprint 3 | Produto pronto para homologação: orquestração via Airflow, tela de consulta pública (mapa, tabela, gráficos, exportação) e otimização de performance, auditoria completa, gestão de usuários/perfis de acesso, monitoramento de infraestrutura e documentação técnica. Dá pra demonstrar o sistema completo, seguro e monitorado, com o consumidor final acessando os indicadores. |
