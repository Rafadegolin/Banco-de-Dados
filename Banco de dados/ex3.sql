create database empresa;
use empresa;

create table fornecedor
(cnpj varchar(20) not null primary key,
razao varchar(50) not null,
telefone varchar(15));

create table produto
(codigo int not null primary key,
descricao varchar(30) not null,
cnpj_fornecedor varchar(20) not null,
foreign key (cnpj_fornecedor) references fornecedor(cnpj));

insert into fornecedor values ('11.111.111/0001-11', 'ABC Ltda.', '1234-1234');

update fornecedor set telefone = '(19)1234-1234' where cnpj = '11.111.111/0001-11';

delete from fornecedor where cnpj = '11.111.111/0001-11';

select * from fornecedor;
select razao, telefone from fornecedor;
select razao, telefone from fornecedor where cidade = 'Araras';