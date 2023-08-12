create database mercado;

use mercado;

create table fornecedor
(codigo int not null auto_increment primary key,
razao_social varchar(50) not null,
cnpj varchar(20) not null);

insert into fornecedor values (null, 'ABC Ltda.', '12.345.648/0001-99');
insert into fornecedor values (null, 'Super Max S/A', '11.222.333/0004-55');
insert into fornecedor values (null, 'Vende Tudo ME.', '99.888.777/0006-55');

select *
from fornecedor

create table produto
(codigo int not null auto_increment primary key,
descricao varchar(30) not null,
preco float,
fornecedor int not null,
foreign key (fornecedor) references fornecedor(codigo));

insert into produto values (null, 'Caneta', 3.56, 3);
insert into produto values (null, 'Caderno', 36.87, 1);
insert into produto values (null, 'Pasta', 5.89, 2);
insert into produto values (null, 'Lapis', 2.12, 3);

select produto.descricao as produto, fornecedor.razao_social as fornecedor, produto.preco
from produto
join fornecedor
on fornecedor.codigo = produto.fornecedor
order by produto

