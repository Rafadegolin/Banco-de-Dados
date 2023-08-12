create database p2;
use p2;
/* TABELA CLIENTE */
create table cliente
(cpf varchar(15) not null primary key,
nome varchar(50) not null,
telefone varchar(11) not null,
email varchar(30) not null,
endereco varchar(80) not null);
/* FIM TABELA CLIENTE */
/* TABELA ANIMAL */
create table animal
(id int not null primary key,
nome varchar(50) not null,
especie varchar(30) not null,
raca varchar(20) not null,
caracteristicasFisicas varchar(80) not null);
/* FIM TABELA ANIMAL */
/* TABELA SERVIÇO */
create table servico
(cod int not null primary key,
nome varchar(50) not null,
especieAnimal varchar(30) not null,
valor int not null);
/* FIM TABALA SERVIÇO */
/* TABELA FUNCIONARIO */
create table funcionario
(matricula int not null primary key,
telefone varchar(12) not null,
rg varchar(15) not null,
cpf varchar(15) not null,
nome varchar(50) not null);
/* FIM TABELA FUNCIONARIO */
/* TABELA PRODUTO */
create table produto
(codProduto int not null primary key,
precoVenda int not null,
especieDestinada varchar(30) not null,
quantidade int not null,
marca varchar(20) not null,
nome varchar(30) not null,
precoCompra int not null);
/* FIM TABELA PRODUTO */
/* TABELA COMPRA */
create table compra
(data date not null primary key,
cliente varchar(15) not null,
produto int not null,
funcionario int not null,
foreign key (cliente) references cliente(cpf),
foreign key (produto) references produto(codProduto),
foreign key (funcionario) references funcionario(matricula));
/* FIM TABELA COMPRA */
/* TABELA EXECUTA */
create table executa
(data date not null primary key,
animal int not null,
funcionario int not null,
servico int not null,
foreign key (animal) references animal(id),
foreign key (funcionario) references funcionario(matricula),
foreign key (servico) references servico(cod));
/* FIM TABELA EXECUTA */
/* CRIANDO VIEW DE EXECUÇÃO */
create view vw_execucao as
select data, 
	   cliente.nome as cliente, 
       animal.nome as animal, 
       funcionario.nome as funcionario 
from executa 
join cliente 
join animal 
join funcionario
order by data
/* FIM VIEW DE EXECUÇÃO */
/* CRIANDO PROCEDURE */
DELIMITER //
create procedure precoproduto_upd(p_porcentagem int)
begin 
	if (p_porcentagem > 0) then
		update produto 
        set precoVenda = precoVenda * (100 + p_porcentagem) / 100;
	else
		select 'Só seram aceitos valores maiores que 0!' as mensagem;
	end if;
end;
//
/* FIM DO PROCEDURE */


