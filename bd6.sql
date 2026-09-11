create database lule;
use lule;

create table partido (
cod_partido int primary key auto_increment,
nome_partido varchar(255)
);

create table cargo (
cod_cargo int primary key auto_increment,
nome_cargo varchar(255)
);

create table candidato (
num_candidato int primary key auto_increment,
nome_candidato varchar(255),
codcargo int,
codpartido int,
foreign key (codcargo) references cargo (cod_cargo),
foreign key (codpartido) references partido (cod_partido)
);

create table zona_secao (
num_zona int,
num_secao int,
nome_zona_secao varchar (666),
qtd_eleitores int,
primary key(num_zona,num_secao)
);

create table votacao (
qtd_votos int,
numzona int,
numsecao int,
numcandidato int,
foreign key (numzona,numsecao) references zona_secao (num_zona, num_secao),
foreign key (numcandidato) references candidato (num_candidato)
);

alter table votacao add data_votacao datetime;
alter table candidato drop foreign key codcargo;

select * from votacao;
select * from zona_secao;
select * from partido;
select * from candidato;
show create table candidato;
select * from cargo;
drop database lule;