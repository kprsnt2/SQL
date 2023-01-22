create table employee(
	e_id int not null,
	e_name varchar(20),
	e_salary int,
	e_age int,
	e_gender varchar(20),
	e_dept varchar(20),
	primary key(e_id)
);
insert into employee values(
	1, 'Sam', 95000, 45, 'Male', 'Operations'
);
select * from employee
insert into employee values
	(4,'Bob', 110000, 21, 'Male', 'Analytics'),
	(3, 'Gita', 125000, 22, 'Male', 'Analytics');
insert into employee values
(5, 'Anne', 100000, 36,'Female', 'Analytics'),
(6, 'Sita', 115000, 50, 'Female', 'Operations'),
(7, 'Matt', 85000, 29, 'Male', 'Finance'),
(8, 'Kathy', 92000, 25, 'Female', 'Finance');
