drop database dbportaria;

create database dbPortaria;

use dbPortaria;

create table tbFuncionarios(
codFunc int not null auto_increment, 
nome varchar(100) not null , 
rg char(13) unique, 
cpf char(14) not null unique, 
sexo char(1) default 'F' check(sexo in('F', 'M')),
salario decimal(9,2) default 0 check(salario >= 0), 
primary key(codFunc));

create table tbClientes(
codCli int not null auto_increment, 
nome varchar (50) , 
email varchar(30) , 
telCel varchar(10), 
primary key (codCli));

create table tbFornecedores(
codForn int not null auto_increment, 
nome varchar(100), 
email varchar(100), 
telefone varchar(10), 
cnpj char(19) not null unique, 
primary key(codForn));

create table tbUsuarios(
codUsu int not null auto_increment, 
nome varchar(50) not null, 
senha varchar(20) not  null, 
codFunc int not null, 
primary key(codUsu), 
foreign key (codFunc) references tbFuncionarios(codFunc));


create table tbProdutos(
codProd int not null auto_increment, 
descricao varchar(100) not null, 
lote char(12), 
validade date, 
dataEntr date, 
horaEnt time, 
quantidade int, 
preco decimal (10,2),
codForn int not null, 
primary key (codProd),
foreign key(codForn) references tbFornecedores(codForn));


create table tbVendas(
codVend int not null auto_increment, 
valor decimal (9,2), 
quantidade int,
dataVend date, 
HoraVend time, 
codCli int not null, 
codUsu int not null, 
codProd int not null,
primary key(codVend), 
foreign key(codCli) references tbClientes(codCli), 
foreign key (codProd) references tbProdutos(codProd), 
foreign key (codUsu) references tbUsuarios (codUsu));

desc tbFuncionarios;
desc tbUsuarios;
desc tbClientes;
desc tbFornecedores;
desc tbProdutos;
desc tbVendas; 

-- Inserindo os dados dos Funcionarios
insert into tbFuncionarios(nome, rg, cpf, sexo, salario) values ('Caua', '58.987.154-8', '000.745.971-44', 'M', 1507.02);
insert into tbFuncionarios(nome, rg, cpf, sexo, salario) values ('Joao', '58.987.154.8', '123.983.298-44', 'M', 1507.02);
insert into tbFuncionarios(nome, rg, cpf, sexo, salario) values ('Pedro', '57.154.188.8', '321.157.187-44', 'F', 1507.02);
insert into tbFuncionarios(nome, rg, cpf, sexo, salario) values ('jose', '89.014.960.7', '987.197.135-89', 'M', 1507.02);

-- Inserindo os dados dos clientes 
insert into tbClientes(nome, email, telCel )values('Carlos', 'carlos antonio@gmail.com', '97817-4569' );
insert into tbClientes(nome, email, telCel )values('Marcio', 'marcioantonio@gmail.com', '98154-4569' );
insert into tbClientes(nome, email, telCel )values('Joao', 'joaonicolas@gmail.com', '98757-4569' );

-- Inserindo os dados dos Fornecedores 
insert into tbFornecedores(nome, email, telefone, cnpj) values 
('Comercial Silva LTDA', 'comercial.silva@example.com', '(11) 98765-4321', '12.345.678/0001-01'),
('Distribuidora Ribeiro', 'ribeiro.distribuicao@example.com', '(21) 97654-3210', '23.456.789/0001-02'),
('Logistica Martins', 'martins.logistica@example.com', '(31) 98567-1234', '34.567.890/0001-03'),
('Importadora Lima', 'importadora.lima@example.com', '(41) 98456-7890', '45.678.901/0001-04');

-- Inserindo os dados do Usuario 
insert into tbUsuarios(nome, senha, codFunc) values ('caua.gpereira', '123456', 1), ('joao.nicolal' ,'154875', 2), ('pedro.matias', '759871', 3), ('Ana catarina', '879564', 4);

-- Inserindo os produtos 
insert into tbProdutos(descricao, lote, validade, dataEntr, horaEnt, quantidade, preco, codForn) values 
('Farinha de Trigo 1kg', 'LT202401', '2025-01-15', '2024-10-01', '14:30', 200, 4.50, 1),
('Oleo de Soja 900ml', 'LT202402', '2025-02-10', '2024-10-03', '10:00', 150, 7.80, 2),
('Arroz Branco Tipo 1 5kg', 'LT202403', '2025-03-05', '2024-10-05', '11:15', 100, 25.90, 3),
('Feijao carioca 1kg', 'LT202404', '2025-01-20', '2024-10-06', '16:45', 120, 8.20, 4);
('Banana', 'LT202405', '2025-06-18', '2024-12-06', '13:20', 150, 4.80, 5);

insert into tbVendas(valor, quantidade, dataVend, horavend, codCli, codUsu, codProd) values
(120.00, 2, '2024-11-20', '10:00:00', 1, 2, 1),
(300.00, 5, '2024-11-20', '12:30:00',  2, 1, 2),
(50.00, 1, '2024-11-21', '09:00:00',  3, 3, 3),
(200.00, 4, '2024-11-21', '14:45:00',  2, 4, 4),
(90.00, 2, '2024-11-21', '16:15:00',  1, 1, 3);


select * from tbFuncionarios;
select * from tbClientes;
select * from tbFornecedores;
select * from tbUsuarios;
select * from tbProdutos;
select * from tbVendas;
