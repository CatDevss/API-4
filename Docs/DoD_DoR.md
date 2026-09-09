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

<h3 align="center">US1 -Cadastro de fonte e conjunto</h3>

<p align="center"><strong>Valor de negócio:</strong> sem o cadastro da fonte, nenhuma outra etapa do fluxo pode começar. É a porta de entrada do sistema.</p>

<br>

<table width="100%">
  <tr>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FE5000/FE5000.png"/><br><strong>DoR</strong>
      </p>
      ➤ Campos obrigatórios da fonte e do conjunto definidos com o time
    </td>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FFA300/FFA300.png"/><br><strong>DoD</strong>
      </p>
      ➤ Cadastro funcionando e validando os campos obrigatórios<br>
      ➤ Sistema impede o cadastro incompleto
    </td>
  </tr>
</table>

<br>

<h3 align="center">▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄</h3>

<h3 align="center">US2 -Envio dos arquivos de dados</h3>

<p align="center"><strong>Valor de negócio:</strong> garante que os dados brutos comecem a ser guardados com segurança e rastreabilidade desde a entrada no sistema.</p>

<br>

<table width="100%">
  <tr>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FE5000/FE5000.png"/><br><strong>DoR</strong>
      </p>
      ➤ US1 concluída (conjunto precisa existir antes do envio)<br>
      ➤ Formatos de arquivo aceitos definidos
    </td>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FFA300/FFA300.png"/><br><strong>DoD</strong>
      </p>
      ➤ Arquivo enviado fica registrado com data, hora e responsável<br>
      ➤ Arquivos em formato não aceito são recusados
    </td>
  </tr>
</table>

<br>

<h3 align="center">▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄</h3>

<h3 align="center">US3 -Verificação e separação de dados com problema</h3>

<p align="center"><strong>Valor de negócio:</strong> evita que dados incorretos avancem no processo, protegendo a confiabilidade de todas as etapas seguintes.</p>

<br>

<table width="100%">
  <tr>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FE5000/FE5000.png"/><br><strong>DoR</strong>
      </p>
      ➤ US2 concluída<br>
      ➤ Regras para identificar dados com problema definidas
    </td>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FFA300/FFA300.png"/><br><strong>DoD</strong>
      </p>
      ➤ Dados com erro são separados, com o motivo anotado<br>
      ➤ Dados corretos seguem para a próxima etapa
    </td>
  </tr>
</table>

<br>

<h3 align="center">▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄</h3>

<h3 align="center">US4 -Organização e padronização dos dados</h3>

<p align="center"><strong>Valor de negócio:</strong> deixa os dados prontos e no mesmo padrão, para que possam ser cruzados e analisados corretamente mais adiante.</p>

<br>

<table width="100%">
  <tr>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FE5000/FE5000.png"/><br><strong>DoR</strong>
      </p>
      ➤ US3 concluída<br>
      ➤ Regras de padronização definidas
    </td>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FFA300/FFA300.png"/><br><strong>DoD</strong>
      </p>
      ➤ Dados organizados e padronizados conforme as regras<br>
      ➤ É possível saber o que foi alterado em cada dado
    </td>
  </tr>
</table>

<br>

<h3 align="center">▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄</h3>

<h3 align="center">US5 -Cruzamento e cálculo dos indicadores</h3>

<p align="center"><strong>Valor de negócio:</strong> é o núcleo do produto. Sem os indicadores calculados, o sistema não entrega o resultado que o cliente precisa.</p>

<br>

<table width="100%">
  <tr>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FE5000/FE5000.png"/><br><strong>DoR</strong>
      </p>
      ➤ US4 concluída<br>
      ➤ Forma de calcular cada indicador aprovada com o time
    </td>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FFA300/FFA300.png"/><br><strong>DoD</strong>
      </p>
      ➤ Todos os indicadores ambientais calculados corretamente<br>
      ➤ Resultados disponíveis por propriedade e por município
    </td>
  </tr>
</table>

<br>

<h3 align="center">▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄</h3>

<h3 align="center">US6 -Qualidade e versionamento imutável</h3>

<p align="center"><strong>Valor de negócio:</strong> garante que só dados de qualidade comprovada sejam usados, dando confiança a tudo o que for calculado a partir deles.</p>

<br>

<table width="100%">
  <tr>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FE5000/FE5000.png"/><br><strong>DoR</strong>
      </p>
      ➤ Dados tratados e indicadores disponíveis para avaliação
    </td>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FFA300/FFA300.png"/><br><strong>DoD</strong>
      </p>
      ➤ Versão aprovada não pode mais ser alterada<br>
      ➤ Qualidade dos dados é visível antes da aprovação
    </td>
  </tr>
</table>

<br>

<h3 align="center">▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄</h3>

<h3 align="center">US7 -Divulgação das versões aprovadas</h3>

<p align="center"><strong>Valor de negócio:</strong> permite que as versões aprovadas cheguem a quem precisa tomar decisões com base nelas.</p>

<br>

<table width="100%">
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
      ➤ Versão aprovada fica disponível para consulta<br>
      ➤ Versões antigas continuam acessíveis
    </td>
  </tr>
</table>

<br>

<h3 align="center">▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄</h3>

<h3 align="center">US8 -Auditoria</h3>

<p align="center"><strong>Valor de negócio:</strong> dá transparência ao processo e permite comprovar todo o caminho do dado, algo essencial numa parceria institucional.</p>

<br>

<table width="100%">
  <tr>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FE5000/FE5000.png"/><br><strong>DoR</strong>
      </p>
      ➤ Definido o que precisa ser registrado para auditoria
    </td>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FFA300/FFA300.png"/><br><strong>DoD</strong>
      </p>
      ➤ É possível ver quem enviou, alterou, aprovou ou baixou cada informação, do início ao fim
    </td>
  </tr>
</table>

<br>

<h3 align="center">▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄</h3>

<h3 align="center">US9 -Gestão de perfis de acesso</h3>

<p align="center"><strong>Valor de negócio:</strong> protege as informações, garantindo que cada pessoa acesse apenas o que é permitido para a sua função.</p>

<br>

<table width="100%">
  <tr>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FE5000/FE5000.png"/><br><strong>DoR</strong>
      </p>
      ➤ Perfis de acesso e permissões definidos com o time
    </td>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FFA300/FFA300.png"/><br><strong>DoD</strong>
      </p>
      ➤ Administrador consegue cadastrar pessoas e definir o que cada uma pode acessar
    </td>
  </tr>
</table>

<br>

<h3 align="center">▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄</h3>

<h3 align="center">US10 -Monitoramento de infraestrutura</h3>

<p align="center"><strong>Valor de negócio:</strong> garante que o sistema esteja sempre disponível para quem precisa usá-lo.</p>

<br>

<table width="100%">
  <tr>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FE5000/FE5000.png"/><br><strong>DoR</strong>
      </p>
      ➤ Definido o que é considerado indisponibilidade
    </td>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FFA300/FFA300.png"/><br><strong>DoD</strong>
      </p>
      ➤ É possível ver se o sistema está funcionando bem<br>
      ➤ Um aviso é enviado em caso de falha
    </td>
  </tr>
</table>

<br>

<h3 align="center">▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄</h3>

<h3 align="center">US11 -Consumo dos indicadores divulgados</h3>

<p align="center"><strong>Valor de negócio:</strong> é o que entrega valor visível ao usuário final. Ssem isso, os dados calculados não chegam a quem precisa deles.</p>

<br>

<table width="100%">
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
      ➤ Resposta rápida na consulta
    </td>
  </tr>
</table>

<br>



<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<p align="center">
  <sub>Documento do projeto <strong>GeoRural DataHub</strong>, desenvolvido para a <strong>Visiona Tecnologia Espacial</strong>.</sub>
</p>
