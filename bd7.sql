create database rev;
use rev;

create table cliente(
	idcliente int auto_increment,
    cpf varchar(14),
    nome_c varchar(255),
    primary key(idcliente,cpf)
    );
    
create table medico(
	idmedico int auto_increment,
    CRM varchar(17),
    nome_m varchar(115),
    prof varchar(50),
    id_cliente int,

    primary key(idmedico, CRM),
    foreign key(id_cliente) references cliente(idcliente)
    );
    
    select * from cliente;
    insert into cliente(cpf, nome_c)
    values('123.456.789-10', 'lazaros'),
		   ('321.654.987-01', 'diego');
         --  drop table cliente;
           
	select * from medico;
	insert into medico(CRM, nome_m,prof, id_cliente)
    values('123456789012/BR', 'roger', 'pneumologista', 1),
		  ('3215438769012/ES', 'sephirot', 'cardiologista', 2);
		 -- drop table medico;
          
select C.nome_c as nome_cliente, C.cpf as cpf_cliente, M.nome_m as nome_medico, M.prof as prof_medico
from cliente as C
inner join medico as M
on C.idcliente=M.id_cliente;



drop database rev;
