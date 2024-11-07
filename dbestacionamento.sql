-- apagar o db
drop database dbestacionamento;
-- criar o db
create database dbestacionamento;
-- acessar o db
use dbEstacionamento;
-- criar as tabelas
create table tbUsuarios(
codUsu int,
nome varchar(50),
senha varchar(12)
);

create table tbFuncionarios(
codFunc int,
nome varchar(100),
email varchar(100),
telefone char(10)
);

create table tbCarros(
codCar int,
nome varchar(100),
placa char(7),
cor varchar(20)
);

create table tbDiaria(
codDia int,
dataEntrada date,
horaEntrada time,
dataSaida date,
horaSaida time);

-- Visualizando a tabela 
desc tbUsuarios;
desc tbFuncionarios;
--  Para visualizar a tabela s
describe tbCarros; 
describe tbDiaria;


-- Alterando ESTRUTURA da tabela

alter table tbFuncionarios
add CPF char(14);

describe tbFuncionarios;

alter table tbFuncionarios
add salario decimal(9,2);

describe tbFuncionarios;

