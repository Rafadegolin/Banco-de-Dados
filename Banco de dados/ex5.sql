use clinica;

create table log
(id int not null primary key auto_increment,
operacao char(1) not null,
data date not null,
hora time not null,
tabela varchar(20),
chave varchar(50));

DELIMITER //
create trigger trg_paciente_ins after insert on paciente
for each row
begin
	insert into log values (null, 'I', current_date, current_time, 'paciente', new.codigo);
end;
//

DELIMITER //
create trigger trg_paciente_upd after update on paciente
for each row
begin
	insert into log values (null, 'U', current_date, current_time, 'paciente', old.codigo);
end;
//

DELIMITER //
create trigger trg_paciente_del after delete on paciente
for each row
begin
	insert into log values (null, 'D', current_date, current_time, 'paciente', old.codigo);
end;
//

show triggers;

select * from log;

select * from paciente;

insert into paciente values (null, 'Kleber Barros', '1990-10-11', '1234-9999');

update paciente set telefone = '9999-1234' where codigo = 3

DELIMITER //
create trigger trg_consulta_ins after insert on consulta
for each row
begin
	update paciente set data_ultima_consulta = new.data, hora_ultima_consulta = new.hora
		            where codigo = new.paciente;
end;
//

insert into consulta values (null, '2021-11-16', '10:00', 3, 1);

insert into consulta values (null, '2021-12-01', '15:00', 1, 2);

update paciente set telefone = concat('19', telefone);
