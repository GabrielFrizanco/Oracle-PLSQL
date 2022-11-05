CREATE DATABASE estoque;
USE estoque;

CREATE TABLE IF NOT EXISTS material(id_material int Primary Key auto_increment,
                                    dsc_material varchar(50),
                                    id_unidade int,
                                    id_familia int);

CREATE TABLE IF NOT EXISTS familia(id_familia int Primary Key auto_increment,
                                   dsc_familia varchar(50));

CREATE TABLE IF NOT EXISTS unidade_medida(id_unidade_medida int Primary Key auto_increment,
                                          sigla varchar(2),
                                          desc_unidade_medida varchar(50));
                                          
ALTER TABLE material ADD CONSTRAINT FK_id_unidade Foreign Key(id_unidade)  REFERENCES unidade_medida(id_unidade_medida);
ALTER TABLE material ADD CONSTRAINT FK_id_material Foreign Key(id_familia)  REFERENCES familia(id_familia);
