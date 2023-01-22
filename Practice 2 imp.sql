create function add_nine (@num as int)
returns int as
begin 
return (@num+9) end;

select dbo.add_nine(10);

create function male_emp(@gender as varchar(10))
returns table
as
return (select * from employee where gender=@gender);

select * from dbo.male_emp('Male');

select * from employee; select * from department;

select department.id, employee.name, employee.age, employee.dept, department.location
from employee 
join department on employee.id=department.id;

select department.id, employee.name, employee.age, employee.dept, department.location
from employee 
left join department on employee.id=department.id;
select department.id, employee.name, employee.age, employee.dept, department.location
from employee 
right join department on employee.id=department.id;

select department.id, employee.name, employee.age, employee.dept, department.location
from employee 
inner join department on employee.id=department.id;

select department.id, employee.name, employee.age, employee.dept, department.location
from employee 
full join department on employee.id=department.id;

update employee set age=age+5 
from employee join department on employee.id=department.id where department.location='Chennai';
select* from employee;

delete employee 
from employee join department on employee.id=department.id where department.location='Chennai';
select* from employee;

create procedure new
as select * from employee go;

exec new2
exec new2 @gender='Male';
create procedure new2 (@gender varchar(20))
as select * from employee where gender=@gender;

create view female_emp
as select * from employee where gender='Female';

select * from female_emp;
drop view female_emp;

select avg(age), gender from employee group by gender;

select avg(age), gender from employee group by gender having avg(age)>40;

select  name, max(salary) from employee group by name having max(salary)>70000;
select * from employee;




