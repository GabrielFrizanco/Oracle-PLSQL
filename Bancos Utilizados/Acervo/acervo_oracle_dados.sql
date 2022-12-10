-- DADOS CLASSIFICACOES
INSERT INTO Classificacoes(id_class, ds_class) VALUES(10, 'AMETISTA');
INSERT INTO Classificacoes(id_class, ds_class) VALUES(20, 'DIAMANTE');
INSERT INTO Classificacoes(id_class, ds_class) VALUES(30, 'OURO');
INSERT INTO Classificacoes(id_class, ds_class) VALUES(40, 'PRATA');
INSERT INTO Classificacoes(id_class, ds_class) VALUES(50, 'BRONZE');

-- DADOS FORMATOS
INSERT INTO Formatos(id_formato, ds_formato) VALUES(100, 'VINIL');
INSERT INTO Formatos(id_formato, ds_formato) VALUES(200, 'CD');
INSERT INTO Formatos(id_formato, ds_formato) VALUES(300, 'VHS');
INSERT INTO Formatos(id_formato, ds_formato) VALUES(400, 'CD BOX ACRÍLICO');
INSERT INTO Formatos(id_formato, ds_formato) VALUES(500, 'DVD');
INSERT INTO Formatos(id_formato, ds_formato) VALUES(600, 'FITA CASSETE');
INSERT INTO Formatos(id_formato, ds_formato) VALUES(700, 'FITA MAGNÉTICA');

-- DADOS GENEROS
INSERT INTO Generos(cod_genero, ds_genero) VALUES(1, 'ROCK');
INSERT INTO Generos(cod_genero, ds_genero) VALUES(2, 'POP');
INSERT INTO Generos(cod_genero, ds_genero) VALUES(3, 'ROCK MODERNO');
INSERT INTO Generos(cod_genero, ds_genero) VALUES(4, 'GÓSPEL');
INSERT INTO Generos(cod_genero, ds_genero) VALUES(5, 'SERTANEJO');
INSERT INTO Generos(cod_genero, ds_genero) VALUES(6, 'MPB');
INSERT INTO Generos(cod_genero, ds_genero) VALUES(7, 'FUNK');
INSERT INTO Generos(cod_genero, ds_genero) VALUES(8, 'FUNK CARIOCA');
INSERT INTO Generos(cod_genero, ds_genero) VALUES(9, 'SAMBA');
INSERT INTO Generos(cod_genero, ds_genero) VALUES(10, 'PAGODE');
INSERT INTO Generos(cod_genero, ds_genero) VALUES(11, 'ELETRÔNICA');
INSERT INTO Generos(cod_genero, ds_genero) VALUES(12, 'AXÉ');
INSERT INTO Generos(cod_genero, ds_genero) VALUES(13, 'COUNTRY');
INSERT INTO Generos(cod_genero, ds_genero) VALUES(14, 'FORRÓ');
INSERT INTO Generos(cod_genero, ds_genero) VALUES(15, 'HIPHOP');
INSERT INTO Generos(cod_genero, ds_genero) VALUES(16, 'JAZZ');
INSERT INTO Generos(cod_genero, ds_genero) VALUES(17, 'REGGAE');
INSERT INTO Generos(cod_genero, ds_genero) VALUES(18, 'RAP');
INSERT INTO Generos(cod_genero, ds_genero) VALUES(19, 'DRAMA');
INSERT INTO Generos(cod_genero, ds_genero) VALUES(20, 'AÇÃO');
INSERT INTO Generos(cod_genero, ds_genero) VALUES(21, 'COMÉDIA');
INSERT INTO Generos(cod_genero, ds_genero) VALUES(22, 'ROMANCE');
INSERT INTO Generos(cod_genero, ds_genero) VALUES(23, 'DOCUMENTÁRIO');
INSERT INTO Generos(cod_genero, ds_genero) VALUES(24, 'SUSPENSE');
INSERT INTO Generos(cod_genero, ds_genero) VALUES(25, 'TERROR');
INSERT INTO Generos(cod_genero, ds_genero) VALUES(26, 'COMÉDIA ROMÂNTICA');
INSERT INTO Generos(cod_genero, ds_genero) VALUES(27, 'FICÇÃO CIENTÍFICA');
INSERT INTO Generos(cod_genero, ds_genero) VALUES(28, 'LGBT+');
INSERT INTO Generos(cod_genero, ds_genero) VALUES(29, 'ROCK POP');

-- DADOS TIPOPRODUTOS
INSERT INTO TipoProdutos(id_tipProd, ds_tipProd) VALUES(2, 'FILME');
INSERT INTO TipoProdutos(id_tipProd, ds_tipProd) VALUES(4, 'MÚSICA');
INSERT INTO TipoProdutos(id_tipProd, ds_tipProd) VALUES(6, 'SHOW');
INSERT INTO TipoProdutos(id_tipProd, ds_tipProd) VALUES(8, 'ÁLBUM');
INSERT INTO TipoProdutos(id_tipProd, ds_tipProd) VALUES(10, 'TEATRO');


-- DADOS PRODUTOS
INSERT INTO Produtos(cod_prod, titulo_prod, preco_prod, id_class, id_formato, cod_genero, id_tipProd) VALUES (1, 'THRILLER - MICHAEL JACKSON', 120.00, 10, 100, 1, 8);
INSERT INTO Produtos(cod_prod, titulo_prod, preco_prod, id_class, id_formato, cod_genero, id_tipProd) VALUES (2, 'ATLAS - THE SCORE', 83.50, 30, 100, 29, 8);
INSERT INTO Produtos(cod_prod, titulo_prod, preco_prod, id_class, id_formato, cod_genero, id_tipProd) VALUES (3, 'ATLAS - THE SCORE', 36.00, 30, 200, 29, 8);
INSERT INTO Produtos(cod_prod, titulo_prod, preco_prod, id_class, id_formato, cod_genero, id_tipProd) VALUES (4, 'A FREIRA', 40.00, 20, 200, 25, 2);
INSERT INTO Produtos(cod_prod, titulo_prod, preco_prod, id_class, id_formato, cod_genero, id_tipProd) VALUES (5, 'COMO EU ERA ANTES DE VOCÊ', 56.00, 10, 200, 22, 2);
INSERT INTO Produtos(cod_prod, titulo_prod, preco_prod, id_class, id_formato, cod_genero, id_tipProd) VALUES (6, 'INVOCAÇÃO DO MAL 1', 63.00, 20, 200, 25, 2);

-- DADOS TIPOPESSOAS
INSERT INTO TipoPessoas(id_tipPess, ds_tipPess) VALUES(3, 'ATRIZ');
INSERT INTO TipoPessoas(id_tipPess, ds_tipPess) VALUES(6, 'ATOR');
INSERT INTO TipoPessoas(id_tipPess, ds_tipPess) VALUES(9, 'CANTORA');
INSERT INTO TipoPessoas(id_tipPess, ds_tipPess) VALUES(12, 'CANTOR');
INSERT INTO TipoPessoas(id_tipPess, ds_tipPess) VALUES(15, 'COMPOSITOR');
INSERT INTO TipoPessoas(id_tipPess, ds_tipPess) VALUES(18, 'COMPOSITORA');
INSERT INTO TipoPessoas(id_tipPess, ds_tipPess) VALUES(21, 'INFLUENCER');

-- DADOS REGISTOPESSOAS
INSERT INTO RegistroPessoas(nm_pessoa, cod_prod, id_tipPess) VALUES('MICHAEL JACKSON', 1, 12);
INSERT INTO RegistroPessoas(nm_pessoa, cod_prod, id_tipPess) VALUES('EDDIE ANTHONY RAMIREZ', 2, 12);
INSERT INTO RegistroPessoas(nm_pessoa, cod_prod, id_tipPess) VALUES('EDDIE ANTHONY RAMIREZ', 3, 12);
INSERT INTO RegistroPessoas(nm_pessoa, cod_prod, id_tipPess) VALUES('EDAN DOVER', 2, 12);
INSERT INTO RegistroPessoas(nm_pessoa, cod_prod, id_tipPess) VALUES('EDAN DOVER', 3, 12);
INSERT INTO RegistroPessoas(nm_pessoa, cod_prod, id_tipPess) VALUES('BONNIE AARONS', 4, 3);
INSERT INTO RegistroPessoas(nm_pessoa, cod_prod, id_tipPess) VALUES('JONAS BLOQUET', 4, 6);
INSERT INTO RegistroPessoas(nm_pessoa, cod_prod, id_tipPess) VALUES('VERA FARMIGA', 4, 3);
INSERT INTO RegistroPessoas(nm_pessoa, cod_prod, id_tipPess) VALUES('SAM CLAFLIN', 5, 6);
INSERT INTO RegistroPessoas(nm_pessoa, cod_prod, id_tipPess) VALUES('EMILIA CLARKE', 5, 3);
INSERT INTO RegistroPessoas(nm_pessoa, cod_prod, id_tipPess) VALUES('MATTHEW LEWIS', 5, 6);
INSERT INTO RegistroPessoas(nm_pessoa, cod_prod, id_tipPess) VALUES('MATTHEW LEWIS', 5, 6);
INSERT INTO RegistroPessoas(nm_pessoa, cod_prod, id_tipPess) VALUES('VERA FARMIGA', 6, 3);
INSERT INTO RegistroPessoas(nm_pessoa, cod_prod, id_tipPess) VALUES('PATRICK WILSON', 6, 6);
INSERT INTO RegistroPessoas(nm_pessoa, cod_prod, id_tipPess) VALUES('JOEY KIN', 6, 3);

-- DADOS ESTADOS
INSERT INTO Estados(uf, ds_estado) VALUES('SP', 'SÃO PAULO');
INSERT INTO Estados(uf, ds_estado) VALUES('RJ', 'RIO DE JANEIRO');
INSERT INTO Estados(uf, ds_estado) VALUES('MG', 'MINAS GERAIS');
INSERT INTO Estados(uf, ds_estado) VALUES('PR','PARANA');
INSERT INTO Estados(uf, ds_estado) VALUES('SC', 'SANTA CATARINA');
INSERT INTO Estados(uf, ds_estado) VALUES('PA', 'PARA');
INSERT INTO Estados(uf, ds_estado) VALUES('CE', 'CEARA');
INSERT INTO Estados(uf, ds_estado) VALUES('RS', 'RIO GRANDE DO SUL');
INSERT INTO Estados(uf, ds_estado) VALUES('MA', 'MARANHAO');
INSERT INTO Estados(uf, ds_estado) VALUES('PE', 'PERNAMBUCO');
INSERT INTO Estados(uf, ds_estado) values('SE', 'SERGIPE');
INSERT INTO Estados(uf, ds_estado) values('BA', 'BAHIA');

-- DADOS CIDADES
INSERT INTO Cidades(id_cidade, ds_cidade, uf) VALUES(500, 'SÃO PAULO', 'SP');
INSERT INTO Cidades(id_cidade, ds_cidade, uf) VALUES(501, 'ATIBAIA', 'SP');
INSERT INTO Cidades(id_cidade, ds_cidade, uf) VALUES(502, 'BRAGANÇA PAULISTA', 'SP');
INSERT INTO Cidades(id_cidade, ds_cidade, uf) VALUES(503, 'PIRACAIA', 'SP');
INSERT INTO Cidades(id_cidade, ds_cidade, uf) VALUES(504, 'GUARULHOS', 'SP');
INSERT INTO Cidades(id_cidade, ds_cidade, uf) VALUES(505, 'JUNDIAI', 'SP');
INSERT INTO Cidades(id_cidade, ds_cidade, uf) VALUES(506, 'CAMPINAS', 'SP');
INSERT INTO Cidades(id_cidade, ds_cidade, uf) VALUES(507, 'JARINU', 'SP');
INSERT INTO Cidades(id_cidade, ds_cidade, uf) VALUES(508, 'PINHALZINHO', 'SP');
INSERT INTO Cidades(id_cidade, ds_cidade, uf) VALUES(509, 'SANTOS', 'SP');
INSERT INTO Cidades(id_cidade, ds_cidade, uf) VALUES(510, 'TAUBATÉ', 'SP');
INSERT INTO Cidades(id_cidade, ds_cidade, uf) VALUES(511, 'RIO DE JANEIRO', 'RJ');
INSERT INTO Cidades(id_cidade, ds_cidade, uf) VALUES(512, 'NITERÓI', 'RJ');
INSERT INTO Cidades(id_cidade, ds_cidade, uf) VALUES(513, 'MACAÉ', 'RJ');
INSERT INTO Cidades(id_cidade, ds_cidade, uf) VALUES(514, 'PETRÓPOLIS', 'RJ');
INSERT INTO Cidades(id_cidade, ds_cidade, uf) VALUES(515, 'ANGRA DOS REIS', 'RJ');
INSERT INTO Cidades(id_cidade, ds_cidade, uf) VALUES(516, 'VOLTA REDONDA', 'RJ');
INSERT INTO Cidades(id_cidade, ds_cidade, uf) VALUES(517, 'DUQUE DE CAXIAS', 'RJ');
INSERT INTO Cidades(id_cidade, ds_cidade, uf) VALUES(518, 'BELO HORIZONTE', 'MG');
INSERT INTO Cidades(id_cidade, ds_cidade, uf) VALUES(519, 'CAXAMBU', 'MG');
INSERT INTO Cidades(id_cidade, ds_cidade, uf) VALUES(520, 'EXTREMA', 'MG');
INSERT INTO Cidades(id_cidade, ds_cidade, uf) VALUES(521, 'MONTES CLAROS', 'MG');
INSERT INTO Cidades(id_cidade, ds_cidade, uf) VALUES(522, 'BETIM', 'MG');
INSERT INTO Cidades(id_cidade, ds_cidade, uf) VALUES(523, 'UBERLANDIA', 'MG');
INSERT INTO Cidades(id_cidade, ds_cidade, uf) VALUES(524, 'CURITIBA', 'PR');
INSERT INTO Cidades(id_cidade, ds_cidade, uf) VALUES(525, 'LONDRINA', 'PR');
INSERT INTO Cidades(id_cidade, ds_cidade, uf) VALUES(526, 'PINHAIS', 'PR');
INSERT INTO Cidades(id_cidade, ds_cidade, uf) VALUES(527, 'FLORIANOPOLIS', 'SC');
INSERT INTO Cidades(id_cidade, ds_cidade, uf) VALUES(528, 'BLUMENAU', 'SC');
INSERT INTO Cidades(id_cidade, ds_cidade, uf) VALUES(529, 'TUBARAO', 'SC');
INSERT INTO Cidades(id_cidade, ds_cidade, uf) VALUES(530, 'BELEM', 'PA');
INSERT INTO Cidades(id_cidade, ds_cidade, uf) VALUES(531, 'ABAETETUBA', 'PA');
INSERT INTO Cidades(id_cidade, ds_cidade, uf) VALUES(532, 'FORTALEZA', 'CE');
INSERT INTO Cidades(id_cidade, ds_cidade, uf) VALUES(533, 'SOBRAL', 'CE');
INSERT INTO Cidades(id_cidade, ds_cidade, uf) VALUES(534, 'CRATO', 'CE');
INSERT INTO Cidades(id_cidade, ds_cidade, uf) VALUES(535, 'JUAZEIRO', 'CE');
INSERT INTO Cidades(id_cidade, ds_cidade, uf) VALUES(536, 'PORTO ALEGRE', 'RS');
INSERT INTO Cidades(id_cidade, ds_cidade, uf) VALUES(537, 'GRAMADO', 'RS');
INSERT INTO Cidades(id_cidade, ds_cidade, uf) VALUES(538, 'SÃO LUIS', 'MA');
INSERT INTO Cidades(id_cidade, ds_cidade, uf) VALUES(539, 'RECIFE', 'PE');
INSERT INTO Cidades(id_cidade, ds_cidade, uf) VALUES(540, 'PETROLINA', 'PE');
INSERT INTO Cidades(id_cidade, ds_cidade, uf) VALUES(541, 'PAULISTA', 'PE');
INSERT INTO Cidades(id_cidade, ds_cidade, uf) VALUES(542, 'ARACAJÚ', 'SE');
INSERT INTO Cidades(id_cidade, ds_cidade, uf) VALUES(543, 'ITABAIANA', 'SE');
INSERT INTO Cidades(id_cidade, ds_cidade, uf) VALUES(544, 'JUAZEIRO', 'BA');
INSERT INTO Cidades(id_cidade, ds_cidade, uf) VALUES(545, 'SALVADOR', 'BA');
INSERT INTO Cidades(id_cidade, ds_cidade, uf) VALUES(546, 'ITABUNA', 'BA');
INSERT INTO Cidades(id_cidade, ds_cidade, uf) VALUES(547, 'FEIRA DE SANTANA', 'BA');

-- DADOS REGISTRO PRODUTOS
INSERT INTO RegistroProdutos(quant_prod, cod_prod, id_cidade) VALUES(100, 1, 500);
INSERT INTO RegistroProdutos(quant_prod, cod_prod, id_cidade) VALUES(80, 1, 501);
INSERT INTO RegistroProdutos(quant_prod, cod_prod, id_cidade) VALUES(30, 1, 502);
INSERT INTO RegistroProdutos(quant_prod, cod_prod, id_cidade) VALUES(34, 1, 503);
INSERT INTO RegistroProdutos(quant_prod, cod_prod, id_cidade) VALUES(23, 2, 500);
INSERT INTO RegistroProdutos(quant_prod, cod_prod, id_cidade) VALUES(40, 3, 500);
INSERT INTO RegistroProdutos(quant_prod, cod_prod, id_cidade) VALUES(36, 4, 506);
INSERT INTO RegistroProdutos(quant_prod, cod_prod, id_cidade) VALUES(20, 5, 512);
INSERT INTO RegistroProdutos(quant_prod, cod_prod, id_cidade) VALUES(12, 5, 516);
INSERT INTO RegistroProdutos(quant_prod, cod_prod, id_cidade) VALUES(56, 6, 500);
INSERT INTO RegistroProdutos(quant_prod, cod_prod, id_cidade) VALUES(42, 6, 501);
