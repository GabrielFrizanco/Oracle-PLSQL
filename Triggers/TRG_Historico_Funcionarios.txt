--- FAÇA UMA TRIGGER QUE REGISTRA OS HISTÓRICO DE COMANDOS (INSERT, UPDATE E DELETE)


DROP TABLE funcionarios;
DROP TABLE histFuncionarios;

CREATE TABLE Funcionarios (id_funcionario int primary key, 
nome_funcionario varchar2(100)
);

CREATE TABLE histFuncionarios (id_funcionario_novo int, 
nome_funcionario_novo varchar2(100),
id_funcionario_velho int,
nome_funcionario_velho varchar2(100),
usuario varchar2(100), 
data_dml date, 
tipo_comando varchar2(1)
);


DROP TRIGGER TRG_Hisotorico_Comando

CREATE OR REPLACE TRIGGER TRG_Hisotorico_Comando
    AFTER INSERT OR UPDATE OR DELETE ON Funcionarios
    FOR EACH ROW
    ---REFERENCING NEW AS NEW OLD AS OLD

DECLARE

    V_DATA_SISTEMA DATE := NULL;
    V_USUARIO VARCHAR2(50) := NULL;
    V_COMANDO VARCHAR2(1) := NULL;

    BEGIN
        SELECT sysdate, user INTO V_DATA_SISTEMA, V_USUARIO 
        FROM DUAL;

--- VERIFICAÇÃO DO TIPO DO COMANDO

        IF INSERTING THEN
            V_COMANDO := 'I';
        ELSE
            IF UPDATING THEN
                V_COMANDO := 'U';
        ELSE
            V_COMANDO := 'D';
            END IF;
        END IF;

    BEGIN
        INSERT INTO histFuncionarios (
            id_funcionario_novo,
            nome_funcionario_novo,
            id_funcionario_velho,
            nome_funcionario_velho,
            usuario,
            data_dml,
            tipo_comando
        ) VALUES (
            :new.id_funcionario,
            :new.nome_funcionario,
            :old.id_funcionario,
            :old.nome_funcionario,
            V_USUARIO,
            V_DATA_SISTEMA,
            V_COMANDO
        );
    
        EXCEPTION
            WHEN OTHERS THEN
                dbms_output.put_line('ERRO NA TABELA!');
            END;
END;

INSERT INTO funcionarios values (1, 'Carla');

select * from histFuncionarios;

update funcionarios set
nome_funcionario = 'Carlos'
where id_funcionario = 1;