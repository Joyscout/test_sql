create database rev;
use rev;

create table aluno(
	id_aluno int primary key auto_increment not null,
	nome varchar(30) not null,
    nt1 int not null,
    nt2 int not null,
    nt3 int not null
);

create table produto(
	id_produto
delimiter $$
create function media(nome_al varchar(30))
returns double
deterministic
	begin
    declare nm1, nm2, nm3 double;
    declare med double;
    select nt1, nt2, nt3 into nm1, nm2, nm3 from aluno where nome=nome_al;
    set med =(nm1 + nm2+ nm3)/3;
    return med;
end
$$
delimiter ;

insert into aluno(nome, nt1, nt2, nt3)
values("al1", 5,3,10),
	  ("al2", 5,8,8);

select media("al1");
drop database rev;
