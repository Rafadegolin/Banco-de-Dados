/* criar banco de dados */
create database aula;

/* abrir banco de dados para utilização */
use aula;

/* criar tabela */
create table produto 
(codigo int primary key,
nome varchar(30),
preco float,
unidade char(2));

/* alterar a estrutura da tabela */
alter table produto
add dimensao varchar(20);

/* apagar atributo da tabela */
alter table produto
drop unidade;

/* excluir a tabela */
drop table produto;

/* comando dmls */
select * from produto

insert into produto values ('1','Caneta','2.35','UN');
insert into produto values ('2','Caderno','25.00','UN');


