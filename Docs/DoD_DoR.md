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

- [ ] Está escrita no formato *Como [persona], quero [ação], para que [benefício]*, descrevendo claramente o que o usuário vê e faz
- [ ] Possui o desenho (protótipo) da tela mostrando os campos, botões, informações exibidas e mensagens de aviso ou erro
- [ ] Todas as regras de funcionamento e condições de validação estão escritas de forma clara, sem dúvidas em aberto
- [ ] Existem exemplos reais de arquivos, dados ou cenários de uso disponíveis para testar o fluxo completo
- [ ] Os itens específicos de DoR da User Story (tabela abaixo) já estão preparados e anexados no card

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
      ➤ Desenho da tela de cadastro pronto, mostrando os campos obrigatórios (nome, endereço/URL de origem, responsável), o botão de salvar e os avisos de erro<br>
      ➤ Regras claras do que o sistema deve barrar ao salvar (campo vazio, endereço inválido ou fonte com nome já cadastrado)<br>
      ➤ Regra de acesso definida deixando explícito que apenas o Gestor visualiza e usa essa tela, e o Operador não tem permissão
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
      ➤ Desenho da tela pronto mostrando a escolha de uma fonte já cadastrada, os dados do conjunto, a área de envio do arquivo e os avisos na tela (sucesso, formato inválido ou arquivo repetido)<br>
      ➤ Lista fechada dos tipos de arquivo aceitos (csv, json, geojson, shp, gpkg, tif) e o tamanho máximo permitido por envio<br>
      ➤ Exemplos de arquivos reais (válidos, com formato errado e repetidos) separados para testar o envio e o registro de data, hora e responsável
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
      ➤ Lista exata de todas as falhas que o sistema deve barrar em cada tipo de arquivo (campo vazio, dado fora do padrão, registro repetido e desenho de área/mapa inválido)<br>
      ➤ Desenho da tela de itens com problema (quarentena) mostrando de qual arquivo cada erro veio, qual é a linha/registro e o motivo claro do problema<br>
      ➤ Arquivos de exemplo contendo tanto dados corretos quanto erros propositais para comprovar a separação
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
      ➤ Regras claras de como os dados validados devem ser ajustados para ficarem no mesmo formato (padrão de coordenadas geográficas, nomes de colunas e unificação de áreas sobrepostas)<br>
      ➤ Regra definida sobre o que deve ser registrado em cada ajuste para que seja possível comparar o dado padronizado com o arquivo original intocado<br>
      ➤ Arquivos de dados já validados disponíveis para testar toda a padronização
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
      ➤ Regra de cálculo e unidade de medida de cada um dos 7 indicadores (ICV, IRL, IAPP, ISAP, IAE, IDesmat, IFC) descritas passo a passo, mostrando quais informações são cruzadas<br>
      ➤ Exemplo de resultado esperado para uma propriedade e para um município (com valores já conferidos) para comparar e validar se o cálculo bate<br>
      ➤ Dados padronizados e mapas de referência dos municípios disponíveis para realizar os cruzamentos
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
      ➤ Desenho da tela de avaliação pronto mostrando o resumo de qualidade (quantidade de dados aprovados e com erro), a prévia dos indicadores e o botão de aprovação<br>
      ➤ Critérios exatos que impedem a aprovação de uma versão (ex.: limite máximo de erros aceitos ou indicadores faltando)<br>
      ➤ Regra explícita de que, após aprovada, a versão fica travada para edição ou exclusão e exibe quem aprovou e quando
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
      ➤ Desenho da tela de versões pronto mostrando claramente qual versão está marcada como atual (vigente) e a lista de versões anteriores disponíveis para consulta<br>
      ➤ Regra de substituição definida: ao divulgar uma nova versão aprovada, ela assume como principal e a anterior vai automaticamente para o histórico<br>
      ➤ Pelo menos duas versões aprovadas de exemplo disponíveis para testar a troca de vigência e a consulta ao histórico
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
      ➤ Desenho da tela de consulta pronto mostrando os filtros (município, propriedade, versão), as três formas de visualização (mapa, tabela e gráfico) e o botão de download<br>
      ➤ Formatos e informações que devem vir no arquivo baixado definidos com clareza<br>
      ➤ Base de dados completa de teste carregada para verificar se a abertura das telas e filtros responde em até 3 segundos
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
      ➤ Lista fechada de todas as ações que geram registro (envio, validação, aprovação, publicação e download) e quais informações aparecem em cada linha (quem fez, o que fez, quando e em qual dado)<br>
      ➤ Desenho da tela de histórico de auditoria pronto mostrando filtros por usuário, data e tipo de ação, sem opção de editar ou apagar nenhum registro
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
      ➤ Tabela de permissões fechada mostrando o que cada um dos 5 perfis (Administrador, Gestor, Operador, Analista, Auditor) pode ver, cadastrar, aprovar ou baixar<br>
      ➤ Desenho da tela de cadastro de usuários pronto com campos de identificação, escolha do perfil e mensagem de acesso bloqueado quando alguém tentar entrar onde não tem permissão
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
      ➤ Critérios claros do que caracteriza falha em cada parte do sistema (portal fora do ar, falha no envio/consulta de dados, armazenamento cheio ou erro no processamento automático)<br>
      ➤ Desenho da tela de status pronto mostrando o indicador visual (funcionando ou com falha) de cada serviço e definição de quem recebe o aviso e por qual canal quando algo parar
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
