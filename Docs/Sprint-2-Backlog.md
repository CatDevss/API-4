<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<h1 align="center">⌞ Backlog — Sprint 2 ⌝</h1>

<p align="center">
  <strong>Projeto:</strong> GeoRural DataHub — Visiona Tecnologia Espacial
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Qtd._Tarefas-35-2D2D2D?style=for-the-badge&logoColor=white" alt="Qtd. Tarefas" />
  <img src="https://img.shields.io/badge/Pontos-73-FE5000?style=for-the-badge&logoColor=white" alt="Pontos" />
</p>

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<h2 align="center"><img src="https://api.iconify.design/tabler/target-arrow.svg?color=%23FFFFFF" width="20" /> Objetivo da Sprint</h2>

<br>

Pipeline de qualidade e cálculo dos indicadores: integração da biblioteca geoespacial (GDAL/GeoTools) e
reprojeção real das geometrias, validações avançadas na quarentena (duplicidade/geometria) e reprocessamento,
tratamento completo (dissolução de geometrias, rastreabilidade), cálculo de todos os indicadores ambientais
(ICV, IRL, IAPP, ISAP, IAE, IDesmat, IFC), qualidade e comparação de versões, e melhorias no upload (métricas,
preview, identificação de usuário). Dá pra demonstrar os indicadores sendo calculados de verdade a partir dos
dados tratados.

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<h2 align="center"><img src="https://api.iconify.design/tabler/list-details.svg?color=%23FFFFFF" width="20" /> User Stories Envolvidas</h2>

<br>

| ID | Prioridade | História de Usuário | Critério de Aceite |
|:---:|:---:|---|---|
| US2 | ![Alta](https://img.shields.io/badge/Alta-FE5000?style=flat-square&logoColor=white) | Como Operador de Dados quero realizar a ingestão na zona bruta para que tenha os dados brutos armazenados | Arquivo salvo na zona bruta com hash (SHA-256), data/hora e usuário registrados; formatos não suportados são rejeitados. |
| US3 | ![Alta](https://img.shields.io/badge/Alta-FE5000?style=flat-square&logoColor=white) | Como Operador de Dados quero validar os dados ingeridos e enviar os registros inconsistentes à quarentena para que apenas dados íntegros sigam para o tratamento | Registros inválidos (campos, tipos, duplicidades, geometrias) vão para quarentena com motivo registrado; válidos seguem para tratamento. |
| US4 | ![Alta](https://img.shields.io/badge/Alta-FE5000?style=flat-square&logoColor=white) | Como Operador de Dados quero tratar e padronizar os dados validados seguindo as regras do GeoDataLake para que estejam prontos para o cruzamento geoespacial | Dados tratados e padronizados conforme regras do GeoDataLake, com transformações aplicadas registradas para rastreabilidade. |
| US5 | ![Alta](https://img.shields.io/badge/Alta-FE5000?style=flat-square&logoColor=white) | Como Analista quero realizar o cruzamento dos dados geoespaciais e calcular para formular relatórios | Indicadores (ICV, IRL, IAPP, ISAP, IAE, IDesmat, IFC) calculados por imóvel, APP, RL e município a partir dos dados tratados. |
| US6 | ![Alta](https://img.shields.io/badge/Alta-FE5000?style=flat-square&logoColor=white) | Como Gestor quero avaliar a qualidade e versionamento imutável dos dados depurados para que sejam considerados consistentes | Versão aprovada é registrada como imutável (hash, fonte, competência, parâmetros, regras); métricas de qualidade visíveis antes da aprovação. |

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<p align="center">
  <sub>Documento do projeto <strong>GeoRural DataHub</strong>, desenvolvido para a <strong>Visiona Tecnologia Espacial</strong>.</sub>
</p>
