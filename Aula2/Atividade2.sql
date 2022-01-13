create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
	
    id bigint auto_increment,
    nome varchar(20) not null,
    marca varchar (20) not null,
    preco decimal (6,2),
	modelo varchar(10),
    
    primary key (id)
);
alter table tb_produtos modify modelo varchar (255);

insert into tb_produtos (nome, marca, preco, modelo) 
values ("Notbook", "Lenovo", 2100, "Ideapad 320");
insert into tb_produtos (nome, marca, preco, modelo) 
values ("Fogão", "Consul", 1100, "F2232");
insert into tb_produtos (nome, marca, preco, modelo) 
values ("Geladeira", "Brastemp", 2700, "B5676");
insert into tb_produtos (nome, marca, preco, modelo) 
values ("Televisão 4K", "LG", 3600,00, "L4k");
insert into tb_produtos (nome, marca, preco, modelo) 
values ("Smartfone", "Motorola", 1800, "OneVision");
insert into tb_produtos (nome, marca, preco, modelo) 
values ("Mesa", "Proença", 350, "MP2122");
insert into tb_produtos (nome, marca, preco, modelo) 
values ("Garrafa Termica", "Jundia", 100, "GT900");
insert into tb_produtos (nome, marca, preco, modelo) 
values ("Conjunto de cadeiras", "Proença", 200, "MP2122");

select * from tb_produtos where preco > 500;
select * from tb_produtos where preco < 500;

update tb_produtos set modelo = "MP3033" where id = 8;
update tb_produtos set preco = 1.100 where id = 5;
update tb_produtos set marca = "Itatiaia" where id = 8; 

select * from tb_produtos;