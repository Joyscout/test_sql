create database rev;
use rev;

SET SQL_SAFE_UPDATES = 0;

create table produtos(
nome varchar(45),
preco double
);
delimiter $$
create function maiorproduto()
returns double
reads sql data
begin
declare maior double;
declare maiorpreco double;
select max(preco) into maior from produtos where catego;
return maior;
end
$$
delimiter ;
delimiter $$
create function menorproduto()
returns double
reads sql data
begin
declare menor double;
select min(preco) into menor from produtos;
return menor;
end
$$
delimiter ;
alter table produtos 
add catego varchar(255);

INSERT INTO produtos (nome, preco, catego) 
VALUES ('Notebook', 3500.00, 'sofa'),
 ('Mouse Sem Fio', 89.90, 'eletronico'),
 ('Teclado Mecânico', 250.00, 'fruta');
 select * from produtos;
 
select maiorproduto();
select menorproduto();

drop database rev;
drop table produtos;
