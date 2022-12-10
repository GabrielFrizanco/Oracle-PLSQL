/* Lógico_1: */

DROP TABLE STATUS;
DROP TABLE GENERO;
DROP TABLE CIDADES;
DROP TABLE ESTADOS;
DROP TABLE CARGOS;
DROP TABLE DEPARTAMENTOS;
DROP TABLE GRAU;
DROP TABLE OCORRENCIA;
DROP TABLE TIPO_HISTORICO;
DROP TABLE FUNCIONARIOS;


CREATE TABLE funcionarios (
    id_funcionario int PRIMARY KEY,
    nm_funcionario char(50),
    dt_nascimento date,
    ds_email char(100),
    ds_site char(100),
    ds_apresentacao varchar(1000),
    id_genero int,
    id_Status int,
    id_cidade int,
    id_cargo int,
    id_departamento int,
    val_salario number(10,2)
);

CREATE TABLE genero (
    id_genero int PRIMARY KEY,
    ds_genero char(30)
);

CREATE TABLE status (
    id_Status int PRIMARY KEY,
    ds_status char(40)
);

CREATE TABLE estados (
    id_estado int PRIMARY KEY,
    sg_estado char(2),
    ds_estado char(50),
    ds_regiao char(20)
);

CREATE TABLE cidades (
    id_cidade int PRIMARY KEY,
    nm_cidade char(80),
    id_estado int
);

CREATE TABLE cargos (
    id_cargo int PRIMARY KEY,
    ds_cargo char(100)
);

CREATE TABLE departamentos (
    id_departamento int PRIMARY KEY,
    ds_departamento char(100)
);

CREATE TABLE dependentes (
    id_dependente int PRIMARY KEY,
    nm_dependente char(80),
    dt_nascimento date,
    id_grau int,
    id_estado int,
    id_genero int,
    id_funcionario int
);

CREATE TABLE grau (
    id_grau int PRIMARY KEY,
    ds_grau char(30)
);

CREATE TABLE historico (
    id_historico int PRIMARY KEY,
    dt_historico date,
    ds_observacao varchar(1000),
    id_ocorrencia int,
    id_funcionario int
);

CREATE TABLE tipo_historico (
    id_tipo_historico int PRIMARY KEY,
    ds_tipo_historico char(50)
);

CREATE TABLE ocorrencia (
    id_ocorrencia int PRIMARY KEY,
    ds_ocorrencia char(80),
    id_tipo_historico int
);


CREATE TABLE folha (id_funcionario  int,
                    ano_referencia  number(4),
                    mes_referencia  number(2),
                    dat_fechamento  date,
                    val_salario     number(10,2),
                    val_inss        number(10,2),
                    val_fgts        number(10,2),
                    val_ir          number(10,2),
                    val_bonus       number(10,2),
                    val_liquido     number(10,2)
);
