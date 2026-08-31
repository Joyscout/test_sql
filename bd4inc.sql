create database atv;
use atv; 



create table DEPT(
DEP_COD char(3) not null primary key,
DEP_NOME varchar(36) not null,
GERENTE char(6),
DSUPER char(3)
);

create table EMPR (
MATR char (6) not null primary key,
Nome varchar(12) not null,
Sobrenome varchar (15) not null, 
DCOD char(3),
FONE char(14),
DINADIM date,
CARGO char(10),
NIVELED int,
SEXO char(1),
DATANASC date,
SALARIO decimal(9,2),
BONUS decimal(9,2),
COMIS decimal(9,2),
foreign key (DCOD) references DEPT (DEP_COD)

);

create table PROJETO(
PROJ_COD char(6) not null primary key,
PROJ_NOME varchar(24) not null,
DCOD char(6) not null,
RESP char(6) not null,
EQUIPE int(5),
DATAINI date,
DATAFIN date,
PSUPER char(6),
foreign key (DCOD) references DEPT (DEP_COD)
);

insert into EMPR ( Sobrenome,Nome, DCOD, DATANASC,DINADIM, SALARIO)
values ( 'HASS', 'CHRISTINE', 'A00', '14/08/33', '01/01/65', '52750,00'), 

( 'THOMPSON', 'MICHAEL','B01', '02/02/48', '10/10/73 ', '41250,00'),  
('KWAN', 'SALLY', 'C01', '11/05/41', '05/04/75', '38250,00'),
( 'GEYER', 'JOHN', 'E01', '15/09/25', '17/08/49', '40175,00'), 
( 'STERN', 'IRVING', 'D11', '07/07/45', '14/09/73', '32250,00'), 
( 'PULASKI', 'EVA', 'D21', '26/05/53', '30/09/80', '36170,00'),  
( 'HENDERSON', 'EILEEN', 'E11', '14/01/46', '01/06/73', '40300,00' ), 
( 'SPENSER','THEODORE',m E21 25/11/61 12/04/89 39000,00 '), 