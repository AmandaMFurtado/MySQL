create database db_servicosrh;

use db_servicosrh;

create table tb_funcionarios(

	id bigint auto_increment,
    nome varchar(20) not null,
    jornada int not null,
    cargo varchar(20) not null,
    remuneracao decimal (10,2),
    
    primary key (id)
);

insert into tb_funcionarios(nome,jornada,cargo,remuneração) 
values ("Anna dos Santos", 8, "Assistente administrativo", 1.800);
insert into tb_funcionarios(nome,jornada,cargo,remuneração) 
values ("Maria da Silva", 12, "Alalista administrativo", 3.800);
insert into tb_funcionarios(nome,jornada,cargo,remuneração) 
values ("Hanna Furtado", 6, "Estagiaria em TI", 2.500);
insert into tb_funcionarios(nome,jornada,cargo,remuneração) 
values ("Mariana Oliveira", 8, "Dev. Java", 5.600);
insert into tb_funcionarios(nome,jornada,cargo,remuneração) 
values ("Rafaela Menezes", 8, "Cordenadora de Projetos", 7.200);

select * from tb_funcionarios where remuneracao > 2.000;
select * from tb_funcionarios where remuneracao < 2.000;

update tb_funcionarios set jornada = 8 where id = 3;
update tb_funcionarios set cargo = "Assistente de TI" where id = 3;
update tb_funcionarios set remuneracao = 4.500 where id = 3; 

select * from tb_funcionarios;