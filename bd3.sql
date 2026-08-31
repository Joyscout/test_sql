create database futibas;
use futibas;
-- SET SQL_SAFE_UPDATES = 0;

create table Times (
idtimes int primary key auto_increment, 
nome varchar (50) not null,
valor double not null,
anodefundacao int
); 

create table jogadores ( 
idjogador int primary key auto_increment,
times_id int ,
nomej varchar (50) not null,
salario double, 
datadenascimento date,
 foreign key(times_id) references Times (idtimes)
 );
 
insert into Times (nome, valor, anodefundacao)
values ('Bahia', 2000000, 1931),
('flamengo', 400000000, 1890),
( 'Botafogo', 10000000, 1907),
( 'Juventus', 50000000, 1920),
( 'Santos', 40000000, 1921),
('Vasco', 50000000, 1891),
('Benfica', 400000, 1910),
('Barcelona', 10000, 1899);

insert into jogadores ( nomej, salario, datadenascimento)
values ( 'Jorge', 4000, '2000-01-01'),
		( 'Alex', 4000, '2004-01-04'),
		( 'Paulo', 4000, '1999-04-01'),
		( 'Luiz', 4000, '1980-01-01'),
		( 'Tico', 4000, '2002-01-04'),
		( 'Caio', 4000, '1999-04-01'),
		( 'Kaka', 4000, '1982-01-01'),
		( 'Xaxa', 4000, '2002-01-04'),
		( 'Sandro', 4000, '1999-04-11'),
		( 'James', 4000, '1981-01-01');
        
insert into jogadores ( nomej, salario, datadenascimento)
values ( 'Ronaldo', 10000000000, '1777-07-07'),
( 'Messi', 10000000000, '2000-01-01');

insert into Times ( nome, valor, anodefundacao)
values ( 'Fluminense de Feira', 10000000000, '1777-07-07'),
( 'Souza-PB', 10000000000, '2000-01-01');


select * from Times;
select * from jogadores;
update jogadores set salario=10000 where idjogador =3;
delete from Times where nome = 'Benfica';
drop database futibas;

