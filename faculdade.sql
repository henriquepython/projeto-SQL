drop database faculdade;

create database faculdade
default charset utf8mb4
default collate utf8mb4_general_ci;

use faculdade;

create table cursos(
idcurso int not null auto_increment,
nome varchar(20) not null,
tempo varchar(20) not null,
anodc date,
primary key(idcurso)
) default charset utf8mb4;


create table alunos(
idaluno int not null auto_increment,
nome varchar(30) not null,
dtnascimento date,
curso varchar(16),
pais varchar(16),
primary key(idaluno)
)default charset utf8mb4;


create table disciplinas(
iddisc int not null auto_increment,
nome varchar(30) not null,
tip varchar(10) not null,
tempo varchar(10) not null,
primary key (iddisc)
)default charset utf8mb4;


select * from cursos;
select * from alunos;
select * from disciplinas;


alter table alunos
add column cursopref int first;

alter table alunos
add foreign key(cursopref)
references cursos(idcurso);

alter table alunos
add column discpref int first;

alter table alunos
add foreign key(discpref)
references disciplinas(iddisc);

alter table disciplinas
add column esccurso int first;

alter table disciplinas
add foreign key(esccurso)
references cursos(idcurso);
