create database practice;
use practice;
create database neww;
drop database neww;
create table employee (
	id int not null,
	name varchar(50),
	salary int,
	dept varchar(50),
	Primary key(id)
	);
select * from employee;
insert into employee values
	(1,'Rash', 45000, 'Operations'),
	(2, 'Ramesh', 55000, 'Technology'),
	(3, 'Sam', 24000, 'Analytics')
;
insert into employee values
	(4,'Bob', 34000, 'Operations'),
	(5, 'Anne', 75000, 'Technology'),
	(6, 'Nat', 40000, 'Analytics')
;
alter table employee
add gender varchar(50), age int;
select * into employee2 from employee; 
drop table employee2;
select * from employee2;

update employee 
set age=32, gender='Male' where id=1;

select * from employee;
update employee
set age=21, gender='Male' where id =2;
update employee
set	age=45, gender='Male' where id =3;
	update employee
	set age=21, gender='Male' where id =4;
update employee
set	age=44, gender='FeMale' where id =5;
update employee
set	age=20, gender='Female' where id =6;


select distinct gender from employee;

select * from employee where gender='Male';
select * from employee where gender='Male' and age between 21 and 35;
select * from employee where gender='Male' or dept='technology';
select * from employee where not gender ='Male';
select * from employee where not gender ='Male' and dept='Technology';
select * from employee where not gender ='Male' or dept='Technology';

select * from employee where name like '_a_';
select * from employee where name like '_a%';

/* string*/
select ('     This is Rash')
select ltrim('    this is Rash')
select rtrim('this    ')
select upper('This')
select lower('THIS')
select reverse('This')
select substring('This is Rash', 6,10)

select * from employee where dept='Operations' order by age desc;
select * from employee where gender='Male' order by age desc;
select Top 3 * from employee where gender='Male' order by age desc;
select * from employee 
LIMIT 3; /* LIMIT WONT WORK IN SQL, use TOP function */
select sum(salary) from employee where gender='Female';
select avg(salary) from employee where gender='male';
select min(age) from employee;
select max(age) from employee;
select count(*) from employee where gender='male';
/* Sub query to get last 2nd highest salary */
select max(salary) from employee where not salary=(select max(salary) from employee);
select avg(salary), gender from employee group by gender;
select avg(salary), dept from employee group by dept having avg(salary) >35000;

select concat(age, gender) from employee;

drop table employee2;
select * from  employee2;
select * into employee2 from employee	where 1=2;
alter table employee2
drop column age ;
create table #temptable (id int, name varchar(20))
select * from #temptable

select * from employee
select name as employee_name, salary as employee_salary
from employee;

/* stored procedure */

create procedure sp3
as
select age from employee where age>25
go

exec sp3

create procedure sp2 @gender varchar(20)
as
select * from employee where gender=@gender
go

/* if we use where then no need to end with semicolan @go*/

exec sp2 @gender='Male'

create view emp_gender
as select * from employee where gender='Male';

select * from emp_gender;

create view emp_gender2
as select * from employee where gender='FeMale';

select * from emp_gender2;

drop view emp_gender2;

create function add_five (@num as int)
returns int
as
begin
return ( @num+5)
end;

select dbo.add_five(19)

create function emp_gen (@gender as varchar(20))
returns table
as
return (select * from employee where gender=@gender)
;

select * from dbo.emp_gen('Male');
select * from dbo.emp_gen('Female');


create table st1 (id int, name varchar(20), marks int);
select * from st1;

insert into st1 values (1, 'Raj', 55), (2, 'Matty', 89), (5, 'Dev', 96);

create table st2 (id int, name varchar(20), marks int);

insert into st2 values (4, 'Rakesh', 45), (3, 'Maggie', 24), (5, 'Dev', 96);

select * from st1 union select * from st2;
select * from st1 union all select * from st2;
select * from st1 except select * from st2;
select * from st1 Intersect select * from st2;

select * from employee;
create table department (id int, dept varchar(20), location varchar(20));

insert into department values (3, 'Analytics', 'Hyderabad'), (2, 'Technology', 'Bangalore'), (4, 'Operations', 'Chennai');
select * from department;
select * from employee;
/* Join */
select employee.name, employee.salary, employee.age, department.dept, department.location 
from employee
join department on employee.id=department.id;

select employee.name, employee.salary, employee.age, department.dept, department.location 
from employee
full join department on employee.id=department.id;

select employee.name, employee.salary, employee.age, department.dept, department.location 
from employee
left join department on employee.id=department.id;

select employee.name, employee.salary, employee.age, department.dept, department.location 
from employee
right join department on employee.id=department.id;

select employee.name, employee.salary, employee.age, department.dept, department.location 
from employee
inner join department on employee.id=department.id;

update employee
set age=age+10
select employee.name, employee.salary, employee.age, department.dept, department.location 
from employee
join department on employee.id=department.id;

delete employee 
from employee
join department on employee.id=department.id where department.location='Hyderabad';

select * from employee;














