--   Importing CSV File directly  into SQL ;
create table employee(
employee_id	serial primary key ,
first_name varchar(50),
last_name varchar(50),
email varchar(50),
department varchar(50),
salary Numeric(10,2),
joining_date Date,
age Integer
)

select * from employee;
select * from employee

select count(employee_id) from employee where department='Operations' and salary>50000;

create table Employees(
employee_id Serial Primary key,
first_name varchar(50),
last_name varchar(50),
email varchar(50),
department varchar(50),
salary Numeric(10,2),
joining_date Date,
age Integer)

drop table employees;
select * from employees ;

select * from employees where email like '%@hotmail.com%'
SELECT COUNT(*) FROM EMPLOYEES WHERE EMAIL LIKE '%@gmail.com%'
select count(*) from employees where email like '%@johnson.com'
select count(department) from employee where  department like '%IT%'
select sum(salary),count(salary),avg(salary) from employee where department like '%IT%';





