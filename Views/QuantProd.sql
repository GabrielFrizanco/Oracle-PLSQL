--- CRIE UMA VISÃO INFORMANDO A QUANTIDADE DE PRODUTOS POR COD_PROD


CREATE OR REPLACE VIEW VW_QUANT_PROD AS

SELECT rp.cod_prod, rp.quant_prod, c.ds_cidade, c.uf

FROM RegistroProdutos rp

INNER JOIN Cidades c ON rp.id_cidade = c.id_cidade;



SELECT * FROM VW_QUANT_PROD

WHERE cod_prod = 6;