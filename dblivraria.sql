drop database dblivraria;

create database dblivraria;

use dblivraria;

create table tbAluno(
CodAluno int,
Nome varchar(45),
Email varchar(45),
Telefone varchar(45)
);

create table tbLivro(
CodLivo int,
Nome varchar(45),
Autor varchar (45),
Pagina varchar (45),
Aluno_CodAluno int,
CodColaborador int
);

create table tbColaborador(
CodColaborador int,
CPF varchar (45),
Nome varchar (45),
Email varchar (45),
Cargo varchar (45)
);

create table tbEmprestimo(
CodEmprestimo int,
DataEmprestimo date,
DataDevolucao date,
livro varchar(45),
ColaboradorCPF varchar(45),
CodColaborador int
);

desc tbAluno;
desc tbLivro;
desc tbColaborador;
desc tbEmprestimo;