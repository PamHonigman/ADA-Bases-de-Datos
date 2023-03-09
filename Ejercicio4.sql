use registros;

select name from registros_personas limit 5;

select length(name) from registros_personas limit 5;

select name from registros_personas limit 5;

select upper(name) as 'upper name' from registros_personas;

select name from registros_personas limit 5;

select lower(name) as 'lower name' from registros_personas;

select concat(last_name, ', ', name) as 'full name' from registros_personas;

select count(*) from registros_personas;

select day(birthdate) from registros_personas;

select month(birthdate) from registros_personas;

select year(birthdate) from registros_personas;

select civil_status, count(*) civil_status from registros_personas group by civil_status; 
