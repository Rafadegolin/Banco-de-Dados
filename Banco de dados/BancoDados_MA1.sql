/*Rafael Degolin da Silva RA: 106671
  Pedro Henrique Guerra RA: 108028   */

/* CRIANDO O BANCO DE DADOS */
create database atividadeteste;
use atividadeteste;

/* CRIANDO AS TABELAS */
create table participante
(cpf varchar(15) primary key,
nome varchar(50) not null);

create table questao
(codigoQ int primary key,
descricao varchar(160) not null);

create table alternativa
(codigoA int primary key,
descricao varchar(250) not null,
questao int not null,
foreign key (questao) references questao(codigoQ));

create table questaoalternativa
(codigoA int not null,
codigoQ int not null,
peso int,
cpf varchar(15) not null,
foreign key (cpf) references participante(cpf),
foreign key (codigoA) references alternativa(codigoA),
foreign key (codigoQ) references questao(codigoQ));

create table participantequestao
(codigoQ int not null,
cpf varchar(15) not null,
pontuacao int,
foreign key (codigoQ) references questao(codigoQ),
foreign key (cpf) references participante(cpf));
/* TABELAS CRIADAS */

/* INSERINDO VALORES NA TABELA PARTICIPANTE */
insert into participante values ('111.111.111-11', "Wagner Lisboa");
insert into participante values ("222.222.222-22", "Otavio Morais");
insert into participante values ("333.333.333-33", "Felipe Bayona");
insert into participante values ("444.444.444-44", "Lucas Wagner");
select * from participante;
/* VALORES INSERIDOS NA TABELA PARTICIPANTE */
/* -----------------------------------------------------*/
/* -----------------------------------------------------*/
/* INSERINDO VALORES NA TABELA QUESTAO */
insert into questao values (1, 'Com que frequência você come carne vermelha?
1 porção= 70g (o equivalente a duas fatias de presunto)');
insert into questao values (2, 'Com que frequência você come peixe ou frutos do mar (camarões,
caranguejos, ostras e mexilhões)?');
insert into questao values (3, 'Você utiliza aparelhos de ar condicionado ou aquecedores em sua casa?');
insert into questao values (4, 'Qual a procedência alimentos que você consome?');
insert into questao values (5, 'Quantas vezes por ano você compra sapatos e roupas novas?');
insert into questao values (6, 'Com que frequência você ou sua família compra eletrodomésticos
e equipamentos eletrônicos (televisores, computadores, aparelhos
celulares etc)?');
insert into questao values (7, 'Com que frequência você compra jornais, revistas e livros?');
insert into questao values (8, 'Como você descarta o lixo produzido em sua casa?');
insert into questao values (9, 'Usa lâmpadas econômicas (fluorescentes e LED)?');
insert into questao values (10, 'Que meio de transporte você usa com mais frequência?');
insert into questao values (11, 'Você consome refrigerantes com que frequência?');
insert into questao values (12, 'Quanto tempo você gasta no banho diário?
(somando o tempo gasto em todos os banhos que
você toma em um dia)');
insert into questao values (13, 'Quantas horas aproximadamente você gasta viajando de avião por ano?');
insert into questao values (14, 'Que quantidade você consome de alimentos (barras de chocolate,
doces) que contém açúcar refinado? Ex. Uma barra de chocolate
possui aproximadamente 100 mg.');
select * from questao;
/* VALORES INSERIDOS NA TABELA QUESTAO */
/* -----------------------------------------------------*/
/* -----------------------------------------------------*/
/* INSERINDO VALORES NA TABELA ALTERNATIVA */
/* QUESTAO 1 */
insert into alternativa values (1, 'a) Nunca', 1);
insert into alternativa values (2, 'b) Com pouca frequência (três porções por semana)', 1);
insert into alternativa values (3, 'c) Ocasionalmente (uma porção por dia)', 1);
insert into alternativa values (4, 'd) Frequentemente (uma porção por dia no almoço e outra no
lanche da tarde ou jantar)', 1);
insert into alternativa values (5, 'e) Sempre (duas ou mais porções por dia no almoço, no lanche
da tarde e no jantar)', 1);
/* QUESTAO 2 */
insert into alternativa values (9, 'a) Nunca', 2);
insert into alternativa values (10, 'b) Raramente (uma vez por semana ou menos)', 2);
insert into alternativa values (11, 'c) Ocasionalmente (duas vezes por semana)', 2);
insert into alternativa values (12, 'd) Frequentemente (uma vez por dia)', 2);
insert into alternativa values (13, 'e) Sempre (em todas as refeições)', 2);
/* QUESTAO 3 */
insert into alternativa values (14, 'a) Não', 3);
insert into alternativa values (15, 'b) Sim', 3);
/* QUESTAO 4 */
insert into alternativa values (16, 'a) De minha própria horta e pomar ou de lojas de produtos
orgânicos ou feiras e quitandas', 4);
insert into alternativa values (17, 'b) A maior parte de feiras, quitandas. Poucas vezes compro em
supermercados ou hipermercados', 4);
insert into alternativa values (18, 'c) Normalmente em supermercados e poucas vezes
em feiras e quitandas', 4);
insert into alternativa values (19, 'd) Sempre de supermercados e hipermercados', 4);
/* QUESTAO 5 */
insert into alternativa values (20, 'a) Uma vez por ano', 5);
insert into alternativa values (21, 'b) Duas vezes por ano', 5);
insert into alternativa values (22, 'c) Três vezes por ano', 5);
insert into alternativa values (23, 'd) Uma vez por mês', 5);
insert into alternativa values (24, 'e) Mais de uma vez por mês', 5);
/* QUESTAO 6 */
insert into alternativa values (25, 'a) somente quando quebram e precisam ser substituídos', 6);
insert into alternativa values (26, 'b) ocasionalmente troco por versões mais modernas', 6);
insert into alternativa values (27, 'c) troco sempre por aparelhos mais modernos', 6);
/* QUESTAO 7 */
insert into alternativa values (28, 'a) Normalmente leio noticiários pela internet ou compro livros e
revistas impressos em papel reciclado', 7);
insert into alternativa values (29, 'b) Tenho assinatura mensal de uma revista ou jornal e
ocasionalmente compro algum livro', 7);
insert into alternativa values (30, 'c) Tenho assinatura semanal de uma revista e
compro livros ocasionalmente', 7);
insert into alternativa values (31, 'd) Recebo diariamente jornal e compro
livros e revistas com frequência', 7);
/* QUESTAO 8 */
insert into alternativa values (32, 'a) Não me preocupo em separar o lixo', 8);
insert into alternativa values (33, 'b) Em duas lixeiras, uma para recicláveis e outra para
não recicláveis. Não me preocupo com a separação
de pilhas e baterias', 8);
insert into alternativa values (34, 'c) Em duas lixeiras, uma para recicláveis e outra para não
recicláveis. Pilhas, baterias, materiais eletrônicos e lâmpadas
são encaminhadas a postos de recolhimento (em bancos,
farmácias, empresas de telefonia e outros postos de coleta)', 8);
insert into alternativa values (35, 'd) Em uma única lixeira, pois não existe coleta seletiva no meu
bairro/cidade', 8);
/* QUESTAO 9 */
insert into alternativa values (36, 'a) Não uso', 9);
insert into alternativa values (37, 'b) 1/4 das lâmpadas são econômicas', 9);
insert into alternativa values (38, 'c) Metade das lâmpadas que uso são econômicas', 9);
insert into alternativa values (39, 'd) Todas as lâmpadas que uso são econômicas', 9);
/* QUESTAO 10 */
insert into alternativa values (40, 'a) Carro', 10);
insert into alternativa values (41, 'b) Bicicleta ou normalmente me locomovo a pé', 10);
insert into alternativa values (42, 'c) Transporte público (ônibus, trem, metrô)', 10);
insert into alternativa values (43, 'd) Carro, mas procuro fazer os percursos curtos
a pé ou de bicicleta', 10);
/* QUESTAO 11 */
insert into alternativa values (44, 'a) Nunca', 11);
insert into alternativa values (45, 'b) Raramente (uma vez por semana ou menos)', 11);
insert into alternativa values (46, 'c) Ocasionalmente (três vezes por semana)', 11);
insert into alternativa values (47, 'd) Frequentemente (uma vez por dia ou mais)', 11);
/* QUESTAO 12 */
insert into alternativa values (48, 'a) acima de 26min', 12);
insert into alternativa values (49, 'b) de 16 a 25min', 12);
insert into alternativa values (50, 'c) de 5 a 15min', 12);
/* QUESTAO 13 */
insert into alternativa values (51, 'a) Nunca viajo', 13);
insert into alternativa values (52, 'b) 0 a 4 horas', 13);
insert into alternativa values (53, 'c) 4 a 10 horas', 13);
insert into alternativa values (54, 'd) 10 a 25 horas', 13);
insert into alternativa values (55, 'e) Mais de 25 horas', 13);
/* QUESTAO 14 */
insert into alternativa values (56, 'a) Menos de 100 g por semana', 14);
insert into alternativa values (57, 'b) Mais de 100g por semana', 14);
insert into alternativa values (58, 'c) Nunca consumo produtos açucarados', 14);
select * from alternativa;
/* VALORES INSERIDOS NA TABELA ALTERNATIVA */
/* -----------------------------------------------------*/
/* -----------------------------------------------------*/
/* INSERINDO VALORES NA TABELA QUESTAOALTERNATIVA WAGNER */
insert into questaoalternativa values (2, 1, 5, '111.111.111-11'); /*111.111.111-11*/
insert into questaoalternativa values (9, 2, 5, '111.111.111-11');  
insert into questaoalternativa values (14, 3, 5, '111.111.111-11'); 
insert into questaoalternativa values (19, 4, 1, '111.111.111-11');  
insert into questaoalternativa values (20, 5, 5, '111.111.111-11'); 
insert into questaoalternativa values (25, 6, 5, '111.111.111-11'); 
insert into questaoalternativa values (28, 7, 5, '111.111.111-11'); 
insert into questaoalternativa values (33, 8, 4, '111.111.111-11'); 
insert into questaoalternativa values (39, 9, 5, '111.111.111-11'); 
insert into questaoalternativa values (40, 10, 1, '111.111.111-11'); 
insert into questaoalternativa values (46, 11, 2, '111.111.111-11'); 
insert into questaoalternativa values (50, 12, 5, '111.111.111-11');
insert into questaoalternativa values (51, 13, 5, '111.111.111-11');
insert into questaoalternativa values (57, 14, 0, '111.111.111-11');
/* VALORES INSERIDOS NA TABELA QUESTAOALTERNATIVA WAGNER */
/* INSERINDO VALORES NA TABELA QUESTAOALTERNATIVA OTAVIO */
insert into questaoalternativa values (5, 1, 0, '222.222.222-22'); /*222.222.222-22*/
insert into questaoalternativa values (11, 2, 4, '222.222.222-22');
insert into questaoalternativa values (15, 3, 1, '222.222.222-22');
insert into questaoalternativa values (18, 4, 3, '222.222.222-22');
insert into questaoalternativa values (23, 5, 1, '222.222.222-22');
insert into questaoalternativa values (26, 6, 2, '222.222.222-22');
insert into questaoalternativa values (30, 7, 2, '222.222.222-22');
insert into questaoalternativa values (32, 8, 1, '222.222.222-22');
insert into questaoalternativa values (38, 9, 4, '222.222.222-22');
insert into questaoalternativa values (40, 10, 1, '222.222.222-22');
insert into questaoalternativa values (47, 11, 1, '222.222.222-22');
insert into questaoalternativa values (49, 12, 3, '222.222.222-22');
insert into questaoalternativa values (52, 13, 4, '222.222.222-22');
insert into questaoalternativa values (57, 14, 0, '222.222.222-22');
/* VALORES INSERIDOS NA TABELA QUESTAOALTERNATIVA OTAVIO */
/* INSERINDO VALORES NA TABELA QUESTAOALTERNATIVA FELIPE */
insert into questaoalternativa values (4, 1, 1, '333.333.333-33'); /*333.333.333-33*/
insert into questaoalternativa values (10, 2, 5, '333.333.333-33');
insert into questaoalternativa values (14, 3, 5, '333.333.333-33');
insert into questaoalternativa values (18, 4, 3, '333.333.333-33');
insert into questaoalternativa values (22, 5, 2, '333.333.333-33');
insert into questaoalternativa values (25, 6, 5, '333.333.333-33');
insert into questaoalternativa values (29, 7, 4, '333.333.333-33');
insert into questaoalternativa values (32, 8, 1, '333.333.333-33');
insert into questaoalternativa values (37, 9, 2, '333.333.333-33');
insert into questaoalternativa values (43, 10, 2, '333.333.333-33');
insert into questaoalternativa values (46, 11, 2, '333.333.333-33');
insert into questaoalternativa values (48, 12, 1, '333.333.333-33');
insert into questaoalternativa values (55, 13, 0, '333.333.333-33');
insert into questaoalternativa values (58, 14, 5, '333.333.333-33');
/* VALORES INSERIDOS NA TABELA QUESTAOALTERNATIVA FELIPE */
/* INSERINDO VALORES NA TABELA QUESTAOALTERNATIVA LUCAS */
insert into questaoalternativa values (5, 1, 0, '444.444.444-44'); /*444.444.444-44*/
insert into questaoalternativa values (13, 2, 1, '444.444.444-44');
insert into questaoalternativa values (14, 3, 5, '444.444.444-44');
insert into questaoalternativa values (18, 4, 3, '444.444.444-44');
insert into questaoalternativa values (24, 5, 0, '444.444.444-44');
insert into questaoalternativa values (27, 6, 0, '444.444.444-44');
insert into questaoalternativa values (31, 7, 1, '444.444.444-44');
insert into questaoalternativa values (35, 8, 5, '444.444.444-44');
insert into questaoalternativa values (38, 9, 4, '444.444.444-44');
insert into questaoalternativa values (41, 10, 5, '444.444.444-44');
insert into questaoalternativa values (44, 11, 5, '444.444.444-44');
insert into questaoalternativa values (50, 12, 5, '444.444.444-44');
insert into questaoalternativa values (54, 13, 1, '444.444.444-44');
insert into questaoalternativa values (56, 14, 4, '444.444.444-44');
/* VALORES INSERIDOS NA TABELA QUESTAOALTERNATIVA LUCAS */
/* -----------------------------------------------------*/
/* -----------------------------------------------------*/
/* INSERINDO VALORES NA TABELA PARTICIPANTEQUESTAO WAGNER */
insert into participantequestao values (1, '111.111.111-11', 5); 
insert into participantequestao values (2, '111.111.111-11', 5);
insert into participantequestao values (3, '111.111.111-11', 5);
insert into participantequestao values (4, '111.111.111-11', 1);
insert into participantequestao values (5, '111.111.111-11', 5);
insert into participantequestao values (6, '111.111.111-11', 5);
insert into participantequestao values (7, '111.111.111-11', 5);
insert into participantequestao values (8, '111.111.111-11', 4);
insert into participantequestao values (9, '111.111.111-11', 5);
insert into participantequestao values (10, '111.111.111-11', 1);
insert into participantequestao values (11, '111.111.111-11', 2);
insert into participantequestao values (12, '111.111.111-11', 5);
insert into participantequestao values (13, '111.111.111-11', 5);
insert into participantequestao values (14, '111.111.111-11', 0);
/* VALORES INSERIDOS NA TABELA PARTICIPANETEQUESTAO WAGNER */
/* INSERINDO VALORES NA TABELA PARTICIPANTEQUESTAO WAGNER */
insert into participantequestao values (1, '222.222.222-22', 0); 
insert into participantequestao values (2, '222.222.222-22', 4);
insert into participantequestao values (3, '222.222.222-22', 1);
insert into participantequestao values (4, '222.222.222-22', 3);
insert into participantequestao values (5, '222.222.222-22', 1);
insert into participantequestao values (6, '222.222.222-22', 2);
insert into participantequestao values (7, '222.222.222-22', 2);
insert into participantequestao values (8, '222.222.222-22', 1);
insert into participantequestao values (9, '222.222.222-22', 4);
insert into participantequestao values (10, '222.222.222-22', 1);
insert into participantequestao values (11, '222.222.222-22', 1);
insert into participantequestao values (12, '222.222.222-22', 3);
insert into participantequestao values (13, '222.222.222-22', 4);
insert into participantequestao values (14, '222.222.222-22', 0);
/* VALORES INSERIDOS NA TABELA PARTICIPANETEQUESTAO WAGNER */
/* INSERINDO VALORES NA TABELA PARTICIPANTEQUESTAO WAGNER */
insert into participantequestao values (1, '333.333.333-33', 1); 
insert into participantequestao values (2, '333.333.333-33', 5);
insert into participantequestao values (3, '333.333.333-33', 5);
insert into participantequestao values (4, '333.333.333-33', 3);
insert into participantequestao values (5, '333.333.333-33', 2);
insert into participantequestao values (6, '333.333.333-33', 5);
insert into participantequestao values (7, '333.333.333-33', 4);
insert into participantequestao values (8, '333.333.333-33', 1);
insert into participantequestao values (9, '333.333.333-33', 2);
insert into participantequestao values (10, '333.333.333-33', 2);
insert into participantequestao values (11, '333.333.333-33', 2);
insert into participantequestao values (12, '333.333.333-33', 1);
insert into participantequestao values (13, '333.333.333-33', 0);
insert into participantequestao values (14, '333.333.333-33', 5);
/* VALORES INSERIDOS NA TABELA PARTICIPANETEQUESTAO WAGNER */
/* INSERINDO VALORES NA TABELA PARTICIPANTEQUESTAO LUCAS */
insert into participantequestao values (1, '444.444.444-44', 0); 
insert into participantequestao values (2, '444.444.444-44', 1);
insert into participantequestao values (3, '444.444.444-44', 5);
insert into participantequestao values (4, '444.444.444-44', 3);
insert into participantequestao values (5, '444.444.444-44', 0);
insert into participantequestao values (6, '444.444.444-44', 0);
insert into participantequestao values (7, '444.444.444-44', 1);
insert into participantequestao values (8, '444.444.444-44', 5);
insert into participantequestao values (9, '444.444.444-44', 4);
insert into participantequestao values (10, '444.444.444-44', 5);
insert into participantequestao values (11, '444.444.444-44', 5);
insert into participantequestao values (12, '444.444.444-44', 5);
insert into participantequestao values (13, '444.444.444-44', 1);
insert into participantequestao values (14, '444.444.444-44', 4);
/* VALORES INSERIDOS NA TABELA PARTICIPANETEQUESTAO LUCAS */

select * from participante;
select * from questao;
select * from alternativa;
select cpf, sum(pontuacao) as total_pontos
from participantequestao
group by cpf;

