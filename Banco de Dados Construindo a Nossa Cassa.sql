create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(225) not null,
ativo boolean not null,
primary key (id)
);

insert into tb_categoria (descricao, ativo) values ("Materiais Hidráulicos" , true);
insert into tb_categoria (descricao, ativo) values ("Iluminação" , true);
insert into tb_categoria (descricao, ativo) values ("Materiais de Construção" , true);
insert into tb_categoria (descricao, ativo) values ("Tintas" , true);
insert into tb_categoria (descricao, ativo) values ("Pisos e Revestimento" , true);

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
Produto varchar (255) not null,
Material varchar (255) not null,
Cor varchar (255) not null,
Marca varchar (255) not null,
QuantidadeEstoque int,
Valor double,
categoria_id bigint,
primary key(id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produto ( Produto, Material, Cor, Marca, QuantidadeEstoque, Valor, categoria_id) values ("Torneira", "Metal", "Prata", "Delina", 56, 159.90 ,1);
insert into tb_produto ( Produto, Material, Cor, Marca, QuantidadeEstoque, Valor, categoria_id) values ("Tinta Látex para Parede", "Látex", "Branco Neve", "Suvinil", 106, 435.80 , 4);
insert into tb_produto ( Produto, Material, Cor, Marca, QuantidadeEstoque, Valor, categoria_id) values ("Lâmpada Tubular", "LED", "Branco ", "Lexman", 35, 24.90 , 2);
insert into tb_produto ( Produto, Material, Cor, Marca, QuantidadeEstoque, Valor, categoria_id) values ("Telha de PVC", "Plástico", "Cerâmica ", "Permatti", 335, 114.90 , 3);
insert into tb_produto ( Produto, Material, Cor, Marca, QuantidadeEstoque, Valor, categoria_id) values ("Cimento 50kg", "CP II F 32", "Cinza", "Votoran", 15, 29.90 , 3);
insert into tb_produto ( Produto, Material, Cor, Marca, QuantidadeEstoque, Valor, categoria_id) values ("Porcelanato Interno m²", "Porcelanato", "	Cinza", "Artens", 15, 55.90 , 5);
insert into tb_produto ( Produto, Material, Cor, Marca, QuantidadeEstoque, Valor, categoria_id) values ("Lâmpada ", "LED", "Branco ", "Ouro Lux", 135, 3.90 , 2);
insert into tb_produto ( Produto, Material, Cor, Marca, QuantidadeEstoque, Valor, categoria_id) values ("Tinta Chalked Efeito Giz", "Spray ", "Rosa", "	Rust-Oleum", 5, 45.90 , 4);

select * from tb_produto;

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
select * from tb_produto where Valor > 50;

-- Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.
select * from tb_produto where Valor between 3.00 and 60.00;

-- Faça um select  utilizando LIKE buscando os Produtos com a letra C.
select * from tb_produto where Produto like "c%";

-- Faça um um select com Inner join entre  tabela categoria e produto.
select tb_produto.produto, tb_produto.valor, tb_categoria.descricao
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são da categoria hidráulica).
select tb_produto.produto, tb_produto.valor, tb_categoria.descricao
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where categoria_id = 1;












