create database clinica2;
use clinica2;

create table pacientes(
 id_pacientes int(10) primary key auto_increment not null,
 nome_paciente varchar(255) not null,
 sexo char(1) not null,
 idade int(10) not null,
 doenca_inicial varchar(255)
);

create table ambulacias(
id_ambulacias int(10) primary key auto_increment not null,
    numero varchar(45) not null,
    andar int(11) not null,
    capacidade int(11) not null
    );
   
create table doencas(
id_doencas int (5) primary key auto_increment not null,
descricao varchar(50)
    );
   
create table especialidades(
id_especialidades int(5) primary key auto_increment not null,
    descricao_especialidade varchar(50)
    );
   
create table funcionarios(
id_funcionarios int(10) primary key auto_increment not null,
    ambulacias_id int(10),
    nome_funcionario varchar (255) not null,
    idade_funcionario int(11) not null,
    sexo_funcionario char(1) not null,
    salario_funcionario float not null,
    cidade varchar(255) not null,
    foreign key(ambulacias_id) references ambulacias (id_ambulacias)
    );
   
create table medicos(
id_medicos int(10) primary key auto_increment not null,
    ambulacias_id int(10),
    crm varchar(50) not null,
    nome_medico varchar(255) not null,
    salario float not null,
    idade int(10) not null,
    especialidades_id int(5),
    foreign key(ambulacias_id) references ambulacias (id_ambulacias),
    foreign key(especialidades_id) references especialidades (id_especialidades)
);

create table consultas(
medicos_id int(10),
    pacientes_id int(10),
    dia date not null,
    horario time not null,
    ambulacias_id int(10),
    doencas_id int(10),
    foreign key(medicos_id) references medicos (id_medicos),
    foreign key(pacientes_id) references pacientes (id_pacientes),
    foreign key(ambulacias_id) references ambulacias (id_ambulacias),
    foreign key(doencas_id) references doencas (id_doencas)
);