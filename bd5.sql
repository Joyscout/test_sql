create database pizzaria;
use pizzaria;

create table tiposocios(
	idtiposocios int primary key auto_increment not null,
    tipo_socio varchar(45)
    );
    
create table socios(
	idsocios int primary key auto_increment not null,
    nomesocio varchar(45) not null,
    cpf varchar(15) not null,
    telefone varchar(20),
    id_tiposocios int,
    foreign key (id_tiposocios) references tiposocios (idtiposocios)
    );
    
create table atendentes(
	idatendentes int primary key auto_increment not null,
    nomeatendente varchar(45) not null,
    codigo varchar(4)
    );
    
create table pizzas(
	idpizzas int primary key auto_increment not null,
    sabor varchar(45),
    preco float,
    quantidade_pizzas int,
    quantidade_criticas int
    );
    
create table pedidos(
	idpedidos int primary key not null,
    id_atendentes int,
    id_socios int,
    data_pedido date,
    valor_total float,
	foreign key (id_socios) references socios (idsocios),
	foreign key (id_atendentes) references atendentes (idatendentes)
    );

create table itens(
	id_pedidos int,
    id_pizzas int,
    quantidade_itens int,
    tipo int,
    foreign key (id_pedidos) references pedidos (idpedidos),
	foreign key (id_pizzas) references pizzas (idpizzas)
    );
    
    insert into tiposocios(tipo_socio)
    values('Gold'),
		   ('Silver'),
           ('Bronze');
           
	insert into pizzas(sabor, preco, quantidade_pizzas, quantidade_criticas)
    values('calabresa', 45.00, 20, 5),
			('quatro queijos', 52.00, 8, 10),
			('marguerita', 40.00, 15, 5),
			('frango com catupiry', 50.00, 4, 8),
			('portuguesa', 48.00, 12, 5);
            
	insert into pedidos(idpedidos, data_pedido,valor_total)
	values(101, '2026-03-01', 95.00),
		  (102, '2026-03-02', 40.00),
          (103, '2026-03-03', 150.00),
          (104, '2026-03-04', 52.50);
          
select idpizzas, sabor, preco from pizzas;		
select idpizzas, sabor, quantidade_pizzas from pizzas where quantidade_pizzas < quantidade_criticas ;
select idpedidos, data_pedido, valor_total from pedidos order by valor_total desc;
select idpizzas, sabor, preco from pizzas  order by preco desc limit 1;

 -- drop database pizzaria;