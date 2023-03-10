create database registros;

use registros;

create table registros_personas(
id int auto_increment,
name varchar(10) not null,
last_name varchar(10) not null,
birthdate date not null,
civil_status varchar(10) not null,
city varchar(10) not null,
primary key(id)
);

insert into registros_personas(name, last_name, birthdate, civil_status, city)
values
('Pepita','Pistolera','2000-05-24','Solterx','Córdoba'),
('John','Doe','1987-06-25','Casadx','Bs. As.'),
('Fulano','De Tal','1945-06-18','Casadx','Unquillo'),
('Juana','De Arco','1989-11-23','Solterx','Jujuy'),
('Carlos','Pérez','1924-08-19','Viudx','Bariloche'),
('María','Rodríguez','1978-12-30','Solterx','Córdoba'),
('Claudia','Vargas','1983-10-17','Viudx','Rosario'),
('Cristian','Rodríguez','1952-06-12','Solterx','San Juan');

select * from registros_personas;

select name, last_name from registros_personas;

select * from registros_personas order by name, last_name asc;

select * from registros_personas where civil_status = 'Casadx';

select * from registros_personas where civil_status = 'Solterx';

select * from registros_personas where last_name = 'Baez';

select * from registros_personas where last_name = 'Vargas' and civil_status = 'Solterx';

insert into registros_personas(name, last_name, birthdate, civil_status, city)
values
('Orlando','Vargas','1982-01-25','Solterx','Bs. As.');

select * from registros_personas
where last_name = 'Vargas' and civil_status = 'Solterx';

update registros_personas
set `last_name` = 'Haaland' where (`id` = '5');

delete from registros_personas 
where (id = '3');

select * from registros_personas;

select * from registros_personas limit 3 offset 2;

select * from registros_personas
where name like 'a%';

select * from registros_personas
where last_name like '%z';
