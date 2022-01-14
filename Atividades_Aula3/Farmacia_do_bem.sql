create database tb_farmacia_do_bem;

use tb__farmacia_do_bem;

create table tb_categoria(

id bigint auto_increment not null,
descricao varchar(255) not null,
ativo boolean,

primary key(id)
);

insert into tb_categoria (descricao,ativo) values ("Antibiótico",true);
insert into tb_categoria (descricao,ativo) values ("Energetico",true);
insert into tb_categoria (descricao,ativo) values ("Beleza",true);
insert into tb_categoria (descricao,ativo) values ("Antihistaminico",true);
insert into tb_categoria (descricao,ativo) values ("Higiene Pessoal",true);

select * from tb_categoria;

create table tb_produtos(
id bigint auto_increment,
nome varchar (255) not null,
datacadastro timestamp,
quantidade int,
preco decimal (7,2),
categoria_id bigint,

primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_produtos (nome,datacadastro,quantidade,preco,categoria_id) 
values ("Desodorante Rexona",current_date(),100, 19.90,3);
insert into tb_produtos (nome,datacadastro,quantidade,preco,categoria_id) 
values ("Shampoo",current_date(), 150, 12,99,3);
insert into tb_produtos (nome,datacadastro,quantidade,preco,categoria_id) 
values ("Allegra",current_date(),80, 29,90,4);

select * from tb_produtos;

select * from tb_produtos where preco >50;

select * from tb_produtos where preco between 3 and 60;

select * from tb_produtos where nome like "%A%";

select *  from tb_produtos inner join tb_categorias 
on tb_categorias.id = tb_produtos.categoria.id;

select *  from tb_produtos inner join tb_categorias 
on tb_categorias.id = tb_produtos.categoria.id where tb_categotias.id = 3;


