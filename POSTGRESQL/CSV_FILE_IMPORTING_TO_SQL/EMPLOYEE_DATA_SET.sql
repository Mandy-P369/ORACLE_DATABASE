alter  table  employee rename to professional;
create table employee(empid serial primary key,empname varchar(50)not null,position varchar(50)not null,department varchar(50) default('IT'),hire_date Date,salary Integer,city varchar(50))
select * from employee ;

-- Import the CSV file to SQL ;
copy employee (empid, empname, position, department, hire_date, salary, city)
FROM 'C:\employee_data.csv' delimiter','
CSV HEADER ;	

SELECT * FROM EMPLOYEE ;



