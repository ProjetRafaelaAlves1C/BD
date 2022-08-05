CREATE DATABASE revisao;
USE revisao;


CREATE TABLE produto(
codigo int PRIMARY KEY AUTO_INCREMENT,
nome_produto varchar(255),
preco decimal(6,2),
cor varchar(255)
);

CREATE TABLE clientes(
nome varchar(255),
id_cliente int PRIMARY KEY AUTO_INCREMENT,
estado char(3),
email varchar(255)
);

CREATE TABLE compra(
nf int PRIMARY KEY AUTO_INCREMENT,
data_compra date,
id_cliente int,
codigo int,
FOREIGN KEY(id_cliente) REFERENCES clientes (id_cliente),
FOREIGN KEY(codigo) REFERENCES produto (codigo)
);

