create database laboratory;
use laboratory;

create table invoice(
id int auto_increment,
letter char not null,
number int(5) zerofill not null,
date date not null,
amount int not null,
primary key(id)
);

create table article(
id int auto_increment,
name varchar(50) not null,
price double not null default 0,
stock int not null,
primary key(id)
);

create table client(
id int auto_increment,
name varchar(50) not null,
last_name varchar(50) not null,
cuit char(16) not null,
address varchar(100) not null,
comments longtext,
primary key(id)
);

describe article;

insert into article(name, price, stock)
values
('Cinta','110','50'),
('Espátula','20','22'),
('Fratas','35','28'),
('Regla','20','78'),
('Tenaza','12','13');

select * from article;

describe invoice;

insert into invoice(letter, number, date, amount)
values
('B','1','20111118','500'),
('B','2','20120925','200'),
('B','3','20110101','3020'),
('B','4','20161118','1200'),
('B','5', curdate(),'3300');

select * from invoice;

describe client;

insert into client(name, last_name, cuit, address, comments)
values
('Mario','Pérez','20-14987008-8','Agüero 635', ''),
('Jorge','Ríos','20-37562854-5','Nazca 1532', ''),
('Valeria','Lagos','20-25487418-8','Chipre 5', ''),
('Natalia','Peña','20-25982665-2','Jufre 3651', ''),
('Juan','Khorn','20-23587171-9','Belgrano 6525', '');

select * from client;

select * from article where price > 100;
select * from article where price > 20 and price < 40;
select * from article where price > 40 and price < 60;
select * from article where price = 20 and stock > 30;
select * from article where price = 12 or price = 20 or price = 30;
select * from article where price = 10 or price = 110;

select * from article order by price desc, name;