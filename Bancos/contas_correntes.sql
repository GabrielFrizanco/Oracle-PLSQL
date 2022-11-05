DROP DATABASE IF EXISTS contas_correntes;
CREATE DATABASE IF NOT EXISTS contas_correntes;
USE contas_correntes;

CREATE TABLE IF NOT EXISTS correntistas(num_conta int,
                                       co_cpf char(11),
                                       co_nome char(60),
                                       co_nasc date,
                                       cod_agencia char(10),
                                       id_tip_conta int);
                                       
CREATE TABLE IF NOT EXISTS uf(sigla_uf char(2),
                              ds_uf char(30));

CREATE TABLE IF NOT EXISTS cidades(id_cidade int,
                                  ds_cidade char(50),
                                  sigla_uf char(2));

CREATE TABLE IF NOT EXISTS tipo_contas(id_tip_conta int,
                                       ds_tip_conta char(40));

CREATE TABLE IF NOT EXISTS agencias(cod_agencia char(10),
                                   cod_banco char(20),
				   id_cidade int,
				   sigla_uf char(2));

-- PRIMARY KEYS
ALTER TABLE correntistas ADD CONSTRAINT PK_Correntista PRIMARY KEY(num_conta);
ALTER TABLE uf ADD CONSTRAINT PK_UF PRIMARY KEY(sigla_uf);
ALTER TABLE cidades ADD CONSTRAINT PK_Cidade PRIMARY KEY(id_cidade);
ALTER TABLE tipo_contas ADD CONSTRAINT PK_Tipo_Contas PRIMARY KEY(id_tip_conta);
ALTER TABLE agencias ADD CONSTRAINT PK_Agencia PRIMARY KEY(cod_agencia);

-- FOREIGN KEYS
ALTER TABLE cidades ADD CONSTRAINT FK_Sigla_UF_Cidades FOREIGN KEY(sigla_uf) REFERENCES uf(sigla_uf);
ALTER TABLE agencias ADD CONSTRAINT FK_Id_Cidades_Agencias FOREIGN KEY(id_cidade) REFERENCES cidades(id_cidade);
ALTER TABLE agencias ADD CONSTRAINT FK_Sigla_UF_Agencias FOREIGN KEY(sigla_uf) REFERENCES uf(sigla_uf);
ALTER TABLE correntistas ADD CONSTRAINT FK_Cod_Agencias_Correntista FOREIGN KEY(cod_agencia) REFERENCES agencias(cod_agencia);
ALTER TABLE correntistas ADD CONSTRAINT FK_Tip_Conta_Correntistas FOREIGN KEY(id_tip_conta) REFERENCES tipo_contas(id_tip_conta);


-- correntista (num_conta, cpf, nome, data_nasc, agencia, tipo de conta)

-- agencia (cod_agencia, cod_banco, cidade, uf)