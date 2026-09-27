<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<h1 align="center">⌞ Definition of Ready e Definition of Done ⌝</h1>

<p align="center">
  Critérios de entrada e saída das User Stories do <strong>GeoRural DataHub</strong>, para a equipe como um todo e por User Story.
</p>

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<h2 align="center"><img src="https://api.iconify.design/tabler/door-enter.svg?color=%232D2D2D" width="20" /> Definition of Ready (DoR)</h2>

<br>

Uma User Story só entra em uma Sprint quando:

- [ ] Está escrita no formato *Como [persona], quero [ação], para que [benefício]*, com critério de aceite claro
- [ ] As regras de negócio e os dados necessários já foram definidos com o time
- [ ] Foi estimada em conjunto pela equipe
- [ ] Não possui dependência bloqueante pendente
- [ ] Os itens específicos de DoR da User Story (tabela abaixo) foram confirmados e anotados no board, não só combinados verbalmente

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<h2 align="center"><img src="https://api.iconify.design/tabler/door-exit.svg?color=%232D2D2D" width="20" /> Definition of Done (DoD)</h2>

<br>

Uma User Story é considerada concluída quando:

- [ ] Foi implementada e revisada pela equipe
- [ ] Foi testada e está funcionando sem erros
- [ ] A documentação foi atualizada
- [ ] O critério de aceite foi validado pela equipe

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<h2 align="center"><img src="https://api.iconify.design/tabler/list-details.svg?color=%232D2D2D" width="20" /> DoR e DoD por User Story</h2>

<br>

<h3 align="center">▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄</h3>

<h3 align="center">US1 - Cadastro de fonte</h3>

<p align="center"><strong>Valor de negócio:</strong> sem o cadastro da fonte, nenhuma outra etapa do fluxo pode começar. É a porta de entrada do sistema.</p>

<br>

<table align="center" width="100%" style="width:100%; max-width:100%;">
  <tr>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FE5000/FE5000.png"/><br><strong>DoR</strong>
      </p>
      ➤ Campos obrigatórios da fonte definidos com o time (nome, URL de origem, usuário responsável)<br>
      ➤ Confirmado que é o Gestor quem cadastra a fonte, não o Operador
    </td>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FFA300/FFA300.png"/><br><strong>DoD</strong>
      </p>
      ➤ Cadastro funcionando e validando os campos obrigatórios<br>
      ➤ Sistema impede o cadastro incompleto ou de fonte com nome duplicado
    </td>
  </tr>
</table>

<br>

<h3 align="center">▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄</h3>

<h3 align="center">US2 - Criação de conjunto e envio dos arquivos de dados</h3>

<p align="center"><strong>Valor de negócio:</strong> garante que os dados brutos comecem a ser guardados com segurança e rastreabilidade desde a entrada no sistema.</p>

<br>

<table align="center" width="100%" style="width:100%; max-width:100%;">
  <tr>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FE5000/FE5000.png"/><br><strong>DoR</strong>
      </p>
      ➤ US1 concluída (fonte precisa existir antes do conjunto)<br>
      ➤ Campos obrigatórios do conjunto definidos com o time<br>
      ➤ Lista fechada de formatos de arquivo aceitos definida (ex.: csv, json, geojson, shp, gpkg, tif)<br>
      ➤ Decidido em qual camada — front ou back — a validação de formato acontece, e isso está anotado na task<br>
      ➤ Limite máximo de tamanho de arquivo definido
    </td>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FFA300/FFA300.png"/><br><strong>DoD</strong>
      </p>
      ➤ Conjunto criado a partir de uma fonte já cadastrada<br>
      ➤ Arquivo enviado fica registrado com hash (SHA-256), data/hora e usuário responsável<br>
      ➤ Arquivo em formato fora da lista definida é recusado na camada decidida<br>
      ➤ Reenvio do mesmo arquivo (mesmo conteúdo) é identificado
    </td>
  </tr>
</table>

<br>

<h3 align="center">▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄</h3>

<h3 align="center">US3 - Verificação e separação de dados com problema</h3>

<p align="center"><strong>Valor de negócio:</strong> evita que dados incorretos avancem no processo, protegendo a confiabilidade de todas as etapas seguintes.</p>

<br>

<table align="center" width="100%" style="width:100%; max-width:100%;">
  <tr>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FE5000/FE5000.png"/><br><strong>DoR</strong>
      </p>
      ➤ US2 concluída<br>
      ➤ Lista de campos obrigatórios, tipos e domínios definida por tipo de conjunto (mesmo que inicialmente fixa em código, não vinda de um dicionário no banco)<br>
      ➤ Definido o que conta como registro duplicado e como geometria inválida<br>
      ➤ Confirmado que a tabela de quarentena tem como localizar o registro de origem dentro do arquivo bruto (não precisa duplicar o conteúdo inteiro, mas precisa referenciar de volta)
    </td>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FFA300/FFA300.png"/><br><strong>DoD</strong>
      </p>
      ➤ Dados com erro são separados, com o motivo específico anotado (não só "inválido")<br>
      ➤ Dados corretos seguem para a próxima etapa<br>
      ➤ Dá pra localizar, a partir de um item da quarentena, o arquivo e o registro de origem
    </td>
  </tr>
</table>

<br>

<h3 align="center">▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄</h3>

<h3 align="center">US4 - Organização e padronização dos dados</h3>

<p align="center"><strong>Valor de negócio:</strong> deixa os dados prontos e no mesmo padrão, para que possam ser cruzados e analisados corretamente mais adiante.</p>

<br>

<table align="center" width="100%" style="width:100%; max-width:100%;">
  <tr>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FE5000/FE5000.png"/><br><strong>DoR</strong>
      </p>
      ➤ US3 concluída<br>
      ➤ Regras de padronização definidas (ex.: projeção equivalente, geometrias dissolvidas)<br>
      ➤ Biblioteca geoespacial (GDAL/GeoTools) avaliada e escolhida
    </td>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FFA300/FFA300.png"/><br><strong>DoD</strong>
      </p>
      ➤ Dados organizados e padronizados conforme as regras<br>
      ➤ É possível saber o que foi alterado em cada dado, até a versão bruta de origem<br>
      ➤ Arquivo bruto original permanece intacto, sem ser sobrescrito
    </td>
  </tr>
</table>

<br>

<h3 align="center">▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄</h3>

<h3 align="center">US5 - Cruzamento e cálculo dos indicadores</h3>

<p align="center"><strong>Valor de negócio:</strong> é o núcleo do produto. Sem os indicadores calculados, o sistema não entrega o resultado que o cliente precisa.</p>

<br>

<table align="center" width="100%" style="width:100%; max-width:100%;">
  <tr>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FE5000/FE5000.png"/><br><strong>DoR</strong>
      </p>
      ➤ US4 concluída<br>
      ➤ Fórmula de cada um dos 7 indicadores (ICV, IRL, IAPP, ISAP, IAE, IDesmat, IFC) validada com o time
    </td>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FFA300/FFA300.png"/><br><strong>DoD</strong>
      </p>
      ➤ Todos os 7 indicadores ambientais calculados corretamente<br>
      ➤ Resultados disponíveis por propriedade e por município<br>
      ➤ Cálculo é reprodutível a partir da mesma versão de dado tratado
    </td>
  </tr>
</table>

<br>

<h3 align="center">▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄</h3>

<h3 align="center">US6 - Qualidade e versionamento imutável</h3>

<p align="center"><strong>Valor de negócio:</strong> garante que só dados de qualidade comprovada sejam usados, dando confiança a tudo o que for calculado a partir deles.</p>

<br>

<table align="center" width="100%" style="width:100%; max-width:100%;">
  <tr>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FE5000/FE5000.png"/><br><strong>DoR</strong>
      </p>
      ➤ Dados tratados e indicadores calculados disponíveis para avaliação<br>
      ➤ Critérios que bloqueiam a aprovação de uma versão definidos com o time
    </td>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FFA300/FFA300.png"/><br><strong>DoD</strong>
      </p>
      ➤ Versão aprovada não pode mais ser alterada nem apagada<br>
      ➤ Qualidade dos dados é visível antes da aprovação<br>
      ➤ Fica registrado quem aprovou e quando
    </td>
  </tr>
</table>

<br>

<h3 align="center">▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄</h3>

<h3 align="center">US7 - Divulgação das versões aprovadas</h3>

<p align="center"><strong>Valor de negócio:</strong> permite que as versões aprovadas cheguem a quem precisa tomar decisões com base nelas.</p>

<br>

<table align="center" width="100%" style="width:100%; max-width:100%;">
  <tr>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FE5000/FE5000.png"/><br><strong>DoR</strong>
      </p>
      ➤ US6 concluída
    </td>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FFA300/FFA300.png"/><br><strong>DoD</strong>
      </p>
      ➤ Versão aprovada fica disponível para consulta como vigente<br>
      ➤ Versões antigas continuam acessíveis por histórico
    </td>
  </tr>
</table>

<br>

<h3 align="center">▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄</h3>

<h3 align="center">US8 - Consumo dos indicadores divulgados</h3>

<p align="center"><strong>Valor de negócio:</strong> é o que entrega valor visível ao usuário final. Sem isso, os dados calculados não chegam a quem precisa deles.</p>

<br>

<table align="center" width="100%" style="width:100%; max-width:100%;">
  <tr>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FE5000/FE5000.png"/><br><strong>DoR</strong>
      </p>
      ➤ US7 concluída
    </td>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FFA300/FFA300.png"/><br><strong>DoD</strong>
      </p>
      ➤ Indicadores podem ser consultados (mapa, tabela ou gráfico) e baixados<br>
      ➤ Resposta em até 3 segundos na massa de homologação
    </td>
  </tr>
</table>

<br>

<h3 align="center">▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄</h3>

<h3 align="center">US9 - Auditoria</h3>

<p align="center"><strong>Valor de negócio:</strong> dá transparência ao processo e permite comprovar todo o caminho do dado, algo essencial numa parceria institucional.</p>

<br>

<table align="center" width="100%" style="width:100%; max-width:100%;">
  <tr>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FE5000/FE5000.png"/><br><strong>DoR</strong>
      </p>
      ➤ Definido exatamente quais eventos geram registro de auditoria (upload, validação, aprovação, publicação, download)
    </td>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FFA300/FFA300.png"/><br><strong>DoD</strong>
      </p>
      ➤ É possível ver quem enviou, alterou, aprovou ou baixou cada informação, do início ao fim<br>
      ➤ Registro de auditoria não pode ser editado nem apagado por nenhum perfil
    </td>
  </tr>
</table>

<br>

<h3 align="center">▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄</h3>

<h3 align="center">US10 - Gestão de perfis de acesso</h3>

<p align="center"><strong>Valor de negócio:</strong> protege as informações, garantindo que cada pessoa acesse apenas o que é permitido para a sua função.</p>

<br>

<table align="center" width="100%" style="width:100%; max-width:100%;">
  <tr>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FE5000/FE5000.png"/><br><strong>DoR</strong>
      </p>
      ➤ Perfis de acesso e permissões de cada um definidos com o time (Administrador, Gestor, Operador, Analista, Auditor)<br>
      ➤ Valores exatos aceitos no banco para cada tipo de perfil confirmados, batendo com o que o código vai gravar
    </td>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FFA300/FFA300.png"/><br><strong>DoD</strong>
      </p>
      ➤ Administrador consegue cadastrar pessoas e definir o que cada uma pode acessar<br>
      ➤ Cada perfil só acessa o que está definido nas permissões
    </td>
  </tr>
</table>

<br>

<h3 align="center">▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄</h3>

<h3 align="center">US11 - Monitoramento de infraestrutura</h3>

<p align="center"><strong>Valor de negócio:</strong> garante que o sistema esteja sempre disponível para quem precisa usá-lo.</p>

<br>

<table align="center" width="100%" style="width:100%; max-width:100%;">
  <tr>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FE5000/FE5000.png"/><br><strong>DoR</strong>
      </p>
      ➤ Definido o que é considerado indisponibilidade para cada componente (portal, API, GeoDataLake, Airflow)
    </td>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FFA300/FFA300.png"/><br><strong>DoD</strong>
      </p>
      ➤ É possível ver se cada componente está funcionando bem<br>
      ➤ Um aviso é enviado em caso de falha
    </td>
  </tr>
</table>
