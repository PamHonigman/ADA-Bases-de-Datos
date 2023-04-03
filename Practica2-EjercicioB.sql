create database sucursal_b;
use sucursal_b;

create table Tiendas(
ID_Tienda int not null primary key,
Nombre varchar(15) not null,
Dirección varchar(50) not null
);

create table Productos(
ID_Producto int not null primary key,
ID_Tienda int not null,
Nombre varchar(30) not null,
Precio int,
foreign key (ID_Tienda) references Tiendas(ID_Tienda)
);

insert into Tiendas
values (54, 'Frávega', 'Bv. Chacabuco 453'),
(38, 'Red Megatone', 'Av. Colón 200'),
(189, 'Cetrogar', 'AV. Colón 4358'),
(95, 'Ferniplast', 'Rivera Indarte 139');

select * from Tiendas;

insert into Productos
values (458947, 54, 'Pendrive Maxell 64 GB', 3500),
(54987, 95, 'Bon O Bon Chocolinas', 56),
(4551, 54, 'Cafetera Nespresso Piccolo', 42000),
(69578, 189, 'Secador de Pelo ATMA XT459', 6999),
(1234, 38, 'Auriculares Philips', 1899),
(34454, 95, 'Cinta Scotch pequeña', 87);

select * from Productos;

select P.Nombre, T.Dirección from Tiendas T join Productos P on T.ID_Tienda = P.ID_Tienda where P.Precio > 100;