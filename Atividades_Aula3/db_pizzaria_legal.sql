create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(

id bigint auto_increment,
sabor varchar(255) not null,
massa varchar(255) not null,

primary key (id)
);

insert into tb_categoria (sabor, massa)
values ("Salado","Sem Glúten");
insert into tb_categoria (sabor, massa)
values ("Salado","Tradicional");
insert into tb_categoria (sabor, massa)
values ("Salgado","Integral");
insert into tb_categoria (sabor, massa)
values ("Doce", "Sem Glúten");
insert into tb_categoria (sabor, massa)
values ("Doce","Tradicional");

create table tb_pizza(

id bigint auto_increment,
nome varchar(255) not null,
tamanho varchar(255),
preco decimal (4,2),
categoria_id bigint,

primary key(id),
foreign key (categotia_id) references tb_categoria(id)

);

insert into tb_pizza (nome,tamanho,preco,categoria_id)
values ("Portuguesa","Grande",49,90,1);
insert into tb_pizza (nome,tamanho,preco,categoria_id)
values ("Atum","Média","39.90",3);
insert into tb_pizza (nome,tamanho,preco,categoria_id)
values ("Romeu e Julieta","Pequena",36.99,5);
insert into tb_pizza (nome,tamanho,preco,categoria_id)
values ("M&M", "Pequena",18.99,4);
insert into tb_pizza (nome,tamanho,preco,categoria_id)
values ("Calabresa","Grande",29.90,2);
insert into tb_pizza (nome,tamanho,preco,categoria_id)
values ("Mussarela","Média",22.99,2);
insert into tb_pizza (nome,tamanho,preco,categoria_id)
values ("Floresta Negra","Grande",48.99,5);
insert into tb_pizza (nome,tamanho,preco,categoria_id)
values ("A moda do chefe", "Media", 28.99,1);

select * from tb_pizza;

select * from tb_pizza where preco > 45;

select * from tb_pizza where preco between 29 and 60;

select * from tb_pizza where nome like "%C%";

select * from tb_pizza inner join tb_categoria
on tb_categoria.id = tb_pizza.categoria.id;

select * from tb_pizza inner join tb_categoria
on tb_categoria.id = tb_pizza.categoria.id where tb_categoria.id =2;


