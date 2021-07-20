create database db_escola;

use db_escola;

create table tb_secretaria(
id bigint auto_increment,
Aluno varchar(255),
Ano int,
Ensino varchar(255),
Nota decimal(8,2),
primary key(id)
);

insert into tb_secretaria(Aluno, Ano, Ensino, Nota) values("Giovana Soares" , 3, "Médio", 9);
insert into tb_secretaria(Aluno, Ano, Ensino, Nota) values("Fernanda Atunes" , 8, "Fundamental", 8);
insert into tb_secretaria(Aluno, Ano, Ensino, Nota) values("Felipe Rodrigues" , 6, "Fundamental", 5);
insert into tb_secretaria(Aluno, Ano, Ensino, Nota) values("Thiago Santos" , 2, "Fundamental", 10);
insert into tb_secretaria(Aluno, Ano, Ensino, Nota) values("Erika Oliveira" , 1, "Médio", 7);
insert into tb_secretaria(Aluno, Ano, Ensino, Nota) values("bruno Cardoso" , 5, "Fundamental", 3);
insert into tb_secretaria(Aluno, Ano, Ensino, Nota) values("Gabriela Silva" , 4, "Fundamental", 4);
insert into tb_secretaria(Aluno, Ano, Ensino, Nota) values("Gabriel Guedes" , 3, "Fundamental", 2);

select * from tb_secretaria;

alter table tb_secretaria add Situação varchar(255);