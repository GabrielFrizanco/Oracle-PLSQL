
CREATE TABLE IF NOT EXISTS Aeronave (
    id_aeronave int NOT NULL AUTO_INCREMENT COMMENT 'Id Aeronave' PRIMARY KEY,
    num_prefixo varchar(15),
    ano_aeronave int,
    num_passageiros int,
    dsc_modelo varchar(20)
);

CREATE TABLE IF NOT EXISTS Estado (
    cod_uf varchar(2) PRIMARY KEY,
    dsc_uf varchar(30)
);

CREATE TABLE IF NOT EXISTS Aeroporto (
    id_aeroporto int PRIMARY KEY,
    cod_aeroporto varchar(10),
    id_cidade int
);

CREATE TABLE IF NOT EXISTS Rota (
    id_rota int PRIMARY KEY,
    val_distancia_km int,
    val_tempo_voo varchar(5),
    id_aeroporto_origem int,
    id_aeroporto_destino int
);

CREATE TABLE IF NOT EXISTS Piloto (
    num_cht int PRIMARY KEY,
    nom_piloto varchar(50),
    cod_genero varchar(1),
    sta_piloto varchar(1),
    dat_nascimento date
);

CREATE TABLE IF NOT EXISTS Voo (
    num_voo varchar(10),
    dat_voo date,
    hor_voo time,
    id_rota int,
    num_cht int,
    id_aeronave int
);

CREATE TABLE IF NOT EXISTS cidade (
    id_cidade int PRIMARY KEY,
    dsc_cidade varchar(30),
    cod_uf varchar(2)
);
 
ALTER TABLE Aeroporto ADD CONSTRAINT FK_Aeroporto_2
    FOREIGN KEY (id_cidade)
    REFERENCES cidade (id_cidade)
    ON DELETE CASCADE;
 
ALTER TABLE Rota ADD CONSTRAINT FK_Rota_Origem
    FOREIGN KEY (id_aeroporto_origem)
    REFERENCES Aeroporto (id_aeroporto)
    ON DELETE CASCADE;

ALTER TABLE Rota ADD CONSTRAINT FK_Rota_Destino
    FOREIGN KEY (id_aeroporto_destino)
    REFERENCES Aeroporto (id_aeroporto)
    ON DELETE CASCADE;

 
ALTER TABLE Voo ADD CONSTRAINT FK_Voo_1
    FOREIGN KEY (id_rota)
    REFERENCES Rota (id_rota)
    ON DELETE CASCADE;
 
ALTER TABLE Voo ADD CONSTRAINT FK_Voo_2
    FOREIGN KEY (num_cht)
    REFERENCES Piloto (num_cht)
    ON DELETE RESTRICT;
 
ALTER TABLE Voo ADD CONSTRAINT FK_Voo_3
    FOREIGN KEY (id_aeronave)
    REFERENCES Aeronave (id_aeronave)
    ON DELETE RESTRICT;
 
ALTER TABLE cidade ADD CONSTRAINT FK_cidade_2
    FOREIGN KEY (cod_uf)
    REFERENCES Estado (cod_uf)
    ON DELETE RESTRICT;