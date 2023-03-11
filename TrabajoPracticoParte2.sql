use laboratory;

SET SQL_SAFE_UPDATES=0;

select * from client;

insert into client
values
(6, 'Elías', 'Vázquez', '20-25876648-2', 'Heredia 368', ''),
(7, 'Lara', 'Ballester', '27-25878458-8', 'José Juárez 8540', ''),
(8, 'Víctor', 'Tomé', '20-10623789-1', 'Av. Gral Paz 154', ''),
(9, 'Javier', 'Arellano', '20-38553645-7', 'Rodríguez del Busto 3044', ''),
(10, 'Florencia', 'Mendizábal', '27-40852613-5', 'Donaciano del Campillo 1475', '');

update client set `name` = 'José' where `id` = 1;

update client set `name` = 'Pablo', `last_name` = 'Fuentes', `cuit` = '20-21053119-0' where `id` = 3;

update client set `comments` = '' where null;

delete from client where last_name = 'Pérez';

delete from client where cuit like '%0';

select price, (price * 0.2) as '20% increase', (price * 1.2) as 'updated price' from article where price <=50;

select price, (price * 0.15) as '15% increase', (price * 1.15) as 'updated price' from article where price >50;

select price, (price * 0.05) as '5% discount', (price * 0.95) as 'updated price' from article where price >200;

delete from article where stock = 0;

select * from article;
