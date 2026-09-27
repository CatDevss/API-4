<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<h1 align="center">⌞ Backlog do Produto ⌝</h1>

<p align="center">
  Product Backlog, critérios de aceite e Sprint Backlog do <strong>GeoRural DataHub</strong>.
</p>

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<h2 align="center"><img src="https://api.iconify.design/tabler/list-details.svg?color=%23FFFFFF" width="20" /> Product Backlog</h2>

<br>

| Rank | ID | Prioridade | User Story | Estimativa | Sprint |
|:---:|:---:|:---:|---|:---:|:---:|
| 1 | US1 | ![Alta](https://img.shields.io/badge/Alta-FE5000?style=flat-square&logoColor=white) | Como Gestor, quero cadastrar as fontes de dados, para que o Operador possa criar conjuntos a partir delas. | 8 | 1 |
| 2 | US2 | ![Alta](https://img.shields.io/badge/Alta-FE5000?style=flat-square&logoColor=white) | Como Operador de Dados, quero criar conjuntos e enviar os arquivos de dados para o sistema, para que fiquem guardados com segurança antes de serem tratados. | 21 | 1 |
| 3 | US3 | ![Alta](https://img.shields.io/badge/Alta-FE5000?style=flat-square&logoColor=white) | Como Operador de Dados, quero verificar se os dados enviados estão corretos e separar os que têm problema, para que só sigam adiante informações confiáveis. | 13 | 2 |
| 4 | US4 | ![Alta](https://img.shields.io/badge/Alta-FE5000?style=flat-square&logoColor=white) | Como Operador de Dados, quero organizar e padronizar os dados já verificados, para que fiquem prontos para serem cruzados com outras informações. | 21 | 2 |
| 5 | US5 | ![Alta](https://img.shields.io/badge/Alta-FE5000?style=flat-square&logoColor=white) | Como Analista, quero cruzar as informações de diferentes fontes e calcular os indicadores ambientais, para que consiga montar relatórios. | 34 | 2 |
| 6 | US6 | ![Alta](https://img.shields.io/badge/Alta-FE5000?style=flat-square&logoColor=white) | Como Gestor, quero conferir a qualidade dos dados antes de aprová-los e guardar cada versão aprovada sem permitir alterações depois, para que os dados aprovados sejam sempre confiáveis. | 21 | 2 |
| 7 | US7 | ![Alta](https://img.shields.io/badge/Alta-FE5000?style=flat-square&logoColor=white) | Como Gestor, quero divulgar as versões aprovadas dos dados, para que outras pessoas possam usá-las para tomar decisões. | 13 | 2 |
| 8 | US11 | ![Alta](https://img.shields.io/badge/Alta-FE5000?style=flat-square&logoColor=white) | Como Consumidor de Dados, quero acessar os indicadores já divulgados, para poder utilizá-los nas minhas análises e decisões. | 21 | 3 |
| 9 | US8 | ![Média](https://img.shields.io/badge/Média-FFA300?style=flat-square&logoColor=2D2D2D) | Como Auditor, quero acompanhar tudo o que acontece com os dados, para conseguir verificar todo o caminho, desde a entrada até o resultado final. | 13 | 3 |
| 10 | US9 | ![Média](https://img.shields.io/badge/Média-FFA300?style=flat-square&logoColor=2D2D2D) | Como Administrador, quero controlar quem pode acessar o quê no sistema, para que cada pessoa tenha acesso apenas ao que precisa para seu trabalho. | 13 | 3 |
| 11 | US10 | ![Baixa](https://img.shields.io/badge/Baixa-808080?style=flat-square&logoColor=white) | Como Administrador, quero acompanhar se o sistema está funcionando corretamente, para garantir que ele fique sempre disponível para uso. | 21 | 3 |

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<h2 align="center"><img src="https://api.iconify.design/tabler/checklist.svg?color=%23FFFFFF" width="20" /> Critérios de Aceite por User Story</h2>

<br>

| ID | Critério de Aceite |
|:---:|---|
| US1 | A fonte é cadastrada com as informações obrigatórias preenchidas; o sistema não permite salvar um cadastro incompleto. |
| US2 | O conjunto é criado a partir de uma fonte já cadastrada; o arquivo enviado fica registrado com a data, o horário e quem enviou; arquivos em formatos não aceitos são recusados. |
| US3 | Registros com erro (campos faltando, duplicados, localização inválida) ficam separados com o motivo anotado; os corretos seguem para a próxima etapa. |
| US4 | Os dados ficam padronizados conforme as regras definidas, e é possível saber quais alterações foram feitas em cada um. |
| US5 | Todos os indicadores ambientais são calculados por propriedade e por município, com base nos dados organizados. |
| US6 | Uma vez aprovada, a versão não pode mais ser alterada; antes de aprovar é possível ver informações sobre a qualidade dos dados. |
| US7 | A versão aprovada fica disponível para consulta; versões antigas continuam acessíveis. |
| US8 | É possível ver quem enviou, alterou, aprovou ou baixou cada informação, do início ao fim. |
| US9 | O administrador consegue cadastrar pessoas e definir o que cada uma pode fazer no sistema. |
| US10 | É possível ver se tudo está funcionando bem e receber um aviso caso algo pare de funcionar. |
| US11 | Os indicadores divulgados podem ser consultados (em mapa, tabela ou gráfico) e baixados, com resposta rápida. |

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<h2 align="center"><img src="https://api.iconify.design/tabler/calendar-time.svg?color=%23FFFFFF" width="20" /> Sprint Backlog</h2>

<br>

<h1 align="center">Sprint 1</h1>

<br>

<div align="center">

<table>
  <tr>
    <td align="center" width="50%">
      <img width="60" height="3" src="https://placehold.co/60x3/FE5000/FE5000.png"/>
      <br><strong>CAPACIDADE E META</strong><br><br>
      <sub>
      Capacidade estimada da equipe: <strong>42 Story Points</strong><br><br>
      Meta da sprint: <strong>User Stories US1 e US2</strong><br><br>
      Previsão de extras: nenhum item extra planejado
      </sub>
    </td>
    <td align="center" width="50%">
      <img width="60" height="3" src="https://placehold.co/60x3/FFA300/FFA300.png"/>
      <br><strong>OBJETIVO DA SPRINT</strong><br><br>
      <sub>
      Colocar as informações no sistema: cadastro das fontes, criação dos conjuntos e envio dos arquivos com hash na zona bruta.
      </sub>
    </td>
  </tr>
</table>

</div>

<br>

| ID | Prioridade | User Story | Estimativa |
|:---:|:---:|---|:---:|
| US1 | ![Alta](https://img.shields.io/badge/Alta-FE5000?style=flat-square&logoColor=white) | Como Gestor, quero cadastrar as fontes de dados, para que o Operador possa criar conjuntos a partir delas. | 8 |
| US2 | ![Alta](https://img.shields.io/badge/Alta-FE5000?style=flat-square&logoColor=white) | Como Operador de Dados, quero criar conjuntos e enviar os arquivos de dados para o sistema, para que fiquem guardados com segurança antes de serem tratados. | 21 |

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<h1 align="center">Sprint 2</h1>

<br>

<div align="center">

<table>
  <tr>
    <td align="center" width="50%">
      <img width="60" height="3" src="https://placehold.co/60x3/FE5000/FE5000.png"/>
      <br><strong>CAPACIDADE E META</strong><br><br>
      <sub>
      Capacidade estimada da equipe: <strong>89 Story Points</strong><br><br>
      Meta da sprint: <strong>User Stories US3, US4, US5, US6 e US7</strong><br><br>
      Previsão de extras: nenhum item extra planejado
      </sub>
    </td>
    <td align="center" width="50%">
      <img width="60" height="3" src="https://placehold.co/60x3/FFA300/FFA300.png"/>
      <br><strong>OBJETIVO DA SPRINT</strong><br><br>
      <sub>
      Verificar, preparar e calcular: validar os dados ingeridos separando os com problema, organizar os dados corretos, calcular os indicadores ambientais e conferir a qualidade antes de aprovar cada versão.
      </sub>
    </td>
  </tr>
</table>

</div>

<br>

| ID | Prioridade | User Story | Estimativa |
|:---:|:---:|---|:---:|
| US3 | ![Alta](https://img.shields.io/badge/Alta-FE5000?style=flat-square&logoColor=white) | Como Operador de Dados, quero verificar se os dados enviados estão corretos e separar os que têm problema, para que só sigam adiante informações confiáveis. | 13 |
| US4 | ![Alta](https://img.shields.io/badge/Alta-FE5000?style=flat-square&logoColor=white) | Como Operador de Dados, quero organizar e padronizar os dados já verificados, para que fiquem prontos para serem cruzados com outras informações. | 21 |
| US5 | ![Alta](https://img.shields.io/badge/Alta-FE5000?style=flat-square&logoColor=white) | Como Analista, quero cruzar as informações de diferentes fontes e calcular os indicadores ambientais, para que consiga montar relatórios. | 34 |
| US6 | ![Alta](https://img.shields.io/badge/Alta-FE5000?style=flat-square&logoColor=white) | Como Gestor, quero conferir a qualidade dos dados antes de aprová-los e guardar cada versão aprovada sem permitir alterações depois, para que os dados aprovados sejam sempre confiáveis. | 21 |
| US7 | ![Alta](https://img.shields.io/badge/Alta-FE5000?style=flat-square&logoColor=white) | Como Gestor, quero divulgar as versões aprovadas dos dados, para que outras pessoas possam usá-las para tomar decisões. | 13 |

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<h1 align="center">Sprint 3</h1>

<br>

<div align="center">

<table>
  <tr>
    <td align="center" width="50%">
      <img width="60" height="3" src="https://placehold.co/60x3/FE5000/FE5000.png"/>
      <br><strong>CAPACIDADE E META</strong><br><br>
      <sub>
      Capacidade estimada da equipe: <strong>68 Story Points</strong><br><br>
      Meta da sprint: <strong>User Stories US8, US9, US10 e US11</strong><br><br>
      Previsão de extras: nenhum item extra planejado
      </sub>
    </td>
    <td align="center" width="50%">
      <img width="60" height="3" src="https://placehold.co/60x3/FFA300/FFA300.png"/>
      <br><strong>OBJETIVO DA SPRINT</strong><br><br>
      <sub>
      Deixar tudo pronto para uso: divulgar os dados aprovados, permitir consulta pelos usuários finais, acompanhar tudo o que acontece no sistema, controlar o acesso das pessoas e verificar se o sistema está funcionando bem.
      </sub>
    </td>
  </tr>
</table>

</div>

<br>

| ID | Prioridade | User Story | Estimativa |
|:---:|:---:|---|:---:|
| US11 | ![Alta](https://img.shields.io/badge/Alta-FE5000?style=flat-square&logoColor=white) | Como Consumidor de Dados, quero acessar os indicadores já divulgados, para poder utilizá-los nas minhas análises e decisões. | 21 |
| US8 | ![Média](https://img.shields.io/badge/Média-FFA300?style=flat-square&logoColor=2D2D2D) | Como Auditor, quero acompanhar tudo o que acontece com os dados, para conseguir verificar todo o caminho, desde a entrada até o resultado final. | 13 |
| US9 | ![Média](https://img.shields.io/badge/Média-FFA300?style=flat-square&logoColor=2D2D2D) | Como Administrador, quero controlar quem pode acessar o quê no sistema, para que cada pessoa tenha acesso apenas ao que precisa para seu trabalho. | 13 |
| US10 | ![Baixa](https://img.shields.io/badge/Baixa-808080?style=flat-square&logoColor=white) | Como Administrador, quero acompanhar se o sistema está funcionando corretamente, para garantir que ele fique sempre disponível para uso. | 21 |

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<p align="center">
  <sub>Documento do projeto <strong>GeoRural DataHub</strong>, desenvolvido para a <strong>Visiona Tecnologia Espacial</strong>.</sub>
</p>
