create view Female_employees as
select * from employee
where e_gender='Female';

select *from female_employees

create view Male_employees as select * from employee where e_gender='Male';

select * from male_employees

drop view Female_employees

alter table employee add e_dob date;

select * from employee
alter table employee 
drop column e_dob

select * from employee3

drop table employee4

select * into employee2 from employee_backup;

/* merge - insert, delete, update in single */
merge employee2 as T
using employee as S
on T.e_id=S.e_id
when matched
	then update set T.e_salary=S.e_salary, T.e_age=S.e_age
when not matched by target
	then insert(e_id, e_name, e_salary, e_age, e_gender, e_dept)
	values (S.e_id, S.e_name, S.e_salary, S.e_age, S.e_gender, S.e_dept)
when not matched by source
	then delete;

select * from employee2;
select * from employee;
select * from employee_backup;
	



