select employee.e_name, employee.e_dept, dept.d_name, dept.d_location
from employee
inner join dept
on employee.e_dept=dept.d_name

select employee.e_name, employee.e_dept, dept.d_name, dept.d_location
from employee
left join dept
on employee.e_dept=dept.d_name

select employee.e_name, employee.e_dept, dept.d_name, dept.d_location
from employee
right join dept
on employee.e_dept=dept.d_name

select employee.e_name, employee.e_dept, dept.d_name, dept.d_location
from employee
full join dept
on employee.e_dept=dept.d_name

update employee set e_age=e_age+10
from employee join dept on employee.e_dept=dept.d_name where d_location='Hyderabad';
select * from employee

delete employee from employee join dept on employee.e_dept=dept.d_name where d_location='Hyderabad';