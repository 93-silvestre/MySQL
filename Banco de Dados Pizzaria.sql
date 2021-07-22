create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);

insert into tb_categoria (descricao, ativo) values ("Broto", true);
insert into tb_categoria (descricao, ativo) values ("Média", true);
insert into tb_categoria (descricao, ativo) values ("Grande", true);
insert into tb_categoria (descricao, ativo) values ("Vulcão", true);
insert into tb_categoria (descricao, ativo) values ("Doce", true);

select * from tb_categoria;

create table tb_pizza(
id bigint auto_increment,
Sabor varchar (255) not null,
Massa varchar (255) not null,
Borda varchar(255) not null,
Valor double,
Cliente varchar (255) not null,
Telefone int not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_pizza (Sabor, Massa, Borda, Valor, Cliente,Telefone, categoria_id) values ("Frango c/ catupiry", "Fina", "Cheedar", 39.99, "Felipe Costa", 981348899 , 4);
insert into tb_pizza (Sabor, Massa, Borda, Valor, Cliente,Telefone, categoria_id) values ("Portuguesa", "Média", "Não", 49.99, "Matheus Tabarelli",976532543 , 2);
insert into tb_pizza (Sabor, Massa, Borda, Valor, Cliente,Telefone, categoria_id) values ("Palmito", "Grossa", "Catupiry", 39.99, "Ary de Sá",986524372, 3);
insert into tb_pizza (Sabor, Massa, Borda, Valor, Cliente,Telefone, categoria_id) values ("Banana", "Fina", "Chocolate", 49.99, "Igor Morais",987563231, 5);
insert into tb_pizza (Sabor, Massa, Borda, Valor, Cliente,Telefone,categoria_id) values ("Aliche c/Mussarela", "Grossa", "Catupiry", 59.99, "Jessica Discola",954327890, 1);
insert into tb_pizza (Sabor, Massa, Borda, Valor, Cliente,Telefone,categoria_id) values ("Atum", "Fina", "Sem", 39.99, "Kelvin Macena",989076543, 2);
insert into tb_pizza (Sabor, Massa, Borda, Valor, Cliente,Telefone,categoria_id) values ("Carne seca c/Mussarela", "Grossa", "Cheedar", 59.99, "Lucas Otoni",951237689, 3);
insert into tb_pizza (Sabor, Massa, Borda, Valor, ClienteTelefone,categoria_id) values ("Escarola", "Fina", "Catupiry", 59.99, "Henryk",975432678, 2);

select * from tb_pizza;

-- Faça um select que retorne os produtos com o valor maior do que 45 reais
select * from tb_pizza where Valor > 45.00;

-- Faça um select trazendo  os Produtos com valor entre 29 e 60 reais.
select * from tb_pizza where valor between 29.00 and 60.00;

-- Faça um select  utilizando LIKE buscando os Produtos com a letra C.
select * from tb_pizza where sabor like "c%"; 

-- Faça um um select com Inner join entre  tabela categoria e pizza.
select tb_pizza.sabor, tb_pizza.valor, tb_categoria.descricao from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;

-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são pizza doce).
select tb_pizza.sabor, tb_pizza.valor, tb_categoria.descricao from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id where categoria_id = 5;







