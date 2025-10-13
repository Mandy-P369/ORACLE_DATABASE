-- 'Between','like' and 'in' operator 
select * from employees;
-- between operator 
select * from employees where  salary between 40000 and 80000;
select * from employees where  not(salary>60000);
select * from employees where first_name like '%a';
select count(*) from employees where last_name like  '%m%';
select count(*) from employees where department in ('IT')
select count(*) from employees where department in ('HR')
-- find the firstname and salary of the employees according to their department;
select first_name,salary from employees  where department='HR'
-- find employees where email column is null or email endswith gmail.com
select * from employees where email is null or email like '%@gmail.com%';
-- List employees sorted bby salary 
select first_name,last_name,salary from employees order by salary;

select * from employees;
-- to select the top 100 employees according to the  salary having greater than 50000. 
select * from employees where salary>50000 order by salary asc limit 100;
-- Retrieves the list of unique salary and department
select distinct salary from employees;
select distinct department from employees;
-- Retrives the count of the list of department 
select count(distinct department) from employees;
select salary from employees;


