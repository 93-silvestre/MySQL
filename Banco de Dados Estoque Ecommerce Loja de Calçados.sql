create database db_ecommerce;

use db_ecommerce;

create table tb_estoque(
id bigint auto_increment,
Marca varchar(255),
Modelo varchar(255),
Quantidade int,
Numeração int,
Preço decimal(8,2),
primary key(id)
);


insert into tb_estoque(Marca, Modelo, Quantidade, Numeração, Preço) values( "NIKE", "AIR FORCE 1 07 LE MASCULINO", 20, 40, 699);
insert into tb_estoque(Marca, Modelo, Quantidade, Numeração, Preço) values( "NIKE", "FORCE 1 PS", 30, 36, 299);
insert into tb_estoque(Marca, Modelo, Quantidade, Numeração, Preço) values( "NIKE", "JORDAN WHY NOT ZER0.3 SE MASCULINO", 25, 41, 529);
insert into tb_estoque(Marca, Modelo, Quantidade, Numeração, Preço) values( "NIKE", "REACT ART3MIS FEMININO", 50, 36, 480);
insert into tb_estoque(Marca, Modelo, Quantidade, Numeração, Preço) values( "NIKE", "AIR FORCE 1 07 LX FEMININO", 78, 35, 599);
insert into tb_estoque(Marca, Modelo, Quantidade, Numeração, Preço) values( "NIKE", "JORDAN MA2 FEMININO", 90, 36, 799);
insert into tb_estoque(Marca, Modelo, Quantidade, Numeração, Preço) values( "NIKE", "AIR VAPORMAX EVO FEMININO", 34, 34, 1399);
insert into tb_estoque(Marca, Modelo, Quantidade, Numeração, Preço) values( "NIKE", "WAFFLE ONE FEMININO", 65, 36, 649);

select * from tb_estoque;

select * from tb_estoque where Preço > 500;

select * from tb_estoque where Preço < 500;

alter table tb_estoque change Preço Valor varchar(255);
