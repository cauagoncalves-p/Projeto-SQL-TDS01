drop database dbProdutos;

create database dbProdutos;

use dbProdutos;

CREATE TABLE PRODUTOS(
CODIGO INT,
NOME VARCHAR(50),
TIPO VARCHAR(25),
QUANTIDADE INT,
VALOR DECIMAL(10,2)
);
 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 1,'IMPRESSORA', 'INFORMATICA', 200, 600.00 );
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 2,'CAMERA DIGITAL', 'DIGITAIS', 300, 400.00 );
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 3, 'DVDPLAYER', 'ELETRONICOS', 250, 500.00 );
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 4,'MONITOR', 'INFORMATICA', 400, 900.00 );
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 5,'TELEVISOR', 'ELETRONICOS', 350, 650.00 );
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 6,'FILMADORA DIGITAL', 'DIGITAIS', 500, 700.00 );
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 7,'CELULAR', 'TELEFONE', 450, 850.00 );
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 8,'TECLADO', 'INFORMATICA', 300, 450.00 );
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 9,'VIDEOCASSETE', 'ELETRONICOS', 200, 300.00 );
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 10,'MOUSE', 'INFORMATICA', 400, 60.00 );

desc Produtos;

select * from Produtos;

update produtos set valor = valor * 1.12 where nome like 'f%';
select valor from produtos;
update produtos set quantidade = quantidade + 50 where valor > 400 and valor < 600;
select * from produtos where valor > 400 and valor < 600;
update produtos set valor = valor * 0.5 where quantidade < 300;
select * from produtos where quantidade < 300;
select * from produtos where codigo = 4;
select * from produtos where nome not like '%y%' and tipo not like '%y%';
select * from produtos where nome like 'mo%' and tipo like '%ma%';




-- select * from Produtos where CODIGO = 7;
-- select * from Produtos where TIPO = 'ELETRONICOS';
-- update produtos set valor = valor * 1.10 where tipo = 'informatica';
-- select valor from produtos;
-- update produtos set quantidade = quantidade + 10 where tipo = 'eletronicos' and valor <=400;
-- select * from produtos where tipo = 'eletronicos' and valor <= 400;
-- select * from produtos where tipo in('eletronicos', 'digitais');
-- select * from produtos where tipo not in('eletronicos', 'digitais');
-- select * from produtos where valor between 300 and 600;
-- select * from produtos where nome like -- like é busca por nome, podemos buscar utilizando três paramêtros principais: 'a%', '%a', %a%
-- select * from produtos where nome 'a%'  -- o 'a' é a letra que iremos buscar 

