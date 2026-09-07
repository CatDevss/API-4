<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<p align="center">
  <img src="Docs/assets/Banner_Visiona.jpg" alt="Banner" width="900">
</p>

<h1 align="center">⌞ GeoRural DataHub ⌝</h1>

<p align="center">
  Plataforma de dados de imóveis rurais com controle de qualidade e rastreabilidade dos indicadores ambientais,
  desenvolvida em parceria com a <strong>Visiona Tecnologia Espacial</strong>.
</p>

<p align="center">
  <sub>Aprendizagem por Projetos Integrados · 2026-2 &nbsp;|&nbsp; 4º Semestre — Banco de Dados &nbsp;|&nbsp; FATEC São José dos Campos</sub>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/status-em%20desenvolvimento-FE5000?style=for-the-badge&logoColor=white" alt="status" />
  <img src="https://img.shields.io/badge/licença-a%20definir-2D2D2D?style=for-the-badge&logoColor=white" alt="licença" />
</p>

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<h2 align="center"><img src="https://api.iconify.design/tabler/list-details.svg?color=%232D2D2D" width="20" /> Sumário</h2>

<br>

- [Sobre a Visiona](#-sobre-a-visiona)
- [O Desafio](#-o-desafio)
- [Área de Interesse](#-área-de-interesse)
- [Objetivo e Fluxo Mínimo](#-objetivo-e-fluxo-mínimo)
- [Escopo e Requisitos Funcionais](#-escopo-e-requisitos-funcionais)
- [Indicadores Ambientais](#-indicadores-ambientais)
- [Dados Necessários e Fontes](#-dados-necessários-e-fontes)
- [Requisitos Não Funcionais](#-requisitos-não-funcionais)
- [Entrega Esperada e Critério de Sucesso](#-entrega-esperada-e-critério-de-sucesso)
- [Backlog do Produto](#-backlog-do-produto)
- [Cronograma das Sprints](#-cronograma-das-sprints)
- [Tecnologias Utilizadas](#-tecnologias-utilizadas)
- [Como Executar o Projeto](#-como-executar-o-projeto)
- [Documentação](#-documentação)
- [Paleta de Cores do Projeto](#-paleta-de-cores-do-projeto)
- [Equipe](#-equipe)

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<h2 align="center"><img src="https://api.iconify.design/tabler/building-broadcast-tower.svg?color=%232D2D2D" width="20" /> Sobre a Visiona</h2>

<br>

A **Visiona** atua em projetos que utilizam informações territoriais, ambientais e geoespaciais para apoiar
processos de análise, planejamento e tomada de decisão, atendendo instituições públicas, empresas privadas,
pesquisadores e analistas.

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<h2 align="center"><img src="https://api.iconify.design/tabler/target-arrow.svg?color=%232D2D2D" width="20" /> O Desafio</h2>

<br>

Indicadores ambientais de imóveis rurais são produzidos a partir de dados de fontes, competências e versões
diferentes — sem gestão centralizada, o resultado não é auditável.

<br>

<div align="center">

<table>
  <tr>
    <td align="center" width="50%">
      <img width="60" height="3" src="https://placehold.co/60x3/FE5000/FE5000.png"/>
      <br><strong>CONTEXTO</strong><br><br>
      <sub>
      <img src="https://api.iconify.design/tabler/map-2.svg?color=%232D2D2D" width="16" /> <strong>Dados de imóveis rurais, APP e RL</strong> — limites vetoriais, uso e cobertura do solo e atributos cadastrais alimentam os indicadores<br><br>
      <img src="https://api.iconify.design/tabler/stack-2.svg?color=%232D2D2D" width="16" /> <strong>Múltiplas fontes, formatos e versões</strong> — cada origem tem competência, esquema e sistema de referência próprios<br><br>
      <img src="https://api.iconify.design/tabler/chart-bar.svg?color=%232D2D2D" width="16" /> <strong>Decisões dependem desses números</strong> — órgãos públicos e empresas usam os indicadores para planejar, fiscalizar e conceder crédito
      </sub>
    </td>
    <td align="center" width="50%">
      <img width="60" height="3" src="https://placehold.co/60x3/FFA300/FFA300.png"/>
      <br><strong>O PROBLEMA A RESOLVER</strong><br><br>
      <sub>
      <img src="https://api.iconify.design/tabler/refresh.svg?color=%232D2D2D" width="16" /> Qual versão entrou no cálculo?<br><br>
      <img src="https://api.iconify.design/tabler/shield-x.svg?color=%232D2D2D" width="16" /> Quais registros foram rejeitados e por quê?<br><br>
      <img src="https://api.iconify.design/tabler/arrows-transfer-up.svg?color=%232D2D2D" width="16" /> O que foi transformado no caminho?<br><br>
      <img src="https://api.iconify.design/tabler/history.svg?color=%232D2D2D" width="16" /> O resultado pode ser reconstituído?
      </sub>
    </td>
  </tr>
</table>

</div>

<br>

> *Sem rastreabilidade, o indicador publicado não pode ser explicado nem reproduzido.*

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<h2 align="center"><img src="https://api.iconify.design/tabler/map-pin.svg?color=%232D2D2D" width="20" /> Área de Interesse</h2>

<br>

Todo o recorte do desafio é o território paranaense: as camadas nacionais são cortadas pelo limite do estado
antes do processamento.

<br>

<div align="center">

| Recorte territorial | 399 municípios | ~199 mil km² | Bioma predominante |
| :---: | :---: | :---: | :---: |
| Camadas nacionais cortadas pelo limite estadual antes de qualquer cálculo | Unidade de consolidação dos indicadores e chave de agregação dos resultados | Extensão que dimensiona a massa de homologação e o custo de processamento na nuvem | Mata Atlântica — fora da Amazônia Legal, mínimo de Reserva Legal de 20% (parâmetro do indicador IRL) |

</div>

<br>

> *A massa de homologação pode cobrir apenas alguns municípios, desde que o fluxo completo seja demonstrado de ponta a ponta.*

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<h2 align="center"><img src="https://api.iconify.design/tabler/route.svg?color=%232D2D2D" width="20" /> Objetivo e Fluxo Mínimo</h2>

<br>

Construir, implantar e demonstrar em nuvem um MVP que percorra todo o ciclo de vida do dado — do recebimento
ao indicador publicado e rastreável.

**Objetivo do produto:**

- [ ] **MVP em nuvem** — implantado na Oracle Cloud, com componentes operacionais;
- [ ] **GeoDataLake acadêmico** — zonas bruta, tratada, publicada e quarentena sobre armazenamento de objetos;
- [ ] **Indicadores calculados pela solução** — cruzamentos e cálculos por imóvel, APP, RL e município;
- [ ] **Rastreabilidade ponta a ponta** — do resultado até os dados, os parâmetros e a regra aplicada.

<br>

**Fluxo mínimo a ser demonstrado:**

<div align="center">

| # | Etapa | # | Etapa |
| :---: | --- | :---: | --- |
| 1 | Cadastro da fonte e do conjunto | 2 | Ingestão na zona bruta (arquivo + hash) |
| 3 | Validação e envio à quarentena | 4 | Tratamento e padronização |
| 5 | Cruzamento geoespacial e cálculo | 6 | Qualidade e versionamento imutável |
| 7 | Publicação da versão | 8 | Consumo por portal e API |

</div>

<br>

**Zonas do GeoDataLake:** `Bruta` → `Tratada` → `Publicada` · `Quarentena`

> *Cada etapa registra status, métricas de qualidade, erros e reprocessamentos.*

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<h2 align="center"><img src="https://api.iconify.design/tabler/list-check.svg?color=%232D2D2D" width="20" /> Escopo e Requisitos Funcionais</h2>

<br>

Escopo funcional mínimo do MVP — tudo disponível pelo portal e pelas APIs, sob controle de acesso.

<br>

<div align="center">

| Requisito | Descrição |
| --- | --- |
| <img src="https://api.iconify.design/tabler/key.svg?color=%232D2D2D" width="16" /> Acesso autenticado por perfil | Administrador, operador de dados, analista, gestor e auditor |
| <img src="https://api.iconify.design/tabler/folders.svg?color=%232D2D2D" width="16" /> Catálogo de fontes e conjuntos | Esquema, sistema de referência, competência, cobertura e versão vigente |
| <img src="https://api.iconify.design/tabler/upload.svg?color=%232D2D2D" width="16" /> Ingestão de dados | CSV, JSON e GeoJSON por upload ou API |
| <img src="https://api.iconify.design/tabler/refresh.svg?color=%232D2D2D" width="16" /> Pipelines no Apache Airflow | Recebimento, validação, tratamento, cálculo, qualidade e publicação |
| <img src="https://api.iconify.design/tabler/shield-check.svg?color=%232D2D2D" width="16" /> Qualidade e quarentena | Campos, tipos, domínios, duplicidades, áreas, coordenadas e geometrias |
| <img src="https://api.iconify.design/tabler/stack-2.svg?color=%232D2D2D" width="16" /> Versões imutáveis e comparação | Versão vigente e anteriores, com linhagem até a fonte e a regra |
| <img src="https://api.iconify.design/tabler/world.svg?color=%232D2D2D" width="16" /> Portal web | Mapa, tabela, gráficos, downloads e painel de execuções do Airflow |
| <img src="https://api.iconify.design/tabler/plug.svg?color=%232D2D2D" width="16" /> APIs REST | Catálogo, dados, indicadores, versões, qualidade, linhagem e status |
| <img src="https://api.iconify.design/tabler/leaf.svg?color=%232D2D2D" width="16" /> Cálculo analítico próprio | Interseções e agregações por imóvel, APP, RL e município |
| <img src="https://api.iconify.design/tabler/user-check.svg?color=%232D2D2D" width="16" /> Auditoria completa | Uploads, regras, execuções, publicações, downloads e responsáveis |

</div>

<br>

> *Os cruzamentos e as agregações são executados pela própria solução, sobre dados vetoriais simplificados.*

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<h2 align="center"><img src="https://api.iconify.design/tabler/leaf.svg?color=%232D2D2D" width="20" /> Indicadores Ambientais</h2>

<br>

Sete indicadores simples, calculados pela própria solução a partir do imóvel, da APP, da RL e das demais
camadas do catálogo. Cada indicador é rastreável até a fonte, a versão dos dados e a regra de cálculo aplicada.

<br>

<div align="center">

| Indicador | O que mede |
| --- | --- |
| **ICV** · Cobertura vegetal nativa | Área de vegetação nativa ÷ área do imóvel, em % e em hectares |
| **IRL** · Reserva Legal | Área de RL ÷ área do imóvel, comparada ao mínimo do bioma; déficit ou excedente em hectares |
| **IAPP** · APP conservada | Área de APP com vegetação nativa ÷ APP total do imóvel; passivo a recuperar em hectares |
| **ISAP** · Áreas protegidas | Sobreposição do imóvel com unidades de conservação, terras indígenas, quilombolas e florestas públicas |
| **IAE** · Área embargada | Sobreposição do imóvel com os embargos ambientais federais, em % e em hectares |
| **IDesmat** · Desmatamento | Área (ha) e % de sobreposição do imóvel com a supressão a partir de 22/07/2008, 31/07/2019 e 31/12/2020 |
| **IFC** · Focos de calor | Focos detectados dentro do imóvel ÷ área do imóvel × 1.000 hectares |

</div>

<br>

> *Regras de cálculo: áreas em projeção equivalente, geometrias validadas e dissolvidas, totais consistentes e agregação por município.*

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<h2 align="center"><img src="https://api.iconify.design/tabler/database.svg?color=%232D2D2D" width="20" /> Dados Necessários e Fontes</h2>

<br>

Camadas de entrada que a solução precisa ingerir para calcular os sete indicadores.

<br>

<div align="center">

| Dado necessário | Fonte | Abrangência | Formatos de origem | Indicadores |
| --- | :---: | :---: | --- | :---: |
| Imóvel rural (perímetro) | CAR | Nacional | .shp, .gpkg | Todos |
| APP declarada | CAR | Nacional | .shp, .geojson | IAPP, ICV |
| Reserva Legal declarada | CAR | Nacional | .shp, .geojson | IRL |
| Vegetação nativa | CAR | Nacional | .tif, .shp | ICV, IAPP |
| Limites de biomas | IBGE | Nacional | .shp | IRL |
| Áreas protegidas e territórios especiais | ICMBio, MMA, FUNAI, INCRA, SFB | Nacional | .shp | ISAP |
| Embargos ambientais | IBAMA, ICMBio | Nacional | .shp, .csv | IAE |
| Desmatamento | INPE (PRODES) | Por bioma, anual | .shp, .geojson | IDesmat |
| Focos de calor | INPE (Queimadas) | Nacional, diário | .csv, .shp | IFC |
| Malha municipal | IBGE | Nacional | .shp | Agregação |

</div>

<br>

> *O arquivo original de cada fonte é preservado na zona bruta com hash e metadados; as camadas são reprojetadas para projeção equivalente antes do cálculo de área.*

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<h2 align="center"><img src="https://api.iconify.design/tabler/settings.svg?color=%232D2D2D" width="20" /> Requisitos Não Funcionais</h2>

<br>

Tecnologias do semestre e atributos de qualidade que serão avaliados no projeto.

<br>

<div align="center">

| Requisito | Descrição |
| --- | --- |
| <img src="https://api.iconify.design/tabler/device-mobile.svg?color=%232D2D2D" width="16" /> Stack da aplicação | Java com Spring Boot, APIs REST, JPA/Hibernate e Spring Security; Vue.js com Axios, Leaflet e biblioteca de gráficos |
| <img src="https://api.iconify.design/tabler/database.svg?color=%232D2D2D" width="16" /> Núcleo relacional Oracle | Transações, constraints, índices, views e rotinas PL/SQL, com conexão segura ao ambiente de nuvem |
| <img src="https://api.iconify.design/tabler/cloud.svg?color=%232D2D2D" width="16" /> GeoDataLake e orquestração em nuvem | Armazenamento de objetos nas quatro zonas e DAGs do Airflow em serviço gerenciado ou container equivalente |
| <img src="https://api.iconify.design/tabler/stack-2.svg?color=%232D2D2D" width="16" /> Versões imutáveis e reprodutíveis | Identificadas por hash, fonte, competência, execução, parâmetros, regras e transformações aplicadas |
| <img src="https://api.iconify.design/tabler/shield-lock.svg?color=%232D2D2D" width="16" /> Segurança e menor privilégio | Autenticação e autorização por perfil em telas, APIs e downloads; segredos fora do código; dados sintéticos ou anonimizados |
| <img src="https://api.iconify.design/tabler/bolt.svg?color=%232D2D2D" width="16" /> Desempenho e disponibilidade | Consultas usuais em até 3 segundos na massa de homologação, com logs, estado de saúde e consumo de recursos visíveis |
| <img src="https://api.iconify.design/tabler/file-text.svg?color=%232D2D2D" width="16" /> Documentação e testes | Arquitetura, modelo e dicionário de dados, OpenAPI/Swagger, DAGs e memória de cálculo; testes de unidade, integração e pipeline |
| <img src="https://api.iconify.design/tabler/rocket.svg?color=%232D2D2D" width="16" /> Ambiente de nuvem | Portal, APIs, GeoDataLake e Airflow implantados e acessíveis durante a avaliação, na **Oracle Cloud** |

</div>

<br>

> *As tecnologias ensinadas no semestre são requisitos não funcionais avaliados.*

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<h2 align="center"><img src="https://api.iconify.design/tabler/flag.svg?color=%232D2D2D" width="20" /> Entrega Esperada e Critério de Sucesso</h2>

<br>

O que deve ser entregue ao final do semestre e como o MVP será considerado bem-sucedido.

<br>

<div align="center">

<table>
  <tr>
    <td align="center" width="50%">
      <img width="60" height="3" src="https://placehold.co/60x3/FE5000/FE5000.png"/>
      <br><strong>ENTREGAS PRINCIPAIS</strong><br><br>
      <sub>
      <img src="https://api.iconify.design/tabler/chart-bar.svg?color=%232D2D2D" width="16" /> <strong>Aplicação web em nuvem</strong> — catálogo, mapas, tabelas, gráficos, comparação de versões, downloads e painel do Airflow<br><br>
      <img src="https://api.iconify.design/tabler/stack-2.svg?color=%232D2D2D" width="16" /> <strong>Plataforma de dados integrada</strong> — Oracle, GeoDataLake, DAGs, APIs documentadas, cálculo analítico, fila de rejeitados, versionamento, qualidade, linhagem e auditoria<br><br>
      <img src="https://api.iconify.design/tabler/file-text.svg?color=%232D2D2D" width="16" /> <strong>Documentação e testes</strong> — código-fonte, modelo e dicionário de dados, scripts PL/SQL, memória de cálculo, arquitetura, manuais e relatório técnico<br><br>
      <img src="https://api.iconify.design/tabler/flag-check.svg?color=%232D2D2D" width="16" /> <strong>Demonstração do fluxo completo</strong> — da ingestão do arquivo até o resultado publicado e consultado
      </sub>
    </td>
    <td align="center" width="50%">
      <img width="60" height="3" src="https://placehold.co/60x3/FFA300/FFA300.png"/>
      <br><strong>CRITÉRIO DE SUCESSO DO MVP</strong><br><br>
      <sub>
      <img src="https://api.iconify.design/tabler/circle-check.svg?color=%232D2D2D" width="16" /> Cadastrar uma fonte, ingerir um conjunto e acompanhar as etapas no Airflow<br><br>
      <img src="https://api.iconify.design/tabler/circle-check.svg?color=%232D2D2D" width="16" /> Consultar as rejeições e executar os cruzamentos e os cálculos analíticos<br><br>
      <img src="https://api.iconify.design/tabler/circle-check.svg?color=%232D2D2D" width="16" /> Validar e publicar uma versão imutável dos resultados<br><br>
      <img src="https://api.iconify.design/tabler/circle-check.svg?color=%232D2D2D" width="16" /> Acessar a versão por API e pelo portal, com indicadores em mapa, tabela e gráficos<br><br>
      <img src="https://api.iconify.design/tabler/circle-check.svg?color=%232D2D2D" width="16" /> Comparar versões e rastrear um resultado até a fonte, a execução e a regra aplicada
      </sub>
    </td>
  </tr>
</table>

</div>

<br>

> *Todos os componentes principais implantados e operacionais em ambiente de nuvem — Oracle Cloud.*

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<h2 align="center"><img src="https://api.iconify.design/tabler/clipboard-list.svg?color=%232D2D2D" width="20" /> Backlog do Produto</h2>

<br>

<p align="center">
  <a href="https://github.com/CatDevss/API-4/blob/main/Docs/ProductBacklog.md">
    <img src="https://img.shields.io/badge/BACKLOG_DO_PRODUTO-2D2D2D?style=for-the-badge&logoColor=white" alt="Backlog do Produto" />
  </a>
</p>

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<h2 align="center"><img src="https://api.iconify.design/tabler/calendar-time.svg?color=%232D2D2D" width="20" /> Cronograma das Sprints</h2>

<br>

<div align="center">

| Sprint | Período | Link documentação | Vídeo/Demo |
| :---: | :---: | :---: | :---: |
| Sprint 1 | 07/09 - 27/09 | [Docs Sprint 1](https://github.com/CatDevss/API-4/blob/main/Docs/Sprint-1-Backlog.md) | [Demo](#) |
| Sprint 2 | 05/10 - 25/09 | [Docs Sprint 2](https://github.com/CatDevss/API-4/blob/main/Docs/Sprint-2-Backlog.md) | [Demo](#) |
| Sprint 3 | 02/11 - 22/11 | [Docs Sprint 3](https://github.com/CatDevss/API-4/blob/main/Docs/Sprint-3-Backlog.md) | [Demo](#) |
| Entrega Final | 03/12/2026 | — | — |

</div>

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<h2 align="center"><img src="https://api.iconify.design/tabler/code.svg?color=%232D2D2D" width="20" /> Tecnologias Usadas</h2>

<br>

<div align="center">

<table>
  <tr>
    <td align="center" width="50%">
      <img width="60" height="3" src="https://placehold.co/60x3/FE5000/FE5000.png"/>
      <br><strong>BACKEND</strong><br><br>
      <img src="https://img.shields.io/badge/Java-FE5000?style=for-the-badge&logo=openjdk&logoColor=white" /><br>
      <img src="https://img.shields.io/badge/Spring_Boot-FE5000?style=for-the-badge&logo=springboot&logoColor=white" /><br>
      <img src="https://img.shields.io/badge/Spring_Security-FE5000?style=for-the-badge&logo=springsecurity&logoColor=white" /><br>
      <img src="https://img.shields.io/badge/Hibernate_/_JPA-FE5000?style=for-the-badge&logo=hibernate&logoColor=white" /><br>
      <img src="https://img.shields.io/badge/Maven-FE5000?style=for-the-badge&logo=apachemaven&logoColor=white" />
    </td>
    <td align="center" width="50%">
      <img width="60" height="3" src="https://placehold.co/60x3/FFA300/FFA300.png"/>
      <br><strong>BANCO DE DADOS</strong><br><br>
      <img src="https://img.shields.io/badge/Oracle_Database-FFA300?style=for-the-badge&logo=oracle&logoColor=2D2D2D" /><br>
      <img src="https://img.shields.io/badge/PL/SQL-FFA300?style=for-the-badge&logo=oracle&logoColor=2D2D2D" />
    </td>
  </tr>
  <tr>
    <td align="center" width="50%">
      <img width="60" height="3" src="https://placehold.co/60x3/2D2D2D/2D2D2D.png"/>
      <br><strong>FRONTEND</strong><br><br>
      <img src="https://img.shields.io/badge/Vue.js-2D2D2D?style=for-the-badge&logo=vuedotjs&logoColor=FFA300" /><br>
      <img src="https://img.shields.io/badge/Axios-2D2D2D?style=for-the-badge&logo=axios&logoColor=FFA300" /><br>
      <img src="https://img.shields.io/badge/Leaflet-2D2D2D?style=for-the-badge&logo=leaflet&logoColor=FFA300" /><br>
      <img src="https://img.shields.io/badge/Chart.js-2D2D2D?style=for-the-badge&logo=chartdotjs&logoColor=FFA300" />
    </td>
    <td align="center" width="50%">
      <img width="60" height="3" src="https://placehold.co/60x3/808080/808080.png"/>
      <br><strong>DADOS & NUVEM</strong><br><br>
      <img src="https://img.shields.io/badge/Apache_Airflow-808080?style=for-the-badge&logo=apacheairflow&logoColor=white" /><br>
      <img src="https://img.shields.io/badge/Oracle_Cloud-808080?style=for-the-badge&logo=oracle&logoColor=white" /><br>
      <img src="https://img.shields.io/badge/GeoJSON-808080?style=for-the-badge&logo=geopandas&logoColor=white" />
    </td>
  </tr>
  <tr>
    <td align="center" width="50%" colspan="2">
      <img width="60" height="3" src="https://placehold.co/60x3/FE5000/FE5000.png"/>
      <br><strong>FERRAMENTAS & GESTÃO</strong><br><br>
      <img src="https://img.shields.io/badge/GitHub-FE5000?style=for-the-badge&logo=github&logoColor=white" />
      <img src="https://img.shields.io/badge/GitHub_Projects-FE5000?style=for-the-badge&logo=github&logoColor=white" />
      <img src="https://img.shields.io/badge/Figma-FE5000?style=for-the-badge&logo=figma&logoColor=white" />
      <img src="https://img.shields.io/badge/Discord-FE5000?style=for-the-badge&logo=discord&logoColor=white" />
      <img src="https://img.shields.io/badge/Swagger_/_OpenAPI-FE5000?style=for-the-badge&logo=swagger&logoColor=white" />
    </td>
  </tr>
</table>

</div>

<br>

<p align="center"><sub><em>Stack definida com base nos requisitos não funcionais do desafio — sujeita a ajustes conforme a equipe avançar.</em></sub></p>

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<h2 align="center"><img src="https://api.iconify.design/tabler/terminal-2.svg?color=%232D2D2D" width="20" /> Como Executar o Projeto</h2>

<br>

```bash
# Clonar o repositório
git clone https://github.com/<organizacao>/<repositorio>.git

# Acessar a pasta do projeto
cd <repositorio>

# Configurar variáveis de ambiente (conexão Oracle, credenciais, etc.)
cp .env.example .env

# Instalar dependências / build do backend
# (completar com o comando, ex: ./mvnw clean install)

# Instalar dependências do frontend
# (completar com o comando, ex: npm install)

# Executar a aplicação
# (completar com o comando de execução)
```

> *Detalhar aqui os pré-requisitos (versão do Java, Oracle Database/Oracle Cloud, Node.js, Apache Airflow etc.)
> e o passo a passo completo assim que o ambiente for definido — recomenda-se manter um `Manual de Instalação`
> na pasta `docs/`.*

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<h2 align="center"><img src="https://api.iconify.design/tabler/file-text.svg?color=%232D2D2D" width="20" /> Documentação</h2>

<br>

<div align="center">

| Documento | Link |
| --- | :---: |
| Definition of Ready (DoR) e Definition of Done (DoD) | [Acessar](https://github.com/CatDevss/API-4/blob/main/Docs/DoD_DoR.md) |
| Estratégia de Branch e Pull Request | [Acessar](https://github.com/CatDevss/API-4/blob/main/Docs/Branch_Strategy.md) |
| Padrão de Commits | [Acessar](https://github.com/CatDevss/API-4/blob/main/Docs/Padrao-de-Commits.md) |
| Manual de Instalação | [Acessar](#) |
| Modelo e Dicionário de Dados (Oracle) | [Acessar](#) |
| Arquitetura e DAGs do Airflow | [Acessar](#) |
| Documentação da API (OpenAPI/Swagger) | [Acessar](#) |
| Manual do Usuário | [Acessar](#) |
| Critérios de Aceitação | [Acessar](#) |

</div>

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<h2 align="center"><img src="https://api.iconify.design/tabler/palette.svg?color=%232D2D2D" width="20" /> Paleta de Cores do Projeto</h2>

<br>

<div align="center">

| Cor | Código | Exemplos de uso |
| :---: | :---: | --- |
| ![#FE5000](https://placehold.co/40x20/FE5000/FE5000.png) | `#FE5000` | Logotipo, botões e links principais |
| ![#FFA300](https://placehold.co/40x20/FFA300/FFA300.png) | `#FFA300` | Detalhes, pequenos elementos, gradientes, ícones ou estados de interação |
| ![#2D2D2D](https://placehold.co/40x20/2D2D2D/2D2D2D.png) | `#2D2D2D` | Base escura, fundos e elementos estruturais |
| ![#808080](https://placehold.co/40x20/808080/808080.png) | `#808080` | Legendas e placeholders |

</div>

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<h2 align="center"><img src="https://api.iconify.design/tabler/users.svg?color=%232D2D2D" width="20" /> Equipe</h2>

<br>

<div align="center">

| Foto | Nome | Função | GitHub | LinkedIn |
| :---: | --- | --- | :---: | :---: |
| <img src="https://via.placeholder.com/60/2D2D2D/FFFFFF?text=%20" width="60" /> | João Pedro Menegasso | Scrum Master | [![GitHub](https://img.shields.io/badge/GitHub-000000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/menegasso0) | [![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/joaopedromenegasso/) |
| <img src="https://via.placeholder.com/60/2D2D2D/FFFFFF?text=%20" width="60" /> | Pedro Henrique Quirino | Product Owner | [![GitHub](https://img.shields.io/badge/GitHub-000000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/pedroquirino) | [![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/phpquirino/) |
| <img src="https://via.placeholder.com/60/2D2D2D/FFFFFF?text=%20" width="60" /> | Giovanna Marques | Desenvolvedora | [![GitHub](https://img.shields.io/badge/GitHub-000000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/Markeis24) | [![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/giovanna-marques-221998397) |
| <img src="https://via.placeholder.com/60/2D2D2D/FFFFFF?text=%20" width="60" /> | José Wesley | Desenvolvedor | [![GitHub](https://img.shields.io/badge/GitHub-000000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/jwesleey) | [![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/jwesley) |

</div>

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<p align="center">
  <sub>Projeto GeoRural DataHub, desenvolvido para a <strong>Visiona Tecnologia Espacial</strong> — Governança e Rastreabilidade de Dados Geoespaciais.</sub>
</p>
