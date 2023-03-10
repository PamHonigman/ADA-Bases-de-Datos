create database ada;

use ada;

create table person(
dni int unsigned,
name varchar(20) not null,
last_name varchar(20) not null,
birthdate date not null,
civil_status varchar(29),
primary key(dni)
);

insert into person(dni, name, last_name, birthdate, civil_status)
values
('10455675','Juanita','Pérez','1920/04/25','Viudx'),
('25853252','Carolina','Jones','1978/02/25','Solterx'),
('34188547','Fulano','De Tal','1989/01/09','Casadx'),
('35697841','John','Doe','1990/05/28','Solterx'),
('15235985','Carlota','Rodríguez','1945/11/01','Casadx');

select * from person;
