<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<h1 align="center">⌞ Definition of Ready e Definition of Done ⌝</h1>

<p align="center">
  Critérios de entrada e saída das User Stories do <strong>GeoRural DataHub</strong>, por US e para a equipe como um todo.
</p>

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<h2 align="center"><img src="https://api.iconify.design/tabler/users-group.svg?color=%232D2D2D" width="20" /> Definition of Ready da Equipe</h2>

<br>

- [ ] User Stories bem definidas e já escritas no backlog
- [ ] Regras de negócio de cada User Story já registradas
- [ ] Os dados necessários preestabelecidos
- [ ] Mensagens de confirmação e de erro prescritas
- [ ] Protótipo da tela pronto

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<h2 align="center"><img src="https://api.iconify.design/tabler/door-enter.svg?color=%232D2D2D" width="20" /> Definition of Ready (DoR)</h2>

<br>

Uma User Story só entra em uma Sprint quando:

- [ ] Tem descrição no formato *Como [persona], quero [ação] para que [benefício]*
- [ ] Tem critério de aceite definido e claro
- [ ] Está estimada (pontos)
- [ ] Não possui dependência bloqueante não resolvida
- [ ] Foi validada com o time

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<h2 align="center"><img src="https://api.iconify.design/tabler/door-exit.svg?color=%232D2D2D" width="20" /> Definition of Done (DoD)</h2>

<br>

Uma User Story é considerada concluída quando:

- [ ] Todas as tarefas associadas foram implementadas e revisadas
- [ ] Testes (unitários e/ou de integração) escritos e passando
- [ ] Sem erros
- [ ] Documentação atualizada, quando aplicável
- [ ] Critério de aceite validado pela equipe

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<h2 align="center"><img src="https://api.iconify.design/tabler/list-details.svg?color=%232D2D2D" width="20" /> DoR e DoD por User Story</h2>

<br>

<h3 align="center">▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄</h3>

<h3 align="center">US1 — Cadastro de fonte e conjunto</h3>

<br>

<table width="100%">
  <tr>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FE5000/FE5000.png"/><br><strong>DoR</strong>
      </p>
      ➤ Campos obrigatórios de "fonte" e "conjunto" definidos com o time<br>
      ➤ Modelo de dados (tabelas <code>fonte</code> e <code>conjunto</code>) validado
    </td>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FFA300/FFA300.png"/><br><strong>DoD</strong>
      </p>
      ➤ Tabelas <code>fonte</code> e <code>conjunto</code> criadas no banco<br>
      ➤ Endpoints <code>POST /fontes</code>, <code>POST /conjuntos</code> e <code>GET /conjuntos</code> funcionando<br>
      ➤ Tela de cadastro implementada e validando campos obrigatórios<br>
      ➤ Cadastro incompleto é bloqueado pelo sistema (critério de aceite validado)
    </td>
  </tr>
</table>

<br>

<h3 align="center">▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄</h3>

<h3 align="center">US2 — Ingestão na zona bruta</h3>

<br>

<table width="100%">
  <tr>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FE5000/FE5000.png"/><br><strong>DoR</strong>
      </p>
      ➤ US1 concluída (conjunto precisa existir antes do upload)<br>
      ➤ Bucket da zona bruta provisionado no Oracle Cloud Object Storage<br>
      ➤ Formatos de arquivo suportados definidos
    </td>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FFA300/FFA300.png"/><br><strong>DoD</strong>
      </p>
      ➤ Upload grava o arquivo na zona bruta com hash (SHA-256), data/hora e usuário registrados<br>
      ➤ Formatos de fontes não suportados são rejeitados<br>
      ➤ Endpoint de listagem e preview de arquivos funcionando<br>
      ➤ Testes de integração (upload válido, rejeição de formato, listagem) passando
    </td>
  </tr>
</table>

<br>

<h3 align="center">▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄</h3>

<h3 align="center">US3 — Validação e envio à quarentena</h3>

<br>

<table width="100%">
  <tr>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FE5000/FE5000.png"/><br><strong>DoR</strong>
      </p>
      ➤ US2 concluída (arquivo já ingerido na zona bruta)<br>
      ➤ Regras de validação (campos, tipos, duplicidades, geometrias) definidas e documentadas
    </td>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FFA300/FFA300.png"/><br><strong>DoD</strong>
      </p>
      ➤ Registros inválidos são enviados à quarentena com motivo registrado<br>
      ➤ Registros válidos seguem para tratamento<br>
      ➤ Tela de listagem de quarentena funcionando<br>
      ➤ Reprocessamento de registro corrigido testado<br>
      ➤ Testes de integração cobrindo rejeição e reprocessamento passando
    </td>
  </tr>
</table>

<br>

<h3 align="center">▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄</h3>

<h3 align="center">US4 — Tratamento e padronização</h3>

<br>

<table width="100%">
  <tr>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FE5000/FE5000.png"/><br><strong>DoR</strong>
      </p>
      ➤ US3 concluída (dados validados disponíveis)<br>
      ➤ Regras de padronização do GeoDataLake documentadas<br>
      ➤ Estratégia de reprojeção/geometria definida
    </td>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FFA300/FFA300.png"/><br><strong>DoD</strong>
      </p>
      ➤ Dados tratados e padronizados conforme regras do GeoDataLake<br>
      ➤ Transformações aplicadas registradas para rastreabilidade<br>
      ➤ Gravação na zona tratada validada<br>
      ➤ Testes de integração confirmando gravação correta passando
    </td>
  </tr>
</table>

<br>

<h3 align="center">▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄</h3>

<h3 align="center">US5 — Cruzamento geoespacial e cálculo de indicadores</h3>

<br>

<table width="100%">
  <tr>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FE5000/FE5000.png"/><br><strong>DoR</strong>
      </p>
      ➤ US4 concluída (dados tratados disponíveis)<br>
      ➤ Casos de referência para validação dos cálculos disponíveis
    </td>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FFA300/FFA300.png"/><br><strong>DoD</strong>
      </p>
      ➤ Todos os indicadores calculados por imóvel, APP, RL e município<br>
      ➤ Endpoint <code>GET /indicadores/{conjunto_id}</code> retornando resultados e memória de cálculo<br>
      ➤ Fonte, versão dos dados e regra de cálculo registradas por indicador<br>
      ➤ Dicionário de dados e memória de cálculo documentados<br>
      ➤ Testes de integração validando valores contra casos de referência passando
    </td>
  </tr>
</table>

<br>

<h3 align="center">▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄</h3>

<h3 align="center">US6 — Qualidade e versionamento imutável</h3>

<br>

<table width="100%">
  <tr>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FE5000/FE5000.png"/><br><strong>DoR</strong>
      </p>
      ➤ US4/US5 concluídas (dados tratados e indicadores disponíveis para avaliação)<br>
      ➤ Critérios de qualidade (válidos, rejeitados, cobertura) definidos
    </td>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FFA300/FFA300.png"/><br><strong>DoD</strong>
      </p>
      ➤ Versão aprovada registrada como imutável (hash, fonte, competência, parâmetros, regras)<br>
      ➤ Métricas de qualidade visíveis antes da aprovação<br>
      ➤ Comparação entre versão vigente e anteriores funcionando<br>
      ➤ Versão aprovada não pode ser alterada (validado em teste de integração)
    </td>
  </tr>
</table>

<br>

<h3 align="center">▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄</h3>

<h3 align="center">US7 — Publicação das versões</h3>

<br>

<table width="100%">
  <tr>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FE5000/FE5000.png"/><br><strong>DoR</strong>
      </p>
      ➤ US6 concluída (versão aprovada e imutável disponível)
    </td>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FFA300/FFA300.png"/><br><strong>DoD</strong>
      </p>
      ➤ Versão aprovada publicada como vigente<br>
      ➤ Disponível via portal e API<br>
      ➤ Versões anteriores continuam acessíveis<br>
      ➤ Pipeline orquestrado no Airflow<br>
      ➤ Documento de arquitetura e manual técnico elaborados<br>
      ➤ Teste de integração confirmando versão publicada aparecendo como vigente na API
    </td>
  </tr>
</table>

<br>

<h3 align="center">▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄</h3>

<h3 align="center">US8 — Auditoria</h3>

<br>

<table width="100%">
  <tr>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FE5000/FE5000.png"/><br><strong>DoR</strong>
      </p>
      ➤ Eventos a serem auditados (uploads, execuções, publicações, downloads) definidos<br>
      ➤ Fluxos das demais US (2, 3, 6, 7) já gerando os registros a serem auditados
    </td>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FFA300/FFA300.png"/><br><strong>DoD</strong>
      </p>
      ➤ Endpoint <code>GET /auditoria</code> com filtros por etapa, usuário e período<br>
      ➤ Logs de uploads, execuções, publicações, downloads e responsáveis consolidados<br>
      ➤ Painel de auditoria com linha do tempo por conjunto/versão<br>
      ➤ Teste de integração confirmando rastreabilidade do dado bruto ao publicado
    </td>
  </tr>
</table>

<br>

<h3 align="center">▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄</h3>

<h3 align="center">US9 — Gestão de perfis de acesso</h3>

<br>

<table width="100%">
  <tr>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FE5000/FE5000.png"/><br><strong>DoR</strong>
      </p>
      ➤ Perfis de acesso (Operador, Analista, Gestor, Auditor, Administrador) e suas permissões definidos<br>
      ➤ Estratégia de anonimização de dados em homologação definida
    </td>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FFA300/FFA300.png"/><br><strong>DoD</strong>
      </p>
      ➤ Tabelas <code>usuario</code> e <code>perfil_acesso</code> criadas<br>
      ➤ CRUD de usuários com atribuição de perfil funcionando<br>
      ➤ Autorização por perfil aplicada em telas, APIs e downloads<br>
      ➤ Segredos (credenciais, chaves) fora do código-fonte<br>
      ➤ Dados sintéticos/anonimizados garantidos em homologação<br>
      ➤ Teste de integração confirmando bloqueio de usuário sem permissão
    </td>
  </tr>
</table>

<br>

<h3 align="center">▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄</h3>

<h3 align="center">US10 — Monitoramento de infraestrutura</h3>

<br>

<table width="100%">
  <tr>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FE5000/FE5000.png"/><br><strong>DoR</strong>
      </p>
      ➤ Componentes a monitorar (portal, API, GeoDataLake, Airflow) definidos<br>
      ➤ Critérios de "indisponibilidade" e alerta definidos
    </td>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FFA300/FFA300.png"/><br><strong>DoD</strong>
      </p>
      ➤ Coleta de status de saúde dos componentes implementada<br>
      ➤ Logs e consumo de recursos expostos via endpoint de monitoramento<br>
      ➤ Painel de monitoramento com saúde, logs e alertas funcionando<br>
      ➤ Teste de integração confirmando alerta quando componente fica indisponível
    </td>
  </tr>
</table>

<br>

<h3 align="center">▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄</h3>

<h3 align="center">US11 — Consumo por portal e API</h3>

<br>

<table width="100%">
  <tr>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FE5000/FE5000.png"/><br><strong>DoR</strong>
      </p>
      ➤ US7 concluída (versão publicada disponível)<br>
      ➤ Massa de homologação definida para teste de performance (resposta em até 3s)
    </td>
    <td width="50%" valign="top">
      <p align="center">
        <img width="60" height="3" src="https://placehold.co/60x3/FFA300/FFA300.png"/><br><strong>DoD</strong>
      </p>
      ➤ Endpoint <code>GET /conjuntos/{id}/publicado</code> retornando dados da versão vigente<br>
      ➤ Tela de consulta com mapa (Leaflet), tabela e gráficos funcionando<br>
      ➤ Exportação/download dos resultados implementada<br>
      ➤ Consultas otimizadas para resposta em até 3s na massa de homologação<br>
      ➤ APIs documentadas com OpenAPI/Swagger<br>
      ➤ Teste de performance validando tempo de resposta
    </td>
  </tr>
</table>

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<p align="center">
  <sub>Documento do projeto <strong>GeoRural DataHub</strong>, desenvolvido para a <strong>Visiona Tecnologia Espacial</strong>.</sub>
</p>
