<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<h1 align="center">⌞ GeoRural DataHub ⌝</h1>

<h3 align="center">Manual de Instalação</h3>

<p align="center">
  Como instalar e executar o sistema em ambiente de desenvolvimento.
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Java-21-FE5000?style=for-the-badge&logo=openjdk&logoColor=white" alt="Java 21" />
  <img src="https://img.shields.io/badge/Spring_Boot-4.1.1-FE5000?style=for-the-badge&logo=springboot&logoColor=white" alt="Spring Boot" />
  <img src="https://img.shields.io/badge/Vue.js-3-2D2D2D?style=for-the-badge&logo=vuedotjs&logoColor=FFA300" alt="Vue 3" />
  <img src="https://img.shields.io/badge/Oracle_Database-FFA300?style=for-the-badge&logo=oracle&logoColor=2D2D2D" alt="Oracle" />
</p>

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<h2 align="center"><img src="https://api.iconify.design/tabler/list-details.svg?color=%23FFFFFF" width="20" /> Sumário</h2>

<br>

<div align="center">

<table>
  <tr>
    <td width="50%">
      <img src="https://api.iconify.design/tabler/layout-grid.svg?color=%23FFFFFF" width="16" /> <a href="#-visão-geral">Visão Geral</a><br><br>
      <img src="https://api.iconify.design/tabler/checklist.svg?color=%23FFFFFF" width="16" /> <a href="#-pré-requisitos">Pré-requisitos</a><br><br>
      <img src="https://api.iconify.design/tabler/database.svg?color=%23FFFFFF" width="16" /> <a href="#-1-banco-de-dados-oracle">1. Banco de Dados Oracle</a><br><br>
      <img src="https://api.iconify.design/tabler/cloud.svg?color=%23FFFFFF" width="16" /> <a href="#-2-oci-object-storage">2. OCI Object Storage</a>
    </td>
    <td width="50%">
      <img src="https://api.iconify.design/tabler/server.svg?color=%23FFFFFF" width="16" /> <a href="#-3-back-end">3. Back-end</a><br><br>
      <img src="https://api.iconify.design/tabler/browser.svg?color=%23FFFFFF" width="16" /> <a href="#-4-front-end">4. Front-end</a><br><br>
      <img src="https://api.iconify.design/tabler/flask.svg?color=%23FFFFFF" width="16" /> <a href="#-5-testes-e-build">5. Testes e Build</a><br><br>
      <img src="https://api.iconify.design/tabler/shield-lock.svg?color=%23FFFFFF" width="16" /> <a href="#-6-segurança">6. Segurança</a>
    </td>
  </tr>
</table>

</div>

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<h2 align="center"><img src="https://api.iconify.design/tabler/layout-grid.svg?color=%23FFFFFF" width="20" /> Visão Geral</h2>

<br>

<div align="center">

| Projeto | Pasta | Tecnologia | Porta |
| :---: | --- | --- | :---: |
| Back-end | `BACKEND-API-4/georuraldatahub` | Java 21, Spring Boot 4.1.1, Maven | 8080 |
| Front-end | `FRONTEND-API-4/georuraldatahub_front` | Vue 3, Vuetify 4, Vite 8 | 5173 |

</div>

<br>

O back-end usa um banco **Oracle** (acessado por **wallet**) e o **OCI Object Storage** para guardar os arquivos. Por isso, antes de executar o sistema, é preciso preparar essas duas partes na Oracle Cloud:

> *1. criar um **usuário no banco Oracle** para acessar o banco com a wallet; 2. criar um **bucket** para ter acesso ao OCI Object Storage.*

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<h2 align="center"><img src="https://api.iconify.design/tabler/checklist.svg?color=%23FFFFFF" width="20" /> Pré-requisitos</h2>

<br>

<div align="center">

| Item | Versão / Observação |
| --- | --- |
| JDK | **21** |
| Node.js e npm | Node `^22.18.0` ou `>=24.12.0` |
| Maven | Não precisa instalar: o projeto traz o `mvnw` |
| Conta na Oracle Cloud (OCI) | Com banco Oracle e permissão para criar bucket |
| Git | Para clonar o repositório |

</div>

<br>

```bash
java -version    # deve mostrar 21
node -v
```

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<h2 align="center"><img src="https://api.iconify.design/tabler/database.svg?color=%23FFFFFF" width="20" /> 1. Banco de Dados Oracle</h2>

<br>

### 1.1 Baixar a wallet

1. No console da OCI, abra o banco de dados.
2. Clique em **Conexão de banco de dados** e depois em **Baixar wallet**.
3. Extraia o conteúdo em `BACKEND-API-4/georuraldatahub/wallet/`.
4. Anote o **alias** do banco: é um dos nomes listados no arquivo `tnsnames.ora` da wallet.

### 1.2 Criar um usuário no banco

Para que a aplicação tenha acesso ao banco pela wallet, é **necessário criar um usuário no Oracle**. Conecte-se como `ADMIN` (por exemplo, em *Database Actions → SQL*) e crie o usuário que o back-end vai usar.

Exemplo (ajuste o nome, a senha e os privilégios à política do seu banco):

```sql
CREATE USER georural IDENTIFIED BY "<senha-forte>";
GRANT DWROLE TO georural;
ALTER USER georural QUOTA UNLIMITED ON DATA;
```

O nome de usuário e a senha criados aqui vão para o `.env` do back-end (seção 3).

### 1.3 Criar as tabelas e carregar os dados iniciais

O back-end **não cria as tabelas** automaticamente: ele apenas valida o schema ao iniciar. O **DDL** (criação das tabelas) e os **inserts iniciais**, necessários para o funcionamento do sistema, estão no repositório do projeto no GitHub: [Acessar](#).

Execute, conectado com o usuário criado no passo 1.2 e nesta ordem:

1. o script de **DDL**;
2. o script de **inserts iniciais**.

> *Sem o DDL o back-end não inicia, e sem os inserts iniciais (por exemplo, os usuários do sistema) a aplicação não funciona corretamente.*

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<h2 align="center"><img src="https://api.iconify.design/tabler/cloud.svg?color=%23FFFFFF" width="20" /> 2. OCI Object Storage</h2>

<br>

### 2.1 Criar o bucket

Para ter acesso ao OCI Object Storage, é **necessário criar um bucket**.

1. No console da OCI, acesse **Armazenamento → Buckets** e clique em **Criar bucket**.
2. Dê um nome ao bucket e crie-o no compartimento desejado.
3. Anote estes três valores, que serão usados no `.env`:

<div align="center">

| Valor | Onde encontrar |
| --- | --- |
| Namespace | Detalhes do bucket (ou detalhes do tenancy) |
| Nome do bucket | Nome informado na criação |
| OCID do compartimento | Detalhes do compartimento |

</div>

### 2.2 Criar a chave de API

1. No console da OCI, abra **Meu perfil → Chaves de API** e clique em **Adicionar chave de API**.
2. Baixe a chave privada (`.pem`) e copie o conteúdo do arquivo de configuração exibido.
3. Salve os dois em `BACKEND-API-4/georuraldatahub/.oci/`, com os nomes `config` e `oci_api_key.pem`.
4. Confira se o `key_file` dentro do `config` aponta para o arquivo `.pem`.

O usuário da chave precisa de permissão para ler e gravar objetos no bucket.

> *Sem o arquivo de configuração do OCI, o back-end não inicia.*

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<h2 align="center"><img src="https://api.iconify.design/tabler/server.svg?color=%23FFFFFF" width="20" /> 3. Back-end</h2>

<br>

```bash
cd BACKEND-API-4/georuraldatahub
cp .env.example .env
```

Preencha o `.env`:

```properties
CHAVE_URL_DATASOURCE=jdbc:oracle:thin:@<alias>?TNS_ADMIN=<caminho da pasta wallet>
CHAVE_USERNAME_DATABASE=<usuario criado no passo 1.2>
CHAVE_DATABASE_PASSWORD=<senha do usuario>

OCI_NAMESPACE=<namespace do bucket>
OCI_BUCKET_NAME=<nome do bucket>
OCI_COMPARTMENT_ID=<ocid do compartimento>

# Opcionais
# OCI_CONFIG_FILE=<caminho do arquivo config do OCI>
# OCI_CONFIG_PROFILE=DEFAULT
# PROCESSING_PERSISTENCE_ENABLED=true
```

<div align="center">

| Variável | Descrição |
| --- | --- |
| `CHAVE_URL_DATASOURCE` | URL JDBC com o alias do banco e o caminho da wallet (`TNS_ADMIN`), por exemplo `./wallet` |
| `CHAVE_USERNAME_DATABASE` / `CHAVE_DATABASE_PASSWORD` | Usuário e senha criados no passo 1.2 |
| `OCI_NAMESPACE` / `OCI_BUCKET_NAME` / `OCI_COMPARTMENT_ID` | Valores do bucket (passo 2.1) |
| `OCI_CONFIG_FILE` / `OCI_CONFIG_PROFILE` | Opcionais: outro local ou perfil do arquivo de configuração do OCI |
| `PROCESSING_PERSISTENCE_ENABLED` | Opcional. `true` habilita o tratamento geoespacial (BE-07); exige as tabelas `execucao_tratamento` e `raster`. Padrão: `false` |

</div>

<br>

Execute **a partir da pasta `georuraldatahub`**, onde ficam o `.env`, a `wallet/` e o `.oci/`:

```bash
./mvnw spring-boot:run          # Windows: mvnw.cmd spring-boot:run
```

Para conferir, acesse `http://localhost:8080/usuarios`. Uma resposta JSON indica que a API, o banco e o schema estão corretos.

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<h2 align="center"><img src="https://api.iconify.design/tabler/browser.svg?color=%23FFFFFF" width="20" /> 4. Front-end</h2>

<br>

```bash
cd FRONTEND-API-4/georuraldatahub_front
npm install
```

Crie (ou confira) o arquivo `.env` com o endereço do back-end:

```properties
VITE_API_BASE_URL=http://localhost:8080
```

Execute:

```bash
npm run dev
```

Abra `http://localhost:5173`. Em desenvolvimento, o menu lateral tem um seletor para escolher o usuário (perfil) da sessão, listado a partir dos usuários cadastrados no banco.

> *Depois de alterar o `.env`, reinicie o `npm run dev`.*

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<h2 align="center"><img src="https://api.iconify.design/tabler/flask.svg?color=%23FFFFFF" width="20" /> 5. Testes e Build</h2>

<br>

```bash
# Back-end (os testes de contexto exigem banco, wallet e OCI configurados)
cd BACKEND-API-4/georuraldatahub
./mvnw test
./mvnw clean package -DskipTests     # gera o jar em target/

# Front-end
cd FRONTEND-API-4/georuraldatahub_front
npx vitest run                       # testes (npm run test:unit abre o modo observação)
npm run build                        # confere os tipos e gera a pasta dist/
```

> *Defina `VITE_API_BASE_URL` com o endereço público da API **antes** do `npm run build`: o valor é embutido no código.*

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />

<br>

<h2 align="center"><img src="https://api.iconify.design/tabler/shield-lock.svg?color=%23FFFFFF" width="20" /> 6. Segurança</h2>

<br>

Nunca versione o `.env`, a pasta `wallet/`, a pasta `.oci/` nem arquivos `.pem`. O `.gitignore` do back-end já os ignora; mantenha assim.

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:FE5000,100:FFA300&height=4" />
