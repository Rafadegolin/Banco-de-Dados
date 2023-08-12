insert into professor values (1, 'Paulo Silva');
insert into professor values (2, 'Carla Pires');
insert into professor values (3, 'Silvia Sartori');
insert into professor values (4, 'Sergio Ramoss');
insert into professor values (5, 'Jose Carlos Breve');

update professor 
set nome = 'Carla Renata Pires'
where registro = 2;

delete 
from professor
where registro = 2;

select registro, nome
from professor
order by nome desc;

select min(registro) as menor, max(registro) as maior, sum(registro) as soma, avg(registro) as media
from professor;

insert into aluno values (1010, 'Joao da Silva', 'Rua 10', 'Engenharia Quimica', 7, 0);
insert into aluno values (2020, 'Maria Amelia', 'Rua 20', 'Engenharia Civil', 5, 0);
insert into aluno values (3030, 'Marcos Souza', 'Rua 30', 'Engenharia Quimica', 3, 0);
insert into aluno values (4040, 'Renata Lopes', 'Rua 40', 'Engenharia Mecanica', 1, 0);
insert into aluno values (5050, 'Ana Rodrigues', 'Rua 50', 'Engenharia Civil', 10, 0);
insert into aluno values (6060, 'Joao Paulo Barboza', 'Rua 60', 'Engenharia de producao', 5, 0);

select curso as curso_engenharia, count(*) as qtd
from aluno
where periodo >= 5
group by curso
having count(*) >= 2
order by nome

select *
from aluno
where nome like 'Joao%'

select *
from aluno
where nome like 'M%a'

select * 
from aluno
where nome like '%Rodrigues%'

insert into disciplina values (111, 'Quimica 1', 4);
insert into disciplina values (222, 'Construcoes e Edificacoes', 1);
insert into disciplina values (333, 'Calculo Estrutural', 3);

select disciplina.descricao as disciplina, professor.nome as professor
from disciplina
join professor
on professor.registro = disciplina.professor

insert into atividade values (11, 'P1', '7', '2021-10-01', 'P', 'D', '5', 111);
insert into atividade values (22, 'MA1', '2', '2021-09-20', 'P', 'D', '2', 111);
insert into atividade values (33, 'P1', '7', '2021-10-10', 'P', 'D', '2', 222);

select disciplina.descricao as disciplina, atividade.nome as atividade, atividade.data as data
from atividade
join disciplina
on disciplina.codigo = atividade.disciplina
order by disciplina.descricao, atividade.data






