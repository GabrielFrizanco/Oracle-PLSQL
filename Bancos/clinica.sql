DROP DATABASE clinica;
CREATE DATABASE clinica;
USE clinica;

CREATE TABLE medicos(med_crm int,
                     med_nome char(60),
                     id_especialidade int,
		     sigla_uf char(2));

CREATE TABLE especialidades(id_especialidade int,
			    ds_especialidade char(30));

CREATE TABLE planos(id_plano int,
		    ds_plano char(40));

CREATE TABLE uf(sigla_uf char(2),
		ds_uf char(60));

CREATE TABLE planos_medico(id_plano int,
			   med_crm int);

-- PRIMARY KEY
ALTER TABLE medicos ADD CONSTRAINT PK_Med_Crm PRIMARY KEY(med_crm);
ALTER TABLE especialidades ADD CONSTRAINT PK_Especialidade PRIMARY KEY(id_especialidade);
ALTER TABLE planos ADD CONSTRAINT PK_Plano PRIMARY KEY(id_plano);
ALTER TABLE uf ADD CONSTRAINT PK_UF PRIMARY KEY(sigla_uf);

-- FOREIGN KEY
ALTER TABLE medicos ADD CONSTRAINT FK_Medico_Especialidade FOREIGN KEY(id_especialidade) REFERENCES especialidades(id_especialidade);
ALTER TABLE medicos ADD CONSTRAINT FK_Medico_UF FOREIGN KEY(sigla_uf) REFERENCES uf(sigla_uf);
ALTER TABLE planos_medico ADD CONSTRAINT FK_Planos FOREIGN KEY(id_plano) REFERENCES planos(id_plano);
ALTER TABLE planos_medico ADD CONSTRAINT FK_Medico FOREIGN KEY(med_crm) REFERENCES medicos(med_crm);

-- VALUES - ESPECIALIDADE
INSERT INTO especialidades(id_especialidade, ds_especialidade) VALUES(1, 'Cardiologista'),
								     (2, 'Otorrinolaringologista'),
								     (3, 'Cirurgia Geral');

-- VALUES - PLANOS
INSERT INTO planos(id_plano, ds_plano) VALUES(1, 'Unimed'),
					     (2, 'Itaú Saúde'),
					     (3, 'SUS');

-- VALUES - UF
INSERT INTO uf(sigla_uf, ds_uf) VALUES('SP', 'São Paulo'),
				      ('RJ', 'Rio de Janeiro'),
				      ('PR', 'Paraná');

-- VALUES - MEDICOS
INSERT INTO medicos(med_crm, med_nome, id_especialidade, sigla_uf) VALUES(20314, 'Eduardo', 1, 'SP'),
									 (41424, 'Maria', 2, 'RJ'),
									 (74528, 'Antonio', 1, 'PR'),
									 (67421, 'Beatriz', 1, 'SP');

INSERT INTO planos_medico(id_plano, med_crm) VALUES (1, 20314),
					            (1, 41424),
                                                    (2, 74528),
                                                    (1, 67421),
						    (2, 20314);


-- SELECIONAR 


SELECT medicos.med_crm Crm_Médico, 
       medicos.med_nome Nome_Médico,
       especialidades.ds_especialidade Especialidade,
       planos.ds_plano Plano,
       medicos.sigla_uf Localização FROM medicos
       
INNER JOIN planos_medico ON planos_medico.med_crm = medicos.med_crm
INNER JOIN planos ON planos_medico.id_plano = planos.id_plano
INNER JOIN especialidades ON medicos.id_especialidade = especialidades.id_especialidade