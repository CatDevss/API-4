-- Criação das tabelas
CREATE TABLE IF NOT EXISTS usuario (
    usr_id     NUMBER
        GENERATED AS IDENTITY
    PRIMARY KEY,
    usr_nome   VARCHAR2(100) NOT NULL,
    usr_email  VARCHAR2(100) NOT NULL,
    usr_tipo   VARCHAR2(20),
    usr_status NUMBER(1, 0) DEFAULT 1 NOT NULL,
    CONSTRAINT unique_email UNIQUE ( usr_email ),
    CONSTRAINT chk_usuario_tipo
        CHECK ( usr_tipo IN ( 'ADMIN', 'OPERADOR', 'ANALISTA', 'GESTOR', 'AUDITOR' ) ),
    CONSTRAINT chk_usuario_status CHECK ( usr_status IN ( 0, 1 ) )
);

COMMENT ON COLUMN usuario.usr_tipo IS
    'ADMIN, OPERADOR, ANALISTA, GESTOR, AUDITOR';

CREATE TABLE IF NOT EXISTS fonte (
    fon_id           NUMBER
        GENERATED AS IDENTITY
    PRIMARY KEY,
    fon_nome         VARCHAR2(100) NOT NULL,
    fon_url          VARCHAR2(200) NOT NULL,
    fon_descricao    VARCHAR2(500),
    fon_data_criacao TIMESTAMP DEFAULT current_timestamp NOT NULL,
    usr_id           NUMBER NOT NULL,
    CONSTRAINT fk_fonte_usuario FOREIGN KEY ( usr_id )
        REFERENCES usuario ( usr_id ),
    CONSTRAINT unique_fonte UNIQUE ( fon_nome )
);

CREATE TABLE IF NOT EXISTS dicionario (
    dic_id        NUMBER
        GENERATED AS IDENTITY
    PRIMARY KEY,
    fon_id        NUMBER NOT NULL,
    dic_nome      VARCHAR2(100) NOT NULL,
    dic_descricao VARCHAR2(500),
    dic_versao    NUMBER(2, 0) DEFAULT 1,
    dic_estrutura VARCHAR2(10000),
    dic_criado_em TIMESTAMP DEFAULT current_timestamp NOT NULL,
    CONSTRAINT fk_fonte_dicionario FOREIGN KEY ( fon_id )
        REFERENCES fonte ( fon_id ),
    CONSTRAINT dic_estrutura_json CHECK ( dic_estrutura IS JSON )
);

CREATE TABLE IF NOT EXISTS conjunto (
    con_id   NUMBER
        GENERATED AS IDENTITY
    PRIMARY KEY,
    con_nome VARCHAR2(100) NOT NULL,
    usr_id   NUMBER,
    CONSTRAINT fk_conjunto_usuario FOREIGN KEY ( usr_id )
        REFERENCES usuario ( usr_id )
);

CREATE TABLE IF NOT EXISTS ingestao (
    ing_id     NUMBER
        GENERATED AS IDENTITY
    PRIMARY KEY,
    dic_id     NUMBER NOT NULL,
    usr_id     NUMBER NOT NULL,
    ing_status VARCHAR2(20) NOT NULL,
    ing_inicio TIMESTAMP DEFAULT current_timestamp,
    CONSTRAINT fk_ingestao_dicionario FOREIGN KEY ( dic_id )
        REFERENCES dicionario ( dic_id ),
    CONSTRAINT fk_ingestao_usuario FOREIGN KEY ( usr_id )
        REFERENCES usuario ( usr_id ),
    CONSTRAINT chk_ingestao_status
        CHECK ( ing_status IN ( 'CONCLUIDO', 'ERRO', 'CANCELADO' ) )
);

COMMENT ON COLUMN ingestao.ing_status IS
    'CONCLUIDO, ERRO, CANCELADO';

CREATE TABLE IF NOT EXISTS arquivo (
    arq_id               NUMBER
        GENERATED AS IDENTITY
    PRIMARY KEY,
    ing_id               NUMBER NOT NULL,
    arq_nome             VARCHAR2(200) NOT NULL,
    arq_formato          VARCHAR2(10) NOT NULL,
    arq_tamanho          NUMBER(19, 0) NOT NULL,
    arq_hash             VARCHAR2(300) NOT NULL,
    arq_localizacao      VARCHAR2(500) NOT NULL,
    arq_data_recebimento TIMESTAMP DEFAULT current_timestamp NOT NULL,
    CONSTRAINT fk_arquivo_ingestao FOREIGN KEY ( ing_id )
        REFERENCES ingestao ( ing_id )
);

COMMENT ON COLUMN arquivo.arq_hash IS
    'Hash SHA-256';

COMMENT ON COLUMN arquivo.arq_localizacao IS
    'Localização do arquivo original imutável';

CREATE TABLE IF NOT EXISTS conjunto_arquivo (
    con_id NUMBER NOT NULL,
    arq_id NUMBER NOT NULL,
    CONSTRAINT pk_conjunto_arquivo PRIMARY KEY ( con_id,
                                                 arq_id ),
    CONSTRAINT fk_conjunto_arquivo_conjunto FOREIGN KEY ( con_id )
        REFERENCES conjunto ( con_id ),
    CONSTRAINT fk_conjunto_arquivo_arquivo FOREIGN KEY ( arq_id )
        REFERENCES arquivo ( arq_id )
);

CREATE TABLE IF NOT EXISTS versao (
    ver_id          NUMBER
        GENERATED AS IDENTITY
    PRIMARY KEY,
    arq_id          NUMBER NOT NULL,
    ver_numero      NUMBER NOT NULL,
    ver_status      VARCHAR2(20) NOT NULL,
    ver_localizacao VARCHAR2(500) NOT NULL,
    ver_criada_em   TIMESTAMP DEFAULT current_timestamp NOT NULL,
    CONSTRAINT fk_versao_arquivo FOREIGN KEY ( arq_id )
        REFERENCES arquivo ( arq_id ),
    CONSTRAINT chk_versao_status
        CHECK ( ver_status IN ( 'BRUTA', 'QUARENTENA', 'TRATADA', 'PUBLICADA' ) ),
    CONSTRAINT uq_versao_arquivo_numero UNIQUE ( arq_id,
                                                 ver_numero )
);

COMMENT ON COLUMN versao.ver_status IS
    'BRUTA, QUARENTENA, TRATADA, PUBLICADA';

CREATE TABLE IF NOT EXISTS quarentena (
    qua_id             NUMBER
        GENERATED AS IDENTITY
    PRIMARY KEY,
    ing_id             NUMBER NOT NULL,
    arq_id             NUMBER,
    qua_status         VARCHAR2(30) NOT NULL,
    qua_motivo         VARCHAR2(500) NOT NULL,
    qua_data_entrada   TIMESTAMP DEFAULT current_timestamp NOT NULL,
    qua_data_resolucao TIMESTAMP,
    CONSTRAINT fk_qaurentena_ingestao FOREIGN KEY ( ing_id )
        REFERENCES ingestao ( ing_id ),
    CONSTRAINT fk_quarentena_arquivo FOREIGN KEY ( arq_id )
        REFERENCES arquivo ( arq_id )
);

CREATE TABLE IF NOT EXISTS auditoria (
    aud_id       NUMBER
        GENERATED AS IDENTITY
    PRIMARY KEY,
    usr_id       NUMBER,
    arq_id       NUMBER,
    ing_id       NUMBER,
    aud_entidade VARCHAR2(100),
    aud_acao     VARCHAR2(10) NOT NULL,
    aud_detalhes VARCHAR2(4000),
    aud_data     TIMESTAMP DEFAULT current_timestamp NOT NULL,
    CONSTRAINT fk_auditoria_usuario FOREIGN KEY ( usr_id )
        REFERENCES usuario ( usr_id ),
    CONSTRAINT fk_auditoria_arquivo FOREIGN KEY ( arq_id )
        REFERENCES arquivo ( arq_id ),
    CONSTRAINT fk_auditoria_ingestao FOREIGN KEY ( ing_id )
        REFERENCES ingestao ( ing_id ),
    CONSTRAINT chk_auditoria_acao
        CHECK ( aud_acao IN ( 'INSERT', 'UPDATE', 'DELETE' ) )
);

-- Triggers de validação e segurança
CREATE OR REPLACE TRIGGER trg_impedir_exclusao_usuario
BEFORE DELETE ON usuario
BEGIN
    RAISE_APPLICATION_ERROR(
        -20001,
        'Não é permitido excluir usuários. Inative o usuário.'
    );
END;
/

CREATE OR REPLACE TRIGGER trg_valida_tipo_fonte_usr BEFORE
    INSERT OR UPDATE ON fonte
    FOR EACH ROW
DECLARE
    v_usr_tipo usuario.usr_tipo%TYPE;
BEGIN
    SELECT
        usr_tipo
    INTO v_usr_tipo
    FROM
        usuario
    WHERE
            usr_id = :new.usr_id
        AND usr_status = 1;

    IF v_usr_tipo IS NULL
       OR v_usr_tipo NOT IN ( 'ADMIN', 'GESTOR' ) THEN
        raise_application_error(-20001, 'Usuário não autorizado para cadastrar fonte.');
    END IF;

EXCEPTION
    WHEN no_data_found THEN
        raise_application_error(-20002, 'O usuário informado para a fonte não existe.');
END;
/


-- Triggers de auditoria

CREATE OR REPLACE TRIGGER trg_bloqueia_alteracao_auditoria BEFORE
    UPDATE OR DELETE ON auditoria
BEGIN
    raise_application_error(-20090, 'Registros de auditoria são imutáveis.');
END;
/

-- Usuário
CREATE OR REPLACE TRIGGER trg_auditoria_usuario
AFTER INSERT OR UPDATE OR DELETE ON usuario
FOR EACH ROW
DECLARE
    v_acao     VARCHAR2(10);
    v_detalhes VARCHAR2(4000);
    v_usr_id   NUMBER;
BEGIN
    IF INSERTING THEN
        v_acao := 'INSERT';
        v_usr_id := :NEW.usr_id;

        v_detalhes := 'Novo usuario inserido: '
                      || :NEW.usr_nome
                      || ' ('
                      || :NEW.usr_email
                      || ')';

    ELSIF UPDATING THEN
        v_acao := 'UPDATE';
        v_usr_id := :NEW.usr_id;

        v_detalhes := 'Usuario atualizado ID: '
                      || :OLD.usr_id
                      || ' Status anterior: '
                      || :OLD.usr_status
                      || ' Novo Status: '
                      || :NEW.usr_status;

    ELSIF DELETING THEN
        v_acao := 'DELETE';
        v_usr_id := NULL;

        v_detalhes := 'Usuario removido: '
                      || :OLD.usr_nome
                      || ' (Email: '
                      || :OLD.usr_email
                      || ')';
    END IF;

    INSERT INTO auditoria (
        usr_id,
        arq_id,
        ing_id,
        aud_entidade,
        aud_acao,
        aud_detalhes
    ) VALUES (
        v_usr_id,
        NULL,
        NULL,
        'USUARIO',
        v_acao,
        v_detalhes
    );
END;
/

-- Fonte
CREATE OR REPLACE TRIGGER trg_aud_fonte
AFTER INSERT OR UPDATE OR DELETE ON fonte
FOR EACH ROW
DECLARE
    v_acao     VARCHAR2(10);
    v_detalhes VARCHAR2(4000);
    v_usr_id   NUMBER;
BEGIN
    v_usr_id := COALESCE(:NEW.usr_id, :OLD.usr_id);

    IF INSERTING THEN
        v_acao := 'INSERT';

        v_detalhes := 'Nova fonte de dados criada: '
                      || :NEW.fon_nome
                      || ' | URL: '
                      || :NEW.fon_url;

    ELSIF UPDATING THEN
        v_acao := 'UPDATE';

        v_detalhes := 'Fonte atualizada ID: '
                      || :OLD.fon_id
                      || ' | Nome: '
                      || :NEW.fon_nome;

    ELSIF DELETING THEN
        v_acao := 'DELETE';

        v_detalhes := 'Fonte removida: '
                      || :OLD.fon_nome;
    END IF;

    INSERT INTO auditoria (
        usr_id,
        arq_id,
        ing_id,
        aud_entidade,
        aud_acao,
        aud_detalhes
    ) VALUES (
        v_usr_id,
        NULL,
        NULL,
        'FONTE',
        v_acao,
        v_detalhes
    );
END;
/

-- Dicionário
CREATE OR REPLACE TRIGGER trg_aud_dicionario
AFTER INSERT OR UPDATE OR DELETE ON dicionario
FOR EACH ROW
DECLARE
    v_acao     VARCHAR2(10);
    v_detalhes VARCHAR2(4000);
    v_usr_id   NUMBER;
BEGIN
    BEGIN
        SELECT usr_id
        INTO v_usr_id
        FROM fonte
        WHERE fon_id = COALESCE(:NEW.fon_id, :OLD.fon_id);

    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            v_usr_id := NULL;
    END;

    IF INSERTING THEN
        v_acao := 'INSERT';

        v_detalhes := 'Novo dicionario cadastrado: '
                      || :NEW.dic_nome
                      || ' (Versao: '
                      || :NEW.dic_versao
                      || ')';

    ELSIF UPDATING THEN
        v_acao := 'UPDATE';

        v_detalhes := 'Dicionario atualizado ID: '
                      || :OLD.dic_id
                      || ' | Versao: '
                      || :OLD.dic_versao
                      || ' -> '
                      || :NEW.dic_versao;

    ELSIF DELETING THEN
        v_acao := 'DELETE';

        v_detalhes := 'Dicionario removido: '
                      || :OLD.dic_nome;
    END IF;

    INSERT INTO auditoria (
        usr_id,
        arq_id,
        ing_id,
        aud_entidade,
        aud_acao,
        aud_detalhes
    ) VALUES (
        v_usr_id,
        NULL,
        NULL,
        'DICIONARIO',
        v_acao,
        v_detalhes
    );
END;
/

-- Ingestão
CREATE OR REPLACE TRIGGER trg_aud_ingestao
AFTER INSERT OR UPDATE OR DELETE ON ingestao
FOR EACH ROW
DECLARE
    v_acao     VARCHAR2(10);
    v_detalhes VARCHAR2(4000);
    v_usr_id   NUMBER;
    v_ing_id   NUMBER;
BEGIN
    v_usr_id := COALESCE(:NEW.usr_id, :OLD.usr_id);

    IF INSERTING THEN
        v_acao := 'INSERT';
        v_ing_id := :NEW.ing_id;

        v_detalhes := 'Nova ingestao iniciada (ID: '
                      || :NEW.ing_id
                      || ') | Status: '
                      || :NEW.ing_status;

    ELSIF UPDATING THEN
        v_acao := 'UPDATE';
        v_ing_id := :NEW.ing_id;

        v_detalhes := 'Ingestao atualizada ID: '
                      || :OLD.ing_id
                      || ' | Status: '
                      || :OLD.ing_status
                      || ' -> '
                      || :NEW.ing_status;

    ELSIF DELETING THEN
        v_acao := 'DELETE';
        v_ing_id := NULL;

        v_detalhes := 'Registro de ingestao removido (ID: '
                      || :OLD.ing_id
                      || ')';
    END IF;

    INSERT INTO auditoria (
        usr_id,
        arq_id,
        ing_id,
        aud_entidade,
        aud_acao,
        aud_detalhes
    ) VALUES (
        v_usr_id,
        NULL,
        v_ing_id,
        'INGESTAO',
        v_acao,
        v_detalhes
    );
END;
/

-- Arquivo
CREATE OR REPLACE TRIGGER trg_aud_arquivo
AFTER INSERT OR UPDATE OR DELETE ON arquivo
FOR EACH ROW
DECLARE
    v_acao     VARCHAR2(10);
    v_detalhes VARCHAR2(4000);
    v_usr_id   NUMBER;
    v_arq_id   NUMBER;
    v_ing_id   NUMBER;
BEGIN
    BEGIN
        SELECT usr_id
        INTO v_usr_id
        FROM ingestao
        WHERE ing_id = COALESCE(:NEW.ing_id, :OLD.ing_id);

    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            v_usr_id := NULL;
    END;

    IF INSERTING THEN
        v_acao := 'INSERT';
        v_arq_id := :NEW.arq_id;
        v_ing_id := :NEW.ing_id;

        v_detalhes := 'Arquivo registrado: '
                      || :NEW.arq_nome
                      || ' | Formato: '
                      || :NEW.arq_formato;

    ELSIF UPDATING THEN
        v_acao := 'UPDATE';
        v_arq_id := :NEW.arq_id;
        v_ing_id := :NEW.ing_id;

        v_detalhes := 'Metadados de arquivo atualizados ID: '
                      || :OLD.arq_id;

    ELSIF DELETING THEN
        v_acao := 'DELETE';
        v_arq_id := NULL;
        v_ing_id := :OLD.ing_id;

        v_detalhes := 'Arquivo removido: '
                      || :OLD.arq_nome;
    END IF;

    INSERT INTO auditoria (
        usr_id,
        arq_id,
        ing_id,
        aud_entidade,
        aud_acao,
        aud_detalhes
    ) VALUES (
        v_usr_id,
        v_arq_id,
        v_ing_id,
        'ARQUIVO',
        v_acao,
        v_detalhes
    );
END;
/

-- Quarentena
CREATE OR REPLACE TRIGGER trg_aud_quarentena
AFTER INSERT OR UPDATE OR DELETE ON quarentena
FOR EACH ROW
DECLARE
    v_acao     VARCHAR2(10);
    v_detalhes VARCHAR2(4000);
    v_usr_id   NUMBER;
    v_ing_id   NUMBER;
BEGIN
    BEGIN
        SELECT usr_id
        INTO v_usr_id
        FROM ingestao
        WHERE ing_id = COALESCE(:NEW.ing_id, :OLD.ing_id);

    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            v_usr_id := NULL;
    END;

    IF INSERTING THEN
        v_acao := 'INSERT';
        v_ing_id := :NEW.ing_id;

        v_detalhes := 'Registro enviado para quarentena | Motivo: '
                      || :NEW.qua_motivo;

    ELSIF UPDATING THEN
        v_acao := 'UPDATE';
        v_ing_id := :NEW.ing_id;

        v_detalhes := 'Quarentena atualizada ID: '
                      || :OLD.qua_id
                      || ' | Status: '
                      || :OLD.qua_status
                      || ' -> '
                      || :NEW.qua_status;

    ELSIF DELETING THEN
        v_acao := 'DELETE';
        v_ing_id := :OLD.ing_id;

        v_detalhes := 'Registro de quarentena removido ID: '
                      || :OLD.qua_id;
    END IF;

    INSERT INTO auditoria (
        usr_id,
        arq_id,
        ing_id,
        aud_entidade,
        aud_acao,
        aud_detalhes
    ) VALUES (
        v_usr_id,
        NULL,
        v_ing_id,
        'QUARENTENA',
        v_acao,
        v_detalhes
    );
END;
/

-- Conjunto
CREATE OR REPLACE TRIGGER trg_aud_conjunto
AFTER INSERT OR UPDATE OR DELETE ON conjunto
FOR EACH ROW
DECLARE
    v_acao     VARCHAR2(10);
    v_detalhes VARCHAR2(4000);
    v_usr_id   NUMBER;
BEGIN
    v_usr_id := COALESCE(:NEW.usr_id, :OLD.usr_id);

    IF INSERTING THEN
        v_acao := 'INSERT';

        v_detalhes := 'Novo conjunto criado: '
                      || :NEW.con_nome;

    ELSIF UPDATING THEN
        v_acao := 'UPDATE';

        v_detalhes := 'Conjunto atualizado ID: '
                      || :OLD.con_id
                      || ' | Nome: '
                      || :NEW.con_nome;

    ELSIF DELETING THEN
        v_acao := 'DELETE';

        v_detalhes := 'Conjunto removido: '
                      || :OLD.con_nome;
    END IF;

    INSERT INTO auditoria (
        usr_id,
        arq_id,
        ing_id,
        aud_entidade,
        aud_acao,
        aud_detalhes
    ) VALUES (
        v_usr_id,
        NULL,
        NULL,
        'CONJUNTO',
        v_acao,
        v_detalhes
    );
END;
/

-- Versão
CREATE OR REPLACE TRIGGER trg_aud_versao
AFTER INSERT OR UPDATE OR DELETE ON versao
FOR EACH ROW
DECLARE
    v_acao     VARCHAR2(10);
    v_detalhes VARCHAR2(4000);
    v_usr_id   NUMBER;
    v_arq_id   NUMBER;
BEGIN
    v_arq_id := COALESCE(:NEW.arq_id, :OLD.arq_id);

    BEGIN
        SELECT i.usr_id
        INTO v_usr_id
        FROM arquivo a
        JOIN ingestao i ON i.ing_id = a.ing_id
        WHERE a.arq_id = v_arq_id;

    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            v_usr_id := NULL;
    END;

    IF INSERTING THEN
        v_acao := 'INSERT';

        v_detalhes := 'Nova versao gerada: '
                      || :NEW.ver_numero
                      || ' | Status: '
                      || :NEW.ver_status;

    ELSIF UPDATING THEN
        v_acao := 'UPDATE';

        v_detalhes := 'Versao atualizada ID: '
                      || :OLD.ver_id
                      || ' | Status: '
                      || :OLD.ver_status
                      || ' -> '
                      || :NEW.ver_status;

    ELSIF DELETING THEN
        v_acao := 'DELETE';

        v_detalhes := 'Versao removida ID: '
                      || :OLD.ver_id;
    END IF;

    INSERT INTO auditoria (
        usr_id,
        arq_id,
        ing_id,
        aud_entidade,
        aud_acao,
        aud_detalhes
    ) VALUES (
        v_usr_id,
        v_arq_id,
        NULL,
        'VERSAO',
        v_acao,
        v_detalhes
    );
END;
/

-- Associação entre conjunto e arquivo
CREATE OR REPLACE TRIGGER trg_aud_conjunto_arquivo
AFTER INSERT OR DELETE ON conjunto_arquivo
FOR EACH ROW
DECLARE
    v_acao     VARCHAR2(10);
    v_detalhes VARCHAR2(4000);
    v_usr_id   NUMBER;
    v_con_id   NUMBER;
    v_arq_id   NUMBER;
BEGIN
    v_con_id := COALESCE(:NEW.con_id, :OLD.con_id);
    v_arq_id := COALESCE(:NEW.arq_id, :OLD.arq_id);

    BEGIN
        SELECT usr_id
        INTO v_usr_id
        FROM conjunto
        WHERE con_id = v_con_id;

    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            v_usr_id := NULL;
    END;

    IF INSERTING THEN
        v_acao := 'INSERT';

        v_detalhes := 'Arquivo ID '
                      || :NEW.arq_id
                      || ' associado ao Conjunto ID '
                      || :NEW.con_id;

    ELSIF DELETING THEN
        v_acao := 'DELETE';

        v_detalhes := 'Arquivo ID '
                      || :OLD.arq_id
                      || ' desassociado do Conjunto ID '
                      || :OLD.con_id;
    END IF;

    INSERT INTO auditoria (
        usr_id,
        arq_id,
        ing_id,
        aud_entidade,
        aud_acao,
        aud_detalhes
    ) VALUES (
        v_usr_id,
        v_arq_id,
        NULL,
        'CONJUNTO_ARQUIVO',
        v_acao,
        v_detalhes
    );
END;
/