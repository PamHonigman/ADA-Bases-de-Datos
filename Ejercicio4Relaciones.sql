create database identidad;

use identidad;

create table persona(
id_Persona int auto_increment not null primary key,
nombre varchar(15) not null,
apellido varchar(15) not null,
nacionalidad varchar(20) not null,
genero char(2) not null
);

create table cuit(
cuit int not null primary key,
id_Persona_fk int not null unique,

foreign key(id_Persona_fk) references persona(Id_Persona)
);

insert into persona(nombre, apellido, nacionalidad, genero)
values
('Carlota','Ramírez','Argentina','F'),
('Juan Carlos','Pérez','Uruguayo','M'),
('Dionisio','Papín','Argentino','M'),
('Juana','De Arco','Francesa','F')
;

select * from persona;

insert into cuit(cuit, id_Persona_fk)
values
('25541366', 1),
('27455353', 2),
('52545546', 3),
('34225585', 4)
;

insert into cuit(cuit, id_Persona_fk)
values
('25641366', 3)
;

select * from cuit;
