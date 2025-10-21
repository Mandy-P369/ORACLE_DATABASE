select * from employees order by employee_id asc;
select coalesce (monthlybonus , annualbonus) from employees;
Select coalesce (first_name,last_name) from employees;
Select * from employees;
Select email from employees;
Select count(*) from employees where email like '%m%'
Select count(coalesce(first_name,last_name)) from employees;
Select count(coalesce(salary,annualfinalpay)) from employees;
Select count(*) from employees where department not in('IT','Marketting')
Select count(*) from employees where department in ('IT')
Select fullname from employees where department in ('Marketing')
Select * from employees;
alter table employees add column discount Numeric(10,2);
Select * from employees;
alter table employees alter column discount type Integer;
Select * from employees;
Select * from employees;

Select fullname,employee_id,salary ,department,tax,
		Row_Number() over (partition by department order by employee_id asc) as row_num 
		from employees  where fullname like '%d%';


Select fullname,department,annualfinalpay,Row_Number() over(partition by department order by annualfinalpay desc ) 
from employees;

Select fullname,department,annualfinalpay,Dense_Rank() over(partition by department order by annualfinalpay desc) 
from employees;

update employees set salary = 39792.40 where employee_id=1;
Select * from employees;  
Select  fullname,annualfinalpay , Dense_rank () over(partition by salary  order by annualfinalpay desc ) from employees;


Select sum(salary) from employees;
Select fullname , salary ,department from employees;
Select annualfinalpay , department ,salary,dense_rank() over(partition by department order by  salary) from employees;



Select fullname,department,salary,avg(salary) over(partition by department  order by salary) from employees;



















	

