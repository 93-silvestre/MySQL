create database db_rh;

use db_rh;

create table tb_funcionarios(
id bigint auto_increment,
nome varchar(255), 
sexo varchar(255),
idade int,
cargo varchar(255),
salario decimal(8,2),
primary key(id)
);

insert into tb_funcionarios(nome, sexo, idade, cargo, salario) values("Nathalia Silvestre" , "Feminino", 27, "Desenvolvedora Full Stack Java Jr", 5000);
insert into tb_funcionarios(nome, sexo, idade, cargo, salario) values("Sandra Oliveira" , "Feminino", 38, "Encarregada de Depto Pessoal", 3000);
insert into tb_funcionarios(nome, sexo, idade, cargo, salario) values("Bruno Zidane" , "Masculino", 21, "Biologo Marinho", 3190);
insert into tb_funcionarios(nome, sexo, idade, cargo, salario) values("Alice Ribeiro" , "Feminino", 24, "Professora", 3262);
insert into tb_funcionarios(nome, sexo, idade, cargo, salario) values("Luciely Saturnino" , "Feminino", 24, "Assistente Social", 4500);

select * from tb_funcionarios;

select * from tb_funcionarios where salario > 2000;

select * from tb_funcionarios where salario < 2000;

alter table tb_funcionarios change cargo Profissão varchar(255);
