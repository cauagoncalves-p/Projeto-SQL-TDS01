-- Apagando o banco de dados
drop database dbregistro;

-- Criando o banoc de dados
create database dbregistro;

-- Entrando no banco de dados
use dbregistro;

-- Criando as tabelas
create table tbBairro(
CodBairro int,
Nome varchar (100),
CodCidade int
);

create table tbCidade(
CodCidade int,
Nome varchar(38),
CodEstado int
);

create table tbEstado(
CodEstado int,
Uf char(2)
); 

create table tbEndereco(
CodEndereco bigint,
CodBairro int,
TipoLocal varchar(128),
Logadouro varchar(128),
numero int,
Complemento varchar(128)
);

create table tbServico(
CodServico bigint,
CodEndereco bigint,
CodSolicitante bigint	
);

create table tbPonto(
codPonto bigint,
CodEndereco bigint	
);

create table tbSolicitante(
CodSolicitante int,
CodEndereco bigint	
);

-- Visualizando as tables

desc tbCidade;
desc tbBairro;
desc tbEstado;
desc tbPonto;
desc tbServico;
desc tbEndereco;
desc tbSolicitante;

