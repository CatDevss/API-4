<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<h1 align="center">⌞ Backlog — Sprint 1 ⌝</h1>

<p align="center">
  <strong>Projeto:</strong> GeoRural DataHub — Visiona Tecnologia Espacial
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Qtd._Tarefas-36-2D2D2D?style=for-the-badge&logoColor=white" alt="Qtd. Tarefas" />
  <img src="https://img.shields.io/badge/Pontos-64-FE5000?style=for-the-badge&logoColor=white" alt="Pontos" />
</p>

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<h2 align="center"><img src="https://api.iconify.design/tabler/target-arrow.svg?color=%23FFFFFF" width="20" /> Objetivo da Sprint</h2>

<br>

Fluxo ponta a ponta mínimo funcionando: cadastro de fonte/conjunto, upload de arquivo com hash na zona bruta,
validação básica com envio à quarentena, tratamento simplificado (gravação na zona tratada, sem reprojeção
geoespacial ainda), criação e aprovação de versão, publicação e consulta básica via API retornando o dado
publicado. Dá pra demonstrar um dado entrando no sistema e saindo publicado, de ponta a ponta.

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<h2 align="center"><img src="https://api.iconify.design/tabler/list-details.svg?color=%23FFFFFF" width="20" /> User Stories Envolvidas</h2>

<br>

| ID | Prioridade | História de Usuário | Critério de Aceite |
|:---:|:---:|---|---|
| US1 | ![Alta](https://img.shields.io/badge/Alta-FE5000?style=flat-square&logoColor=white) | Como Operador de Dados quero cadastrar as fontes para que seja possível realizar a validação dos mesmos | Fonte e conjunto cadastrados com campos obrigatórios preenchidos; sistema bloqueia cadastro incompleto. |
| US2 | ![Alta](https://img.shields.io/badge/Alta-FE5000?style=flat-square&logoColor=white) | Como Operador de Dados quero realizar a ingestão na zona bruta para que tenha os dados brutos armazenados | Arquivo salvo na zona bruta com hash (SHA-256), data/hora e usuário registrados; formatos não suportados são rejeitados. |
| US3 | ![Alta](https://img.shields.io/badge/Alta-FE5000?style=flat-square&logoColor=white) | Como Operador de Dados quero validar os dados ingeridos e enviar os registros inconsistentes à quarentena para que apenas dados íntegros sigam para o tratamento | Registros inválidos (campos, tipos, duplicidades, geometrias) vão para quarentena com motivo registrado; válidos seguem para tratamento. |
| US4 | ![Alta](https://img.shields.io/badge/Alta-FE5000?style=flat-square&logoColor=white) | Como Operador de Dados quero tratar e padronizar os dados validados seguindo as regras do GeoDataLake para que estejam prontos para o cruzamento geoespacial | Dados tratados e padronizados conforme regras do GeoDataLake, com transformações aplicadas registradas para rastreabilidade. |
| US6 | ![Alta](https://img.shields.io/badge/Alta-FE5000?style=flat-square&logoColor=white) | Como Gestor quero avaliar a qualidade e versionamento imutável dos dados depurados para que sejam considerados consistentes | Versão aprovada é registrada como imutável (hash, fonte, competência, parâmetros, regras); métricas de qualidade visíveis antes da aprovação. |
| US7 | ![Alta](https://img.shields.io/badge/Alta-FE5000?style=flat-square&logoColor=white) | Como Gestor quero realizar a publicação das versões para que seja possível realizar as tomadas de decisões | Versão aprovada publicada como vigente, disponível via portal e API; versões anteriores continuam acessíveis. |
| US11 | ![Alta](https://img.shields.io/badge/Alta-FE5000?style=flat-square&logoColor=white) | Como Consumidor de Dados quero acessar os indicadores publicados via portal e via API para que eu possa utilizá-los em minhas análises e decisões | Indicadores publicados acessíveis via portal (mapa, tabela, gráficos) e API, com resposta em até 3s na massa de homologação. |

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<p align="center">
  <sub>Documento do projeto <strong>GeoRural DataHub</strong>, desenvolvido para a <strong>Visiona Tecnologia Espacial</strong>.</sub>
</p>
