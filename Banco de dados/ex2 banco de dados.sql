/* criar o banco de dados */
create database universidade;

/* abrir banco de dados para utilização */
use universidade;

/* criar a tabela professor dentro do banco de dados universidade */
create table professor
(registro int primary key,
nome varchar(50) not null);

/* criar a tabela aluno dentro do banco de dados universidade */
create table aluno
(ra int primary key,
nome varchar(50) not null,
endereco varchar(50) not null,
curso varchar(30) not null,
periodo int not null,
media_ponderada float);

/* criar a tabela disciplina dentro do banco de dados universidade */
create table disciplina
(codigo int primary key,
descricao varchar(30) not null,
professor int not null,
foreign key (professor) references professor(registro));

/* criar a tabela atividade dentro do banco de dados universidade */
create table atividade
(codigo int primary key,
nome varchar(30) not null,
peso int not null,
data date not null,
tipo_atividade varchar(10) not null,
tipo_prova varchar(10),
nr_questoes int,
disciplina int not null,
foreign key (disciplina) references disciplina(codigo));
/* campo da tabela atividade - referencia a outra tabela - campo da outra tabela */ 

/* criar a tabela AlunoDisciplina dentro do banco de dados universidade */
create table alunodisciplina
(ra int not null,
atividade int not null,
nota float,
foreign key (ra) references aluno(ra),
foreign key (atividade) references atividade(codigo));





