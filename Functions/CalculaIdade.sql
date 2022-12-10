-- DESAFIO: CÁLCULE A SUA IDADE

CREATE OR REPLACE FUNCTION Func_Idade(ano_nasc in number) RETURN NUMBER IS

    idade NUMBER(4) := 0;

    situacao VARCHAR(20) := NULL;

BEGIN

    idade := (TO_CHAR(sysdate, 'YYYY') - ano_nasc);
    
    IF idade >= 18 THEN

        situacao := '+18';

    ELSE

        situacao := '-18';

    END IF;

    
    RETURN idade;

END;