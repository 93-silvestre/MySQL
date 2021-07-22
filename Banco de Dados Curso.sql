create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(225) not null,
ativo boolean not null,
primary key (id)
);

insert into tb_categoria (descricao, ativo) values ("Front End" , true);
insert into tb_categoria (descricao, ativo) values ("Data Science" , true);
insert into tb_categoria (descricao, ativo) values ("DevOps" , true);
insert into tb_categoria (descricao, ativo) values ("UX & Design" , true);
insert into tb_categoria (descricao, ativo) values ("Inovação & Gestão" , true);

select * from tb_categoria;

create table tb_curso(
id bigint auto_increment,
Curso varchar (255) not null,
CargaHoraria int not null,
Valor decimal(6,2) not null,
categoria_id bigint,
primary key(id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_curso ( Curso, CargaHoraria, Valor, categoria_id) values ("Acessibilidade Web" , 20, 148.98, 1);
insert into tb_curso ( Curso, CargaHoraria, Valor,categoria_id) values ("HTML e CSS" , 190, 348.98,1);
insert into tb_curso ( Curso, CargaHoraria, Valor,categoria_id) values ("SQL com MySQL Server da Oracle" , 70, 48.98,2 );
insert into tb_curso ( Curso, CargaHoraria, Valor,categoria_id) values ("Certificação LPI Linux Essentials" , 70, 28.98,3 );
insert into tb_curso ( Curso, CargaHoraria, Valor,categoria_id) values ("Pintura Digital no Photoshop" , 90, 168.98,4 );
insert into tb_curso ( Curso, CargaHoraria, Valor,categoria_id) values ("Business Agility" , 60, 88.98,5 );
insert into tb_curso ( Curso, CargaHoraria, Valor,categoria_id) values ("Angular" , 90, 128.98, 1);
insert into tb_curso ( Curso, CargaHoraria, Valor,categoria_id) values ("Administrador de Redes" , 90, 28.98, 5);


select * from tb_curso;

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
select * from tb_curso where Valor > 50;

-- Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.
select * from tb_curso where Valor between 3.00 and 60.00;

-- Faça um select  utilizando LIKE buscando os Produtos com a letra B.
select * from tb_curso where Curso like "B%";

-- Faça um um select com Inner join entre  tabela categoria e produto.
select tb_curso.curso, tb_curso.valor, tb_categoria.descricao
from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id;

-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são da categoria hidráulica).
select tb_curso.curso, tb_curso.valor, tb_categoria.descricao
from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id where categoria_id = 1;












