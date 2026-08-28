create database clinica;
use clinica;

create table medicos(
	id int primary key auto_increment not null,
    crm varchar(50) not null,
    nome varchar(255) 
);

create table receitas(
 id_recita int primary key auto_increment not null,
 medicos_id int not null,
 nome_remedio varchar(255) not null,
 valor decimal(10,2) not null,
 quantidade int not null,
 valor_total decimal(10,2),
 foreign key(medicos_id) references medicos (id)
);

insert into receitas (medicos_id, nome_remedio, valor, quantidade, valor_total)
values(1, 'ibunprofeno', 34.4, 23, 344.4),
	  (2, 'dorflex', 24.9, 83, 524.9);

insert into medicos( crm, nome)
values('123.456.789-10', 'carlos'),
		('321.654.987.01', 'vlad');
        
select * from medicos;