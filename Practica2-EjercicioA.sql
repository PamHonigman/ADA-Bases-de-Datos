create database Sucursal_A;
use Sucursal_A;

create table Clientes(
ID_Cliente int not null primary key,
Nombre varchar(15) not null,
Apellido varchar(25) not null
);

create table Pedidos(
ID_Pedido int primary key,
Fecha date not null,
ID_Cliente int not null,

foreign key (ID_Cliente) references Clientes(ID_Cliente)
);

insert into Clientes 
values
(1, 'Pepita','Pistolera'),
(2, 'Fulano','De Tal'),
(3, 'John','Doe'),
(4, 'Juana','De Arco'),
(5, 'Carlos','Pérez');

select * from Clientes;

insert into Pedidos
values 
(4534, '2023-03-15', 3),
(3217, '2023-01-09', 2),
(4768, '2023-03-26', 5),
(2547, '2022-12-22', 1),
(3658, '2023-01-26', 5),
(2493, '2022-11-18', 4)
;

select * from Pedidos;

select C.Nombre, C.Apellido, P.Fecha from Clientes C JOIN Pedidos P ON C.ID_Cliente = P.ID_Cliente where year(P.Fecha) = 2023 and month(P.Fecha) = 1;

#select concat(C.Apellido, ', ', C.Nombre) as 'Cliente', P.Fecha
#from Clientes C JOIN Pedidos P ON C.ID_Cliente = P.ID_Cliente where year(P.Fecha) = 2023 and month(P.Fecha) = 1;


