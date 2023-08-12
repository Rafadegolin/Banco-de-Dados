/*Rafael Degolin da Silva RA: 106671 */
create database Prova_P1;
use Prova_P1;

create table Funcionarios
(Num_registro int primary key,
Nome varchar(50) not null,
Cpf varchar(15) not null,
Sexo varchar(15) not null,
Endereco varchar(100) not null,
Telefone varchar(20) not null,
Salario float not null);

create table Clientes
(Codigo_cliente int primary key,
Nome varchar(50) not null,
Cpf varchar(15) not null,
Sexo varchar(15) not null,
Telefone varchar(20) not null,
Endereco varchar(100) not null);

create table Produtos
(Codigo int primary key,
Valor_compra float not null,
Valor_venda float not null,
Qtd_estoque int not null,
Max_estoque int not null,
Min_estoque int not null,
Unidade_medida varchar(20) not null,
Descricao varchar(50) not null);

create table Vendas
(Cliente int not null,
Vendedor int not null,
Produtos int not null,
Data_venda date not null,
Qtd_produtos int not null,
foreign key (Cliente) references Clientes(Codigo_cliente),
foreign key (Vendedor) references Funcionarios(Num_registro),
foreign key (Produtos) references Produtos(Codigo));

