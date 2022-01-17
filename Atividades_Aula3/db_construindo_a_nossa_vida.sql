create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categorias(

id bigint auto_increment,
descricao varchar(255),
ativo boolean,

primary key(id)
);

insert into tb_categorias(descricao,ativo) values ("Vestuario",true);
insert into tb_categorias(descricao,ativo) values ("Eletronicos",true);
insert into tb_categorias(descricao,ativo) values ("Moveis",true);
insert into tb_categorias(descricao,ativo) values ("Pet",true);
insert into tb_categorias(descricao,ativo) values ("Utencilios",true);

create table tb_produto(

id bigint auto_increment,
nome varchar(255) not null,
modelo varchar(255),
preco decimal (4,2),
categoria_id bigint,

primary key(id),
foreign key (categoria_id) references tb_categorias(id)

);

insert into tb_produto(nome,modelo,preco,categoria_id)
values ("Cama Box","CX200",1200,3);
insert into tb_produto(nome,modelo,preco,categoria_id)
values ("Micro-ondas","LG2122",430,2);
insert into tb_produto(nome,modelo,preco,categoria_id)
values ("Camisa de manga longa","Nike",19.99,1);
insert into tb_produto(nome,modelo,preco,categoria_id)
values ("Jogo de Panela","Tramontina 2000",89.99,5);
insert into tb_produto(nome,modelo,preco,categoria_id)
values ("Ração Cat","Golden",99.99,4);
insert into tb_produto(nome,modelo,preco,categoria_id)
values ("Coleira com Peitora","Pet76",12.00,4);
insert into tb_produto(nome,modelo,preco,categoria_id)
values ("Puf","MJ9000",49.99,3);
insert into tb_produto(nome,modelo,preco,categoria_id)
values ("Calça Jeans","Skini",29.99,1);

select * from tb_produto;

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where nome like "%C%";

select * from tb_produto inner join tb_categoria 
on tb_categoria.id = tb_produto.categoria.id;

select * from tb_produto inner join tb_categoria 
on tb_categoria.id = tb_produto.categoria.id where tb_categoria.id = 3;

