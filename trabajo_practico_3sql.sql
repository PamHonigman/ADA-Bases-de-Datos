create database directorio;

use directorio;

create table contact(
id int auto_increment,
name varchar(50) not null,
last_name varchar(50) not null,
address varchar(100),
number_phone varchar(20) not n ull,
primary key(id)
); 

select * from contact;

show tables;

insert into contact(name, last_name, address, number_phone) values ('Carlos','Sánchez','Diagonal Ica 625','3516548454');
insert into contact(name, last_name, address, number_phone) values ('Jordi','Wild','Ceferino de la Lastra 1485','1127685925');
insert into contact(name, last_name, address, number_phone) values ('John','Doe','Rodríguez del Busto 3086','3543875982');
insert into contact(name, last_name, address, number_phone) values ('Gianina','Juárez','Calle Pública S/N','2615878574');
insert into contact(name, last_name, address, number_phone) values ('Juana','De Arco','Hipólito Yrigoyen 711','3516879284');

insert into contact(name, last_name, address, number_phone) 
values 
('Carlos','Sánchez','Diagonal Ica 625','3516548454'),
('Jordi','Wild','Ceferino de la Lastra 1485','1127685925'),
('John','Doe','Rodríguez del Busto 3086','3543875982'),
('Gianina','Juárez','Calle Pública S/N','2615878574'),
('Juana','De Arco','Hipólito Yrigoyen 711','3516879284');

select * from contact;

