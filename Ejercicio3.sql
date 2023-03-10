use registros;

show tables;

select * from registros_personas;

delete from registros_personas where id = '3';

SET SQL_SAFE_UPDATES=0;

delete from registros_personas where last_name like 'M%';

truncate table registros_personas;

insert into registros_personas(name, last_name, birthdate, civil_status, city)
values
('Pepita','Pistolera','2000-05-24','Solterx','Córdoba'),
('John','Doe','1987-06-25','Casadx','Bs. As.'),
('Fulano','De Tal','1945-06-18','Casadx','Unquillo'),
('Juana','De Arco','1989-11-23','Solterx','Jujuy'),
('Carlos','Pérez','1924-08-19','Viudx','Bariloche'),
('María','Rodríguez','1978-12-30','Solterx','Córdoba'),
('Claudia','Vargas','1983-10-17','Viudx','Rosario');

select * from registros_personas;

update registros_personas set civil_status = 'Casadx' where id = '5';

select id, name, last_name, birthdate, civil_status, city from registros_personas where id = '5';

update registros_personas set civil_status = 'Solterx', city = 'Zapala' where id = '2';

select id, name, last_name, birthdate, civil_status, city from registros_personas where id = '2';

update registros_personas set name = 'Juana', last_name = 'Hernández' where id = '6';

select * from registros_personas;
