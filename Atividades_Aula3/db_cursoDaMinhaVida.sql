create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(

id bigint auto_increment,
classificacao varchar(255),
ativo boolean,

primary key(id)
);

insert into tb_categoria (classificacao,ativo) values ("Presencial",true);
insert into tb_categoria (classificacao,ativo) values ("Semi-Presencial",true);
insert into tb_categoria (classificacao,ativo) values ("EAD",true);

create table tb_curso(
id bigint auto_increment,
nome varchar(255) not null,
mensalidade decimal(4,2),
vagas int,
categoria_id bigint,

primary key (id),
foreign key (categoria_id) references tb_categoria(id)

);

insert into tb_curso (nome,mensalidade,vagas,categoria_id)
values ("Administração",50,35,3);
insert into tb_curso (nome,mensalidade,vagas,categoria_id)
values ("Analise de Sistemas",100,25,2);
insert into tb_curso (nome,mensalidade,vagas,categoria_id)
values ("Nutrição",60,18,1);
insert into tb_curso (nome,mensalidade,vagas,categoria_id)
values ("Segurança do Trabalho",120,22,1);
insert into tb_curso (nome,mensalidade,vagas,categoria_id)
values ("Moda",40,30,1);
insert into tb_curso (nome,mensalidade,vagas,categoria_id)
values ("Lógica de Programação",80,54,3);
insert into tb_curso (nome,mensalidade,vagas,categoria_id)
values ("Java iniciante",22.90,100,3);
insert into tb_curso (nome,mensalidade,vagas,categoria_id)
values ("Como cuidar do seu Pet",25.99,180,3);


select * from tb_curso;

select * from tb_curso where mensalidade > 50;

select * from tb_curso where mensalidade between 3 and 60;

select * from tb_curso where nome like "%J%";

select * from tb_curso inner join tb_categoria 
on tb_categoria.id = tb_curso.categoria.id;

select * from tb_curso inner join tb_categoria 
on tb_categoria.id = tb_curso.categoria.id where tb_categoria.id = 3;