use clinica;

select @@autocommit;

start transaction;
set autocommit = 0;
select @@autocommit;

select * from medico;

insert into medico values (null, 'Calos Gonçalves', 'Pneumologista', '12399');
insert into medico values (null, 'Pedro Silva', 'Pediatra', '12388');

select * from medico;

commit;

/*----------------------------------------------------------*/

start transaction;
set autocommit = 0;
select @@autocommit;

select * from medico;

insert into medico values (null, 'Paulo Guedes', 'Dermatologista', '88812');
insert into medico values (null, 'Rogerio Leite', 'Dermatologista', '77712');

select * from medico;

rollback;



