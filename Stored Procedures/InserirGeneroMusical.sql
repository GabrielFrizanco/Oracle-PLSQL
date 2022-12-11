--- CRIE UMA PROCEDURE PARA INSERIR OUTROS GENEROS, APENAS PASSANDO UM PARÂMETRO
CREATE OR REPLACE PROCEDURE Prc_Generos(nm_genero IN VARCHAR) IS

V_COD_GENERO NUMBER(10) := 0;

BEGIN
    SELECT MAX(cod_genero)+1
    INTO V_COD_GENERO FROM generos;   

    INSERT INTO Generos(cod_genero, ds_genero) VALUES(V_COD_GENERO, nm_genero);
END;

--- EXECUTAR
EXECUTE Prc_Generos('INDIE ROCK');
