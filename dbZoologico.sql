drop database dbZoologico;

create database dbZoologico;

use dbZoologico;

create table tbAnimais(
Cod_Animal int, 
Tipo_Animal varchar(30), 
Nome_Animal varchar(30),
Idade int, 
Valor decimal(10,2)
);

insert into tbAnimais(Cod_Animal, Tipo_Animal, Nome_Animal, Idade, Valor) values (1, 'Cachorro', 'Djudi', 3, 300.00);
insert into tbAnimais(Cod_Animal, Tipo_Animal, Nome_Animal, Idade, Valor) values (2, 'Cachorro', 'Sula', 5, 300.00 );
insert into tbAnimais(Cod_Animal, Tipo_Animal, Nome_Animal, Idade, Valor) values (3, 'Cachorro', 'Sarina', 7, 300.00);
insert into tbAnimais(Cod_Animal, Tipo_Animal, Nome_Animal, Idade, Valor) values (4, 'Gato', 'Pipa', 2, 500.00);
insert into tbAnimais(Cod_Animal, Tipo_Animal, Nome_Animal, Idade, Valor) values (5, 'Gato', 'Sarangue', 2, 500.00);
insert into tbAnimais(Cod_Animal, Tipo_Animal, Nome_Animal, Idade, Valor) values (6, 'Gato', 'Clarences', 1, 500.00);
insert into tbAnimais(Cod_Animal, Tipo_Animal, Nome_Animal, Idade, Valor) values (7, 'Coruja', 'Agnes', 0, 700.00);
insert into tbAnimais(Cod_Animal, Tipo_Animal, Nome_Animal, Idade, Valor) values (8, 'Coruja', 'Arabela', 1, 700.00);
insert into tbAnimais(Cod_Animal, Tipo_Animal, Nome_Animal, Idade, Valor) values (9, 'Sapo', 'Quash', 1, 100.00);
insert into tbAnimais(Cod_Animal, Tipo_Animal, Nome_Animal, Idade, Valor) values (10, 'Peixe', 'Fish', 0, 100.00);
-- Visualizando a tabela
desc tbAnimais;
-- Comando que visualiza a tabela 
select * from tbAnimais;

-- Comando que visualiza apenas o Tipo e Nome dos animais
select Tipo_Animal, Nome_Animal from tbAnimais;

-- Comando que visualiza apenas o Tipo, Nome e o Idade dos animais
select Tipo_Animal, Nome_Animal, Idade from tbAnimais;

-- Comando que muda o nome das colunas da tabela
select Tipo_Animal as 'Tipo do Animal', Nome_Animal as 'Nome do Animal' from tbAnimais;

-- Comando que muda o nome das colunas da tabela
select Tipo_Animal as 'Tipo do Animal', Nome_Animal as 'Nome do Animal', Idade as 'Tempo de vida' from tbAnimais;

-- Comando que cria uma coluna virtual para inserir a procedência do animal 
select 'Animal Domestico' as 'Procedencia', Tipo_Animal as 'Tipo do Animal', Nome_Animal as 'Nome do Animal', Idade as 'Tempo de vida' from tbAnimais;

-- Comando que cria uma coluna virtual para inserir o novo valor dos animais
select Tipo_Animal , Nome_Animal , Idade, Valor as 'Valor original', Valor * 1.10 as 'Valor da venda' from tbAnimais;

-- Comando que mostra apenas o Nome, valor original e valor da venda atualizado dos animais
select Nome_Animal, Valor, Valor*1.10 as 'Valor da Venda' from tbAnimais; 






