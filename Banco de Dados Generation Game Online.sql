create database db_generation_game_online;

use  db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);

insert into tb_classe (descricao, ativo) values ("Tropa", true);
insert into tb_classe (descricao, ativo) values ("Cartas de Ciclo", true);
insert into tb_classe (descricao, ativo) values ("Salpicadores", true);
insert into tb_classe (descricao, ativo) values ("Tropa Aérea", true);
insert into tb_classe (descricao, ativo) values ("Multi-unidade", true);

select * from tb_classe;

create table tb_personagem(
id bigint auto_increment,
nome varchar (255) not null,
poder varchar(255) not null,
ataque int not null,
defesa int not null,
nivel varchar(255) not null,
classe_id bigint,
primary key (id),
FOREIGN KEY (classe_id) REFERENCES tb_classe (id)
);

insert into tb_personagem (nome, poder, ataque, defesa, nivel, classe_id) values ("Golen de Gelo", "Congelamento", 2450, 904, "Lendario",1);
insert into tb_personagem (nome, poder, ataque, defesa, nivel, classe_id) values ("Corredor", "Corpo a corpo", 3489, 904, "Comum",4);
insert into tb_personagem (nome, poder, ataque, defesa, nivel, classe_id) values ("Dragão Bebê", "Cospe Lava", 1231, 904, "Épico",2);
insert into tb_personagem (nome, poder, ataque, defesa, nivel, classe_id) values ("Lava Hound", "Cospe Magma", 2164, 904, "Lendário",4);
insert into tb_personagem (nome, poder, ataque, defesa, nivel, classe_id) values ("Goblins", "Multuplicação", 2000, 152, "Comum", 5);
insert into tb_personagem (nome, poder, ataque, defesa, nivel, classe_id) values ("Executor", "Machado Reverso", 1568, 919,"Épica", 1);
insert into tb_personagem (nome, poder, ataque, defesa, nivel, classe_id) values ("Mago", "Bola de Fogo", 2120, 544, "Rara", 3);
insert into tb_personagem (nome, poder, ataque, defesa, nivel, classe_id) values ("Exercito de Esqueletos", "Circulo de ataque", 1085, 0, "Épica", 5);

select * from tb_personagem;

-- Faça um select que retorne os personagens com o poder de ataque maior do que 2000
select * from tb_personagem where ataque > 2000;

-- Faça um select trazendo os personagens com poder de defesa entre 1000 e 2000
select * from tb_personagem where defesa between 1000 and 2000;

-- Faça um select utilizando LIKE buscando os personagens com a letra C 
select * from tb_personagem where nome like "C%"; 

-- Faça um select com Inner join entre tabela classe e personagem
select tb_personagem.nome, tb_personagem.poder, tb_classe.descricao from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id;

-- Faça um select onde traga todos os personagens de uma classe específica
select tb_personagem.nome, tb_personagem.poder, tb_classe.descricao from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id and tb_classe.descricao = "Tropa";








