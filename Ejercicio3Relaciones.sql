create database cobranzas;

use cobranzas;

create table factura(
id_factura int auto_increment not null,
producto varchar(100) not null,
cantidad int not null,
primary key(id_factura)
);

create table cliente(
id_cliente int auto_increment not null,
nombre varchar(50) not null,
apellido varchar(50) not null,
dirección varchar(100) not null,
primary key(id_cliente)
);

create table factura_cliente(
id_factura_fk int not null,
id_cliente_fk int not null
);

alter table factura_cliente add constraint factura_cliente_fk0 foreign key(id_factura_fk) references factura(id_factura);

alter table factura_cliente add constraint factura_cliente_fk1 foreign key(id_cliente_fk) references cliente(id_cliente);

insert into factura(producto, cantidad)
values
('Secador de Pelo ATMA XT-5465', 1);

select * from factura;

insert into cliente(nombre, apellido, dirección)
values
('Fulanito','De Tal','Rodríguez del Busto 3889, Córdoba');

select * from cliente;

insert into factura_cliente(id_factura_fk, id_cliente_fk)
values
(1,1);

select * from factura_cliente;

insert into factura(producto, cantidad)
values
('Aspiradora YELMO RVR3453', 1);

select * from factura;

insert into factura_cliente(id_factura_fk, id_cliente_fk)
values
(2,1);

select * from factura_cliente;