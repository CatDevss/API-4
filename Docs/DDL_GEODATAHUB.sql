CREATE TABLE IF NOT EXISTS usuario (
    usr_id     NUMBER
        GENERATED AS IDENTITY
    PRIMARY KEY,
    usr_nome   VARCHAR2(100) NOT NULL,
    usr_email  VARCHAR2(100) UNIQUE NOT NULL,
    usr_senha  VARCHAR2(100) NOT NULL,
    usr_tipo   VARCHAR2(20),
    usr_status NUMBER(1, 0) DEFAULT 1 NOT NULL
);

CREATE TABLE IF NOT EXISTS fonte (
    fon_id           NUMBER
        GENERATED AS IDENTITY
    PRIMARY KEY,
    fon_nome         VARCHAR2(100) UNIQUE NOT NULL,
    fon_data_criacao TIMESTAMP DEFAULT current_timestamp NOT NULL,
    fon_url          VARCHAR2(500) NOT NULL,
    usr_id           NUMBER NOT NULL
);

CREATE TABLE IF NOT EXISTS conjunto (
    con_id   NUMBER
        GENERATED AS IDENTITY
    PRIMARY KEY,
    con_nome VARCHAR2(100) NOT NULL,
    fon_id   NUMBER NOT NULL
);

CREATE TABLE IF NOT EXISTS versao (
    ver_id           NUMBER
        GENERATED AS IDENTITY
    PRIMARY KEY,
    con_id           NUMBER NOT NULL,
    ver_data_criacao TIMESTAMP DEFAULT current_timestamp NOT NULL,
    ver_usr_criacao  NUMBER NOT NULL
);

CREATE TABLE IF NOT EXISTS arquivo (
    arq_id          NUMBER
        GENERATED AS IDENTITY
    PRIMARY KEY,
    ver_id          NUMBER NOT NULL,
    arq_nome        VARCHAR2(100),
    arq_formato     VARCHAR2(10),
    arq_tamanho     NUMBER NOT NULL,
    arq_hash        VARCHAR2(100) NOT NULL,
    arq_localizacao VARCHAR2(200) NOT NULL
);

CREATE TABLE IF NOT EXISTS auditoria (
    aud_id      NUMBER
        GENERATED AS IDENTITY
    PRIMARY KEY,
    usr_id      NUMBER NOT NULL,
    arq_id      NUMBER NOT NULL,
    aud_acao    VARCHAR2(100) NOT NULL,
    aud_detalhe VARCHAR2(100),
    aud_data    TIMESTAMP DEFAULT current_timestamp NOT NULL
);

CREATE TABLE IF NOT EXISTS quarentena (
    qua_id           NUMBER
        GENERATED AS IDENTITY
    PRIMARY KEY,
    arq_id           NUMBER NOT NULL,
    usr_id           NUMBER NOT NULL,
    qua_status       VARCHAR2(30) NOT NULL,
    qua_motivo       VARCHAR2(500) NOT NULL,
    qua_data_entrada TIMESTAMP DEFAULT current_timestamp NOT NULL
);

CREATE TABLE IF NOT EXISTS dados_geograficos (
    geo_id NUMBER
        GENERATED AS IDENTITY
    PRIMARY KEY
);

ALTER TABLE usuario
    ADD CONSTRAINT chk_usuario_tipo
        CHECK ( usr_tipo IN ( 'ADMIN', 'OPERADOR', 'ANALISTA', 'GESTOR', 'AUDITOR' ) );

ALTER TABLE usuario
    ADD CONSTRAINT chk_usuario_status CHECK ( usr_status IN ( 0, 1 ) );

ALTER TABLE fonte
    ADD CONSTRAINT fk_fonte_usuario FOREIGN KEY ( usr_id )
        REFERENCES usuario ( usr_id );

ALTER TABLE conjunto
    ADD CONSTRAINT fk_conjunto_fonte FOREIGN KEY ( fon_id )
        REFERENCES fonte ( fon_id );

ALTER TABLE versao
    ADD CONSTRAINT fk_versao_conjunto FOREIGN KEY ( con_id )
        REFERENCES conjunto ( con_id );

ALTER TABLE versao
    ADD CONSTRAINT fk_versao_usuario FOREIGN KEY ( ver_usr_criacao )
        REFERENCES usuario ( usr_id );

ALTER TABLE arquivo
    ADD CONSTRAINT fk_arquivo_versao FOREIGN KEY ( ver_id )
        REFERENCES versao ( ver_id );

ALTER TABLE auditoria
    ADD CONSTRAINT fk_auditoria_usuario FOREIGN KEY ( usr_id )
        REFERENCES usuario ( usr_id );

ALTER TABLE auditoria
    ADD CONSTRAINT fk_auditoria_arquivo FOREIGN KEY ( arq_id )
        REFERENCES arquivo ( arq_id );

ALTER TABLE quarentena
    ADD CONSTRAINT fk_quarentena_arquivo FOREIGN KEY ( arq_id )
        REFERENCES arquivo ( arq_id );

ALTER TABLE quarentena
    ADD CONSTRAINT fk_quarentena_usuario FOREIGN KEY ( usr_id )
        REFERENCES usuario ( usr_id );

COMMENT ON COLUMN usuario.usr_tipo IS
    'ADMIN, OPERADOR, ANALISTA, GESTOR, AUDITOR';

COMMENT ON COLUMN arquivo.arq_hash IS
    'HASH';