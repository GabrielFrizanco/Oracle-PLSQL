CREATE TABLE produtos(cod_prod INT PRIMARY KEY,
		      nm_produto VARCHAR(100),
		      desc_produto VARCHAR(120),
		      quant_produto INT,
		      preco_produto NUMBER(10,2)
);

CREATE TABLE compras(cod_prod INT,
		     quant_produto INT,
		     preco_produto NUMBER(10,2),
		     data_compra DATE
);

ALTER TABLE compras ADD CONSTRAINT FK_COD_PRODUTO FOREIGN KEY(cod_prod) REFERENCES produtos(cod_prod);
