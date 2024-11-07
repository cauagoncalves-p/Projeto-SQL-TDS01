-- apagar o banco de dados se exibir
drop database dblanchonete;

-- criar o banco de dados
create database dblanchonete;

-- Visualizar o banco de dados
show databases;

--acessar o banco de dados
use dblanchonete;

-- Visualizando as tabelas
show tables;

-- Criando as tabelas para o banco de dados 
create table tbUsuarios(
codUsu int,
nome varchar(30),
senha varchar(12)
);

create table tbFuncionarios(
codFunc int,
nome varchar (100),
email varchar (100),
telefone char(10),
logradouro varchar(100),
numero char (10),
complemento varchar(50),
bairro varchar (100),
cep char (9),
cidade varchar (100),
estado char (2));


-- Visuarlizar tabelas criadas

desc tbUsuarios;
desc tbFuncionarios;