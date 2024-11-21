drop database dbloteria;

create database dbloteria;

use dbloteria;

create table tbFuncionarios(
codFunc int  , 
Nome varchar(100),
Email varchar(100),
Telefone char(15) ,
CPF char(14),
Idade int, 
Valor decimal (9,2)
);

insert into tbFuncionarios(codFunc, Nome, Email, Telefone, CPF, Idade, Valor)
	values(1, 'Caua', 'cauagoncalves2190@gmail.com', '91489-5878', '000-887-887-58', '52', '2500.00' );

insert into tbFuncionarios(codFunc, Nome, Email, Telefone, CPF, Idade, Valor)
	values(2, 'Pedro', 'pedroalmeida2190@gmail.com', '97584-4978', '000-778-158-58', '60', '3600.00' );

insert into tbFuncionarios(codFunc, Nome, Email, Telefone, CPF, Idade, Valor)
	values(3, 'Carlos', 'carloseduardo2190@gmail.com', '97865-9748', '000-789-125-74', '70', '1000.00' );

insert into tbFuncionarios(Nome, Email)
	values('Ronaldo', 'ronaldo@gmail.com');

insert into tbFuncionarios(codFunc, Telefone, CPF)
	values('4', '91646-4684', '498740364');

desc tbFuncionarios;

select * from tbFuncionarios;

-- Atualizando uma tabela 

-- update tbFuncionarios set Nome = 'João', Email = 'joao@gamil.com' ... where codFunc = '5';
-- where: aonde o numero do usuario for 5, as informações seram atualizadas

-- Excluindo um registo

-- delete from tbFuncionarios where codFunc = '5'
-- where: aonde o meu codigo for igual a 5 a linha sera excluida

-- Inserindo uma coluna ficticia no 

