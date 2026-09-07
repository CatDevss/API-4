# Backlog — Sprint 3
 
**Projeto:** GeoRural DataHub — Visiona Tecnologia Espacial
 
**Qtd. Tarefas:** 24 | **Pontos:** 58
 
## Objetivo da Sprint
 
Produto pronto para homologação: orquestração via Airflow, tela de consulta pública (mapa, tabela, gráficos, exportação) e otimização de performance, auditoria completa, gestão de usuários/perfis de acesso, monitoramento de infraestrutura e documentação técnica. Dá pra demonstrar o sistema completo, seguro e monitorado, com o consumidor final acessando os indicadores.
 
---
 
## User Stories envolvidas
 
| ID | Prioridade | História de Usuário | Critério de Aceite |
|---|---|---|---|
| US7 | Alta | Como Gestor quero realizar a publicação das versões para que seja possivel realizar as tomadas de decisões | Versão aprovada publicada como vigente, disponível via portal e API; versões anteriores continuam acessíveis. |
| US8 | Média | Como Auditor quero ter acesso a todos os processos para que consiga fiscalizar e rastrear o tratamento do dado bruto ao produto final | Painel de auditoria exibe uploads, execuções, publicações, downloads e responsáveis, permitindo rastrear do dado bruto ao produto final. |
| US9 | Média | Como Administrador quero gerenciar os perfils de acesso dos usuarios para que cada um tenha permissões adequadas as suas responsabilidades | Administrador cria/edita usuários e atribui perfis (Operador, Analista, Gestor, Auditor, Administrador) com permissões correspondentes. |
| US10 | Baixa | Como Administrador quero monitora a saúde e disponibilidade da infraestrutura do Geodatalake para que o sistema esteja sempre operacional. | Painel exibe saúde de portal, APIs, GeoDataLake e Airflow, com consumo de recursos e alerta em caso de indisponibilidade. |
| US11 | Alta | Como Consumidor de Dados quero acessar os indicadores publicados via portal e via API para que eu possa utilizá-los em minhas análises e decisões. | Indicadores publicados acessíveis via portal (mapa, tabela, gráficos) e API, com resposta em até 3s na massa de homologação. |
 
---
