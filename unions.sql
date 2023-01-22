create table st1 (S_No int,S_name varchar(20), S_marks int)
create table st2(S_No int, S_Name varchar(20), S_marks int);

insert into st1 values
(1, 'Sam', 45),
(2, 'Bob', 57),
(3, 'Anne', 73),
(4, 'Julia', 92);
insert into st2 values
(3, 'Anne', 73),
(4, 'Julia', 92),
(5, 'Matt', 65);

select * from st1
union
select * from st2;


select * from st1
union all
select * from st2;

select * from st1
except
select * from st2;

select * from st1
intersect
select * from st2;