use laboratory;

select * from invoice;

select max(amount) from invoice;

select min(amount) from invoice;

select min(amount) from invoice where year(date) >=2000 and year(date) <=2008;

select * from invoice where year(date) = 2016;

select * from invoice where number = 3;

select count(*) as 'total amount of invoices' from invoice;

select count(*) as 'invoices between $35000 and $40000' from invoice where amount >= 35000 and amount <= 40000;

select year(date), count(*) as 'invoice per year' from invoice group by year(date);

select * from invoice;

select letter, count(*) as 'invoice per letter' from invoice group by letter;