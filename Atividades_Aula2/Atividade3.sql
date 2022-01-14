create database db_escola;

use db_escola;

create table tb_estudantes(
	id bigint auto_increment,
    nome varchar (255) not null,
    matricula int not null,
    serie varchar(255) not null,
    nota decimal (10,2),

	primary key (id)
);

insert into tb_estudantes(nome, matricula, serie, nota)
values("Rafaela Menezes", 001, "1 ano", 7.5);
insert into tb_estudantes(nome, matricula, serie, nota)
values("Mariana Oliveira", 101, "2 ano", 8.6);
insert into tb_estudantes(nome, matricula, serie, nota)
values("Hanna Furtado", 123, "5 ano", 6.5);
insert into tb_estudantes(nome, matricula, serie, nota)
values("Maria da Silva", 324, "6 ano", 5.8);
insert into tb_estudantes(nome, matricula, serie, nota)
values("Anna dos Santos", 102, "7 ano", 9.2);
insert into tb_estudantes(nome, matricula, serie, nota)
values("Maria Silveira", 105, "3 ano", 6.9);
insert into tb_estudantes(nome, matricula, serie, nota)
values("Juliana Aragão", 321, "6 ano", 5.9);
insert into tb_estudantes(nome, matricula, serie, nota)
values("Cecilia Machado", 345, "9 ano", 8.9);

select * from tb_estudantes where nota > 7;
select * from tb_estudantes where nota < 7;

update tb_estudantes set nota = 6.2 where id = 4;

select * from tb_estudantes;
