create database informacion;

use informacion;

create table registros(
id int auto_increment,
nombre varchar(12) not null,
apellido varchar(20) not null,
genero char(1),
fecha_cummpleaños date not null,
ciudad varchar(15) not null,
telefono int not null,
primary key(id)
);

alter table registros change fecha_cummpleaños fecha_cumpleaños date not null;

insert into registros(nombre, apellido, genero, fecha_cumpleaños, ciudad, telefono)
values
('Leandra','Malo Alba','F','1984-12-8','Córdoba','4515865'),
('Severo','Granados','M','1986-8-12','Río Gallegos','7711487'),
('Matías','Castillo','M','1996-11-02','Córdoba','2457306'),
('Daniela','Baena','F','1977-10-02','Buenos Aires','7826044'),
('Samanta','Godoy','F','1980-03-03','Catamarca','8135651'),
('Patricio','Manzano','M','1979-07-01','Bariloche','9607653'),
('Angelina','De Arregui','F','2000-02-21','Carlos Paz','4914988'),
('Trinidad','Alberdi','F','1990-04-27','Unquillo','6497845'),
('Javier','Bartolomé','M','1992-05-16','Córdoba','8826173'),
('Ovidia','Lamas','F','1988-03-09','Buenos Aires','7426743'),
('María Carmen','Fuster','F','1973-08-28','Córdoba','7506940'),
('Gilberto','Cárdenas','M','1976-07-10','Rosario','4416561');

select * from registros;

select concat(apellido, ', ', nombre) as atajo from registros;

select nombre, apellido from registros order by nombre, apellido asc;

select ciudad from registros;

select * from registros where genero like 'F';

select * from registros where genero like 'M';

select count(*) as 'recuento Femeninos' from registros where genero = 'F';

select count(*) as 'recuento Masculinos' from registros where genero = 'M';

select nombre, apellido, day(fecha_cumpleaños) as 'dia cumpleaños', month(fecha_cumpleaños) as 'mes cumpleaños' from registros;

select nombre, apellido, year(fecha_cumpleaños) as 'año nacimiento' from registros;

select ciudad, count(*) as 'recuento ciudades' from registros group by ciudad;

delete from registros where id = '3';

update registros set apellido = 'Salvatore', ciudad = 'Island', telefono = '2345678' where id = '7';

select * from registros;

SET SQL_SAFE_UPDATES=0;

delete from registros where apellido like 'M%';

delete from registros where nombre like '%o';

select telefono from registros;

alter table registros add column ubicación varchar(50);

alter table registros change ubicación dirección varchar(50);

insert into registros(nombre, apellido, genero, fecha_cumpleaños, ciudad, telefono, dirección)
values
('Pía','Manzanares','F','1972-2-17','Rosario','3696486','92 Park Avenue'),
('Abel','Uribe','M','1990-06-26','Buenos Aires','7196268','76 South Street'),
('Imelda','Mey','F','1973-11-09','Ushuaia','8009842','3 Church Street'),
('Jordi','De Perea','M','1997-02-01','Tandil','9348344','82 Windsor Road'),
('Ricardo','Cervera','M','1971-09-25','Federación','6955178','376 South Griffin Street');

select * from registros;