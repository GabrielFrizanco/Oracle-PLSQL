--
-- Exclusão de Dados
--
Delete from Voo;
Delete from rota;
Delete from aeronave;
Delete from Piloto;
Delete from Cidade;
Delete from Estado;

-- Insert em ESTADO
--
Insert into estado values('SP','SÃO PAULO');
Insert into estado values('RJ','RIO DE JANEIRO');
Insert into estado values('PE','PERNAMBUCO');
Insert into estado values('SC','SANTA CATARINA');
Insert into estado values('MG','MINAS GERAIS');

-- Insert em CIDADE
--

Insert into cidade(id_cidade, dsc_cidade, cod_uf) values (1,'SÃO PAULO','SP');
Insert into cidade(id_cidade, dsc_cidade, cod_uf) values (2,'GUARULHOS','SP');
Insert into cidade(id_cidade, dsc_cidade, cod_uf) values (3,'CAMPINAS','SP');
Insert into cidade(id_cidade, dsc_cidade, cod_uf) values (4,'RECIFE','PE');
Insert into cidade(id_cidade, dsc_cidade, cod_uf) values (5,'PETROLINA','PE');
Insert into cidade(id_cidade, dsc_cidade, cod_uf) values (6,'FLORIANÓPOLIS','SC');

-- Insert em AEROPORTO
--

Insert into aeroporto values(10,'CGO',1);
Insert into aeroporto values(20,'CRU',2);
Insert into aeroporto values(30,'CAM',3);
Insert into aeroporto values(40,'REC',4);
Insert into aeroporto values(50,'PTR',5);
Insert into aeroporto values(60,'FLO',6);

-- Insert em ROTA
--

Insert into rota(id_rota, val_distancia_km, val_tempo_voo, id_aeroporto_origem, id_aeroporto_destino) values(100, 2400, 2, 10, 40);
Insert into rota(id_rota, val_distancia_km, val_tempo_voo, id_aeroporto_origem, id_aeroporto_destino) values(200, 3600, 3, 50, 30);

-- Insert em PILOTO
--
insert into piloto(num_cht, nom_piloto, cod_genero, sta_piloto, dat_nascimento) values (1000, 'JOAO CARLOS ANDORINHA', 'M', 'A', '1975-05-24');
insert into piloto(num_cht, nom_piloto, cod_genero, sta_piloto, dat_nascimento) values (2000, 'MARCIA GAIVOTA', 'F', 'A', '1970-04-15');
insert into piloto(num_cht, nom_piloto, cod_genero, sta_piloto, dat_nascimento) values (3000, 'ROBERTO NUVEM BRANCA', 'M', 'A', '1960-10-18');

-- Insert em AERONAVE
--
insert into aeronave(id_aeronave, num_prefixo, ano_aeronave, num_passageiros, dsc_modelo) values (80, 'PTX-1020', 2019, 250, 'BOEING 747');
insert into aeronave(id_aeronave, num_prefixo, ano_aeronave, num_passageiros, dsc_modelo) values (81, 'PRY-4478', 2015, 175, 'BOEING 737');
insert into aeronave(id_aeronave, num_prefixo, ano_aeronave, num_passageiros, dsc_modelo) values (82, 'ARZ-5555', 2021, 500, 'AIRBUS');

-- Insert em VOO
--
insert into voo(num_voo, dat_voo, hor_voo, id_rota, num_cht, id_aeronave) values('GRU-1028','2022-06-12','19:00',100,1000,80);
insert into voo(num_voo, dat_voo, hor_voo, id_rota, num_cht, id_aeronave) values('PRT-1479','2022-06-10','22:30',200,2000,82);