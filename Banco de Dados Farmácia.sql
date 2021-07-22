create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null, 
ativo boolean not null,
primary key (id)
);

insert into tb_categoria (descricao, ativo) values ("Medicamentos",true);
insert into tb_categoria (descricao, ativo) values ("Higiene Pessoal",true);
insert into tb_categoria (descricao, ativo) values ("Maquiagens",true);
insert into tb_categoria (descricao, ativo) values ("Suplementos e Vitamina",true);

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
Nome varchar (255) not null,
Fabricante varchar (255) not null,
Embalagem varchar (255) not null,
Quantidade_Estoque int,
Valor double,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produto (Nome, Fabricante, Embalagem, Quantidade_Estoque, Valor, categoria_id) values ("Aceviton", "Cimed", "30 comprimidos", 100, 26.14,4);
insert into tb_produto (Nome, Fabricante, Embalagem, Quantidade_Estoque, Valor, categoria_id) values ("Creme Dental", "Colgate", "90 g", 1000, 3.66, 2);
insert into tb_produto (Nome, Fabricante, Embalagem, Quantidade_Estoque, Valor, categoria_id) values ("Aas Infantil", "Sanofi", "10 comprimidos", 10, 7.00, 1);
insert into tb_produto (Nome, Fabricante, Embalagem, Quantidade_Estoque, Valor, categoria_id) values ("Addera D3", "Mantecorp", "90 comprimidos", 34, 105.80, 4);
insert into tb_produto (Nome, Fabricante, Embalagem, Quantidade_Estoque, Valor, categoria_id) values ("Máscara para Cílios", "Maybelline", "1 Unidade", 59, 45.80, 3);
insert into tb_produto (Nome, Fabricante, Embalagem, Quantidade_Estoque, Valor, categoria_id) values ("Desodorante Antitranspirante Aerosol", "Dove", "150 ml", 74, 10.99, 2);
insert into tb_produto (Nome, Fabricante, Embalagem, Quantidade_Estoque, Valor, categoria_id) values ("Bepantol Derma Creme Multirrestaurador ", "Bayer", "20 g", 44, 31.56, 1);

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
select * from tb_produto where valor > 50.00;

-- Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.
select * from tb_produto where valor between 3.00 and 60.00;

-- Faça um select  utilizando LIKE buscando os Produtos com a letra B.
select * from tb_produto where nome like "B%";

-- Faça um um select com Inner join entre  tabela categoria e produto.
select tb_produto.nome, tb_produto.valor, tb_categoria.descricao
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são cosméticos).
select tb_produto.nome, tb_produto.valor, tb_categoria.descricao
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where categoria_id = 3;