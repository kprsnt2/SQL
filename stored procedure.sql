create procedure employee_age 
as 
select e_age from employee_backup 
go;

exec employee_age;

create procedure employee_details
as
select * from employee_backup
go;

exec employee_details;

/* with parameters */

create procedure employee_gender @gender varchar(20)
as
select * from employee_backup where e_gender=@gender
go:

exec employee_gender @gender=Male;
exec employee_gender @gender=Female;
