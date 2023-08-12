create database clinica;

use clinica;

create table paciente
(codigo int not null primary key auto_increment,
nome varchar(50) not null,
data_nascimento date not null,
telefone varchar(15));

insert into paciente values (null, 'Joao da Silva', '1990-05-12', '1234-5678');
insert into paciente values (null, 'Maria Souza', '2001-12-09', '1111-2222');

select * from paciente;

create table medico
(codigo int not null primary key auto_increment,
nome varchar(50) not null,
especialidade varchar(30) not null,
crm int not null);

insert into medico values (null, 'Carlos Barbosa', 'Pediatra', 123456);
insert into medico values (null, 'Renata Pires', 'Cardiologista', 987654);
insert into medico values (null, 'Sergio Barros', 'Dermatologista', 112233);

select * from medico;

create table consulta
(identificador int not null primary key auto_increment,
data date not null,
hora time not null,
paciente int not null,
medico int not null,
foreign key (paciente) references paciente(codigo),
foreign key (medico) references medico(codigo));

insert into consulta values (null, '2021-10-20', '10:00', 2, 1);
insert into consulta values (null, '2021-10-22', '11:30', 1, 2);
insert into consulta values (null, '2021-10-25', '15:00', 1, 1);
insert into consulta values (null, '2021-10-26', '17:00', 2, 2);
insert into consulta values (null, '2021-10-26', '17:00', 1, 3);

select * from consulta;

create view vw_agendamento as 
select consulta.data, 
	   consulta.hora, 
       paciente.nome as paciente,
       medico.nome as medico
from consulta
join paciente
  on paciente.codigo = consulta.paciente
join medico
  on medico.codigo = consulta.medico;

alter view vw_agendamento as 
select consulta.data, 
	   consulta.hora, 
       paciente.nome as paciente,
       paciente.telefone as paciente_tel,
       medico.nome as medico
from consulta
join paciente
  on paciente.codigo = consulta.paciente
join medico
  on medico.codigo = consulta.medico;

select * from vw_agendamento;

create view vw_totalizador as
select medico.nome as medico,
       medico.especialidade,
       count(*) as qtd_consultas
  from consulta
  join medico
    on medico.codigo = consulta.medico
group by medico.nome,
         medico.especialidade
        
select * from vw_totalizador;

