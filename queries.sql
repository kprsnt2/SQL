select e_name from employee;
select distinct e_gender from employee;
select * from employee where e_gender='Female';
select * from employee where e_age>30;
select * from employee where e_gender='Male' and e_age<30;
select * from employee where e_dept='Operations' and e_salary>100000;
select * from employee where e_dept='Analytics' and e_salary>100000;
select * from employee where e_dept='Operations' or e_dept='analytics';
select * from employee where not e_salary>100000;
select * from employee where not e_dept='Operations' and e_salary>100000;
/* like operator*/
select * from employee where e_name like 'S%';
select * from employee where e_age like'3_';
select * from employee where e_age between 25 and 35;
select * from employee where e_salary between 95000 and 125000;
select min(e_age) from employee;
select max(e_age) from employee;
select count(*) from employee where e_gender='Male';
select sum(e_salary) from employee
select avg(e_age)  from employee

/* String */
select '    Sparta'
select ltrim('    Sparta');
select 'This is Sparta'
select lower ('This is Sparta')
select upper('this is Sparta')
select reverse('Prashanth')
select substring('This is Sparta', 4, 5)

/* Filters or order by */
select * from employee order by e_salary; /* default it sorts in ascending order - with or without ASC same result*/
select * from employee order by e_salary ASC;
select * from employee order by e_age Desc;
select top 3* from employee;
select top 3* from employee order by e_age DESC;
select top 3* from employee where e_age>30;
select avg(e_salary), e_gender from employee group by e_gender;
select avg(e_age), e_dept from employee group by e_dept order by avg(e_age) desc;
select * from employee
select e_dept, avg(e_salary) as avg_salary
	from employee
	group by e_dept
	having avg(e_salary)>100000;
select * into employee2 from employee where 1=2;/* this only copy the structure*/
select * from employee2;
select * into employee3 from employee where 1=1;/* this will copy whole table*/
select * from employee3;
select * into employee_backup from employee;/* this will copy whole table*/
select * from employee_backup
update employee3 set e_age=42 where e_name='Sam';
update employee3 set e_dept='Tech' where e_gender='male';
update employee3 set e_salary=50000;
update employee3 set e_gender='Female' where e_id=3;
delete from employee3 where e_age = 32;
truncate table employee3;
select * into employee4 from employee;
select * from employee4
SELECT e_id from employee4
delete from employee4 where e_id=2
delete from employee4 /* truncate table or delete from is almost same, deleting table but not structure*/

select * from employee
/* alias*/
select e_id as Employee_ID, e_name as Employee_Name from employee
select *, e_id as Employee_ID, e_name as Employee_Name from employee