Select * from university ;
Select * from colleges;
Select * from department;


Select count(d.dept_id) as Total_department from department d where college_id in (select c.college_id from
colleges as c where established_year = 1910) order by Total_department desc ;

Select * from colleges  limit 1 ; 
Select * from university  limit 1 ;

-- Query using Subquery
EXPLAIN ANALYZE
With cte as 
(
	Select c.name as College_name  from  colleges c 
	where university_id in (Select university_id from university u where established_year=1976)
	order by College_name asc
)
Select * from cte ;

-- Query using joins
EXPLAIN ANALYZE
With cte as 
(
	Select c.name as College_name from university u
	join
	colleges c on c.university_id = u.university_id
	where u.established_year = 1976 order by college_name asc
)
Select * from cte ;

