## Definition of Ready (DoR) da Equipe
- [ ] User Stories bem definidas e ja escritas na backlog
- [ ] Regras de negocio de cada user story precisam ja estar registradas
- [ ] Os dados necessarios preestabelecidos
- [ ] Mensagens de confirmacao e de erro prescritas
- [ ] Prototipo da tela pronto

## Definition of Ready (DoR)
 
Uma User Story só entra em uma Sprint quando:
- [ ] Tem descrição no formato *Como [persona], quero [ação] para que [benefício]*
- [ ] Tem critério de aceite definido e claro
- [ ] Está estimada (pontos)
- [ ] Não possui dependência bloqueante não resolvida
- [ ] Foi validada com o time

## Definition of Done (DoD)
 
Uma User Story é considerada concluída quando:
- [ ] Todas as tarefas associadas foram implementadas e revisadas
- [ ] Testes (unitários e/ou de integração) escritos e passando
- [ ] Sem erros
- [ ] Documentação atualizada, quando aplicável
- [ ] Critério de aceite validado pela equipe 

## DoR e DoD por User Story

### US1 — Cadastro de fonte e conjunto
 
**DoR**
- [ ] Campos obrigatórios de "fonte" e "conjunto" definidos com o time
- [ ] Modelo de dados (tabelas `fonte` e `conjunto`) validado

**DoD**
- [ ] Tabelas `fonte` e `conjunto` criadas no banco
- [ ] Endpoints `POST /fontes`, `POST /conjuntos` e `GET /conjuntos` funcionando
- [ ] Tela de cadastro implementada e validando campos obrigatórios
- [ ] Cadastro incompleto é bloqueado pelo sistema (critério de aceite validado)
### US2 — Ingestão na zona bruta
 
**DoR**
- [ ] US1 concluída (conjunto precisa existir antes do upload)
- [ ] Bucket da zona bruta provisionado no Oracle Cloud Object Storage
- [ ] Formatos de arquivo suportados definidos

**DoD**
- [ ] Upload grava o arquivo na zona bruta com hash (SHA-256), data/hora e usuário registrados
- [ ] Formatos de fontes não suportados são rejeitados
- [ ] Endpoint de listagem e preview de arquivos funcionando
- [ ] Testes de integração (upload válido, rejeição de formato, listagem) passando
### US3 — Validação e envio à quarentena
 
**DoR**
- [ ] US2 concluída (arquivo já ingerido na zona bruta)
- [ ] Regras de validação (campos, tipos, duplicidades, geometrias) definidas e documentadas

**DoD**
- [ ] Registros inválidos são enviados à quarentena com motivo registrado
- [ ] Registros válidos seguem para tratamento
- [ ] Tela de listagem de quarentena funcionando
- [ ] Reprocessamento de registro corrigido testado
- [ ] Testes de integração cobrindo rejeição e reprocessamento passando
### US4 — Tratamento e padronização
 
**DoR**
- [ ] US3 concluída (dados validados disponíveis)
- [ ] Regras de padronização do Geodatalake documentadas
- [ ] Estratégia de reprojeção/geometria definida

**DoD**
- [ ] Dados tratados e padronizados conforme regras do Geodatalake
- [ ] Transformações aplicadas registradas para rastreabilidade
- [ ] Gravação na zona tratada validada
- [ ] Testes de integração confirmando gravação correta passando
### US5 — Cruzamento geoespacial e cálculo de indicadores
 
**DoR**
- [ ] US4 concluída (dados tratados disponíveis)
- [ ] Casos de referência para validação dos cálculos disponíveis

**DoD**
- [ ] Todos os indicadores calculados por imóvel, APP, RL e município
- [ ] Endpoint `GET /indicadores/{conjunto_id}` retornando resultados e memória de cálculo
- [ ] Fonte, versão dos dados e regra de cálculo registradas por indicador
- [ ] Dicionário de dados e memória de cálculo documentados
- [ ] Testes de integração validando valores contra casos de referência passando
### US6 — Qualidade e versionamento imutável
 
**DoR**
- [ ] US4/US5 concluídas (dados tratados e indicadores disponíveis para avaliação)
- [ ] Critérios de qualidade (válidos, rejeitados, cobertura) definidos

**DoD**
- [ ] Versão aprovada registrada como imutável (hash, fonte, competência, parâmetros, regras)
- [ ] Métricas de qualidade visíveis antes da aprovação
- [ ] Comparação entre versão vigente e anteriores funcionando
- [ ] Versão aprovada não pode ser alterada (validado em teste de integração)
### US7 — Publicação das versões
 
**DoR**
- [ ] US6 concluída (versão aprovada e imutável disponível)

**DoD**
- [ ] Versão aprovada publicada como vigente
- [ ] Disponível via portal e API
- [ ] Versões anteriores continuam acessíveis
- [ ] Pipeline orquestrado no Airflow
- [ ] Documento de arquitetura e manual técnico elaborados
- [ ] Teste de integração confirmando versão publicada aparecendo como vigente na API
### US8 — Auditoria
 
**DoR**
- [ ] Eventos a serem auditados (uploads, execuções, publicações, downloads) definidos
- [ ] Fluxos das demais US (2, 3, 6, 7) já gerando os registros a serem auditados

**DoD**
- [ ] Endpoint `GET /auditoria` com filtros por etapa, usuário e período
- [ ] Logs de uploads, execuções, publicações, downloads e responsáveis consolidados
- [ ] Painel de auditoria com linha do tempo por conjunto/versão
- [ ] Teste de integração confirmando rastreabilidade do dado bruto ao publicado
### US9 — Gestão de perfis de acesso
 
**DoR**
- [ ] Perfis de acesso (Operador, Analista, Gestor, Auditor, Administrador) e suas permissões definidos
- [ ] Estratégia de anonimização de dados em homologação definida

**DoD**
- [ ] Tabelas `usuario` e `perfil_acesso` criadas
- [ ] CRUD de usuários com atribuição de perfil funcionando
- [ ] Autorização por perfil aplicada em telas, APIs e downloads
- [ ] Segredos (credenciais, chaves) fora do código-fonte
- [ ] Dados sintéticos/anonimizados garantidos em homologação
- [ ] Teste de integração confirmando bloqueio de usuário sem permissão
### US10 — Monitoramento de infraestrutura
 
**DoR**
- [ ] Componentes a monitorar (portal, API, GeoDataLake, Airflow) definidos
- [ ] Critérios de "indisponibilidade" e alerta definidos

**DoD**
- [ ] Coleta de status de saúde dos componentes implementada
- [ ] Logs e consumo de recursos expostos via endpoint de monitoramento
- [ ] Painel de monitoramento com saúde, logs e alertas funcionando
- [ ] Teste de integração confirmando alerta quando componente fica indisponível
### US11 — Consumo por portal e API
 
**DoR**
- [ ] US7 concluída (versão publicada disponível)
- [ ] Massa de homologação definida para teste de performance (resposta em até 3s)

**DoD**
- [ ] Endpoint `GET /conjuntos/{id}/publicado` retornando dados da versão vigente
- [ ] Tela de consulta com mapa (Leaflet), tabela e gráficos funcionando
- [ ] Exportação/download dos resultados implementada
- [ ] Consultas otimizadas para resposta em até 3s na massa de homologação
- [ ] APIs documentadas com OpenAPI/Swagger
- [ ] Teste de performance validando tempo de resposta
