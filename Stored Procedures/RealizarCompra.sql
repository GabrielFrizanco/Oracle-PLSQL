--- FAÇA UMA PROCEDURE PARA REALIZAR UMA COMPRA DE UM PRODUTO

CREATE OR REPLACE PROCEDURE Prc_Compra_Produto(codigo IN NUMBER, quantidade IN NUMBER) IS


V_COD_PROD NUMBER(10) := 0;

V_QUANT_PROD NUMBER (3) := 0;

V_PRECO_PROD DECIMAL(10,2) := 0;

V_ID_COMPRA NUMBER(10) := 0;


V_DATA_ATUAL DATE := NULL;

BEGIN

    SELECT SYSDATE

    INTO V_DATA_ATUAL

    FROM DUAL;

    SELECT cod_prod, quant_produto, preco_produto

    INTO V_COD_PROD, V_QUANT_PROD, V_PRECO_PROD

    FROM produtos

    WHERE cod_prod = codigo;


    
    BEGIN

        IF V_QUANT_PROD = 0 THEN

            DBMS_OUTPUT.PUT_LINE('SEM PRODUTO NO ESTOQUE!');


            
        ELSIF quantidade > V_QUANT_PROD THEN

            DBMS_OUTPUT.PUT_LINE('QUANTIDADE INSUFICIENTE! QUANTIDADE NO ESTOQUE: ' || V_QUANT_PROD);


        
        ELSE

            UPDATE produtos SET

            quant_produto = quant_produto - quantidade

            WHERE cod_prod = codigo;


            
        END IF;

    END;


    
    BEGIN

        INSERT INTO compras(id_compra, cod_prod, quant_produto, preco_produto, data_compra) VALUES(id_compra.nextval, V_COD_PROD, quantidade, V_PRECO_PROD*quantidade, V_DATA_ATUAL);

    END;

END;




--- EXECUTAR A PROCEDURE
EXECUTE Prc_Compra_Produto(1, 21);