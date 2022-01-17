create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(

id bigint auto_increment,
categoria varchar(255), not null,
ativo boolean,

primary key(id)
);
insert into tb_classe (categoria, ativo) values ("Ação e Aventura",true);
insert into tb_classe (categoria, ativo) values ("RPG",true);
insert into tb_classe (categoria, ativo) values ("Esportes",true);
insert into tb_classe (categoria, ativo) values ("Simulação",true);
insert into tb_classe (categoria,ativo) values ("Corrida",true);

create table tb_personagem(
id bigint auto_increment,
nome varchar(255) not null,
poder varchar(255) not null,
ataque int not null,
defesa int not null,
clase_id bigint,

primary key(id),
foreign key (clase_id) references tb_classe(id)


);

insert into tb_personagem (nome,poder,ataque,defesa,classe_id) 
values("Mika","Invisibilidade",3000,2500,2);
insert into tb_personagem (nome,poder,ataque,defesa,classe_id) 
values("Julian","Voar",5000,6000,1);
insert into tb_personagem (nome,poder,ataque,defesa,classe_id)
values("Caroline","Controlar Mente",1000,2000,1);
insert into tb_personagem (nome,poder,ataque,defesa,classe_id)
values("Max","Super Força",3000,5000,4);
insert into tb_personagem (nome,poder,ataque,defesa,classe_id)
values("Geronimo","Correr",2000,3000,3);
insert into tb_personagem (nome,poder,ataque,defesa,classe_id)
values("Nikita","Cura",6000,2000,2);
insert into tb_personagem (nome,poder,ataque,defesa,classe_id)
values("Nico","Teletransporte",4000,2000,4);
insert into tb_personagem (nome,poder,ataque,defesa,classe_id)
values("Petit","Imortabulidade",4000,2000,2);

select *from tb_personagem;

select * from tb_personagem where ataque > 2000;

select * from tb_personagem where defesa between 1000 and 2000;

select * from tb_personagem where nome like "%C%";

select *  from tb_personagem inner join tb_classe
on tb_classe.id = tb_personagem.classe.id;

select * from tb_personagem inner join tb_claase
on tb_classe.id = tb_personagem.classe.id where tb_classe.id =1; 