create database rev;
use rev;

create table cliente(
nome varchar(115),
    cpf varchar(14),
    idcliente int,
    primary key(cpf, idcliente)
    );
   
create table medico(
idmedico int,
    CRM varchar(17),
    nome_medico varchar(115),
    prof varchar(50),
    id_cliente int,
    cpf_cliente varchar(14),
    primary key(idmedico, CRM),
    foreign key(cpf_cliente, id_cliente) references cliente(cpf,idcliente)
    );
   
alter table cliente add dat_nasc date;
alter table medico add removes int;
alter table medico drop removes;

insert into cliente(nome,cpf,idcliente,dat_nasc)
values('miguel', '123.456.789-10', 01, '2007-08-25'),
 ('diego', '231.453.436-30', 02, '2008-08-17'),
      ('lazaro', '313.343.754-45', 03, '1930-07-12'),
      ('ronaldo', '123.416.989-10', 04, '2000-08-15'),
 ('hercules', '765.123.436-35', 05, '2004-12-27'),
      ('jorge', '564.343.245-45', 06, '0001-01-01');
     
insert into medico(idmedico,CRM,nome_medico,prof,id_cliente,cpf_cliente)
values(1, '123456789/BR', 'robert', 'ginecologista', 01, '123.456.789-10'),
 (2, '123456789/MT', 'marcos', 'cardiologista', 03, '313.343.754-45'),
      (3, '123467789ES', 'pedro', 'pediatra adulto', 02, '231.453.436-30'),
      (4, '987654321/SP', 'ana', 'cirugiao plastico', 04, '123.416.989-10'),
 (5, '456789123/RJ', 'carla', 'ortopedista', 05, '765.123.436-35'),
 (6, '654321987/MG', 'lucas', 'pneumologista', 06, '564.343.245-45');
   
select * from cliente order by idcliente asc;
select * from medico;

select nome, cpf, idcliente, dat_nasc
from cliente
where year(dat_nasc) between 2000 and 2008
ORDER BY dat_nasc DESC
limit 2 offset 3;

SELECT nome_medico, prof, CRM
FROM medico
WHERE cpf_cliente IN (
    SELECT cpf
    FROM cliente
    WHERE YEAR(dat_nasc) >= 2000
)
ORDER BY nome_medico ASC
limit 2;
-- drop database rev;
