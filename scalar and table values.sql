create function add_five (@num as int)
returns int
as
begin
return (
@num+5
)
end

select dbo.add_five(10)

create function select_gender(@gender as varchar(20))
returns table as 
return (select * from employee where e_gender=@gender)

select * from dbo.select_gender('Male')

/* temporary table */

create table #student(
	s_id int,
	s_name varchar(20)
);

select * from #student
insert into #student values (1, 'Sam');

