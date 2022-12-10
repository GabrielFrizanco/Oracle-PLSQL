DROP TABLE Classificacoes;
DROP TABLE Formatos;
DROP TABLE Generos;
DROP TABLE TipoProdutos;
DROP TABLE Produtos;
DROP TABLE TipoPessoas;
DROP TABLE RegistroPessoas;
DROP TABLE Estados;
DROP TABLE Cidades;
DROP TABLE RegistroProdutos;



CREATE TABLE Classificacoes (
    id_class INT PRIMARY KEY,
    ds_class VARCHAR2(50)
);

CREATE TABLE Formatos (
    id_formato INT PRIMARY KEY,
    ds_formato VARCHAR2(50)
);

CREATE TABLE Generos (
    cod_genero INT PRIMARY KEY,
    ds_genero VARCHAR2(50)
);

CREATE TABLE TipoProdutos (
    id_tipProd INT PRIMARY KEY,
    ds_tipProd VARCHAR2(50)
);

CREATE TABLE Produtos (
    cod_prod INT PRIMARY KEY,
    titulo_prod VARCHAR2(120),
    preco_prod NUMBER(10,2),
    id_class INT,
    id_formato INT,
    cod_genero INT,
    id_tipProd INT,
    FOREIGN KEY(id_class) REFERENCES Classificacoes(id_class),
    FOREIGN KEY(id_formato) REFERENCES Formatos(id_formato),
    FOREIGN KEY(cod_genero) REFERENCES Generos(cod_genero)
);

CREATE TABLE TipoPessoas (
    id_tipPess INT PRIMARY KEY,
    ds_tipPess VARCHAR2(50)
);

CREATE TABLE RegistroPessoas (
    nm_pessoa VARCHAR2(100),
    id_tipPess INT,
    cod_prod INT,
    FOREIGN KEY(id_tipPess) REFERENCES TipoPessoas(id_tipPess),
    FOREIGN KEY(cod_prod) REFERENCES Produtos(cod_prod)
);

CREATE TABLE Estados (
    uf VARCHAR2(2) PRIMARY KEY,
    ds_estado VARCHAR(100)
);

CREATE TABLE Cidades (
    id_cidade INT PRIMARY KEY,
    ds_cidade VARCHAR(100),
    uf VARCHAR2(2),
    FOREIGN KEY(uf) REFERENCES Estados(uf)
);

CREATE TABLE RegistroProdutos (
    quant_prod INT,
    cod_prod INT,
    id_cidade INT,
    FOREIGN KEY(cod_prod) REFERENCES Produtos(cod_prod),
    FOREIGN KEY(id_cidade) REFERENCES Cidades(id_cidade)
);