-- Apagando o banco de dados
drop database dbEscola;

-- Criando o banco de dados
create table dbEscola;

-- Entrando no banco de dados
use dbscola;

-- Criando as tabelas 

create table tbCursoAluno(
CodAluno int,
CodCurso int
);

create table tbCurso(
CodCurso int,
nome varchar(45),
CodProfessor int
);

create table tbProfessor(
CodProfessor int,
Nome varchar(45),
Email varchar(45),
CPF int,
Endereco varchar(45),
Numero int,
Complemento varchar (45),
Cidade varchar (45),
Estado varchar (45)
);

create table tbAluno(
CodAluno int,
Nome varchar (45),
Email varchar (45),
CPF int,
Endereco varchar(45),
Numero int,
Complemento varchar(45),
Cidade varchar(45),
Estado varchar(45)
);

-- VIsualizando a tabela 

describe tbCursoAluno;
describe tbProfessor;
describe tbCurso;
describe tbAluno; 
