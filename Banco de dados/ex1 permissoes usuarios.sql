create user rafaeldegolin26@localhost identified by '777';

grant all privileges on clinica.vw_agendamento to rafaeldegolin26@localhost;
flush privileges;

grant all privileges on clinica.medico to rafaeldegolin26@localhost;
flush privileges;

revoke all privileges on clinica.vw_agendamento from rafaeldegolin26@localhost;
flush privileges;

show grants for rafaeldegolin26@localhost;

drop user rafaeldegolin26@localhost;