create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria(

id bigint auto_increment,
descricao varchar(255),
ativo boolean,

primary key(id)
);

insert into tb_categoria(descricao,ativo) 
values ("Frutos Simples",true);
insert into tb_categoria(descricao,ativo) 
values ("Frutos Secos",true);
insert into tb_categoria(descricao,ativo) 
values ("Frutos Carnosos",true);
insert into tb_categoria(descricao,ativo) 
values ("Frutos Agregados",true);
insert into tb_categoria(descricao,ativo) 
values ("Folhas",true);

create table tb_produto(

id bigint auto_increment,
nome varchar(255) not null,
quantidade int,
preco decimal (4,2),
categoria_id bigint,

primary key(id),
foreign key (categoria_id) references tb_categoria(id)

);

insert into tb_produto(nome,quantidade,preco,categoria_id)
values("Castanha-de-caju",100,54.99,2);
insert into tb_produto(nome,quantidade,preco,categoria_id)
values("Couve Manteiga",67,2.99,5);
insert into tb_produto(nome,quantidade,preco,categoria_id) 
values("Tomate Cereja",80,7.99,1);
insert into tb_produto(nome,quantidade,preco,categoria_id) 
values("Alface",27,1.99,5);
insert into tb_produto(nome,quantidade,preco,categoria_id) 
values("Abacate",20,3.99,1);
insert into tb_produto(nome,quantidade,preco,categoria_id) 
values("Avelã",500,10.00,2);
insert into tb_produto(nome,quantidade,preco,categoria_id) 
values("Morango",25,5.99,4);
insert into tb_produto(nome,quantidade,preco,categoria_id) 
values("Melancia",15,12.99,3);

select * from tb_produto;

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where nome like "%C%";

select * from tb_produto inner join tb_categoria 
on tb_categoria.id = tb_produto.categoria.id;

select * from tb_produto inner join tb_categoria 
on tb_categoria.id = tb_produto.categoria.id where tb_categoria.id = 4;


