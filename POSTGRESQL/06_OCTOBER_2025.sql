create table employee(empid SERIAL PRIMARY KEY,
	empname varchar(100) NOT NULL,
	position varchar(50),
	department varchar(40),
	hire_date DATE,
	salary NUMERIC(10,2));


 INSERT INTO employee values (1,'aayush pateriya','Data analyst','Information Technology','01-jan-2024',56000.00);
 select * from employee;
 insert into employee (empname,position,department,hire_date,salary)values('Disha pateriya','Audit officer','Central government','20,may,2026',87000.45)
 select * from employee;
 insert into employee (empname,position,department,hire_date,salary)values('Prachi Tiwari','Teacher','Teaching','01-apr-2026',55000.32),
 ('Prince Tiwari','Actor','Bhojpuri Cinema','05-june-2025',56000.69); 
 select * from employee;


 alter table employee rename column department to dept ;
 select * from employee;

 truncate table employee;
 select * from employee
 rollback ;
 select * from employee;
INSERT INTO employee values (1,'aayush pateriya','Data analyst','Information Technology','01-jan-2024',56000.00);
select * from employee;

truncate table employee
select * from employee;
insert into employee (empname,position,dept,hire_date,salary)values('Prachi Tiwari','Teacher','Teaching','01-apr-2026',55000.32),
 ('Prince Tiwari','Actor','Bhojpuri Cinema','05-june-2025',56000.69); 

select * from employee;
INSERT INTO employee values (1,'aayush pateriya','Data analyst','Information Technology','01-jan-2024',56000.00);
select * from employee;

insert into employee (empname,position,dept,hire_date,salary)values('Prachi Tiwari','Teacher','Teaching','01-apr-2026',55000.32),
 ('Prince Tiwari','Actor','Bhojpuri Cinema','05-june-2025',56000.69); 
 select * from employee;


truncate table employee restart identity;
insert into employee (empname,position,dept,hire_date,salary)values('Prachi Tiwari','Teacher','Teaching','01-apr-2026',55000.32),
 ('Prince Tiwari','Actor','Bhojpuri Cinema','05-june-2025',56000.69); 
 select * from employee;

 select * from employee where position= 'Actor';
 select * from employee;
 delete from employee where position= 'Actor';
 select * from employee;
 rollback


 create table employee2(empid INT PRIMARY KEY,
	empname varchar(100) NOT NULL,
	position varchar(50),
	department varchar(40),
	hire_date DATE,
	salary NUMERIC(10,2) default(0));

select * from employee2;
insert into employee2 (empid,empname,position,department,hire_date,salary)values(1,'Prachi Tiwari','Teacher','Teaching','01-apr-2026',55000.32),
 (2,'Prince Tiwari','Actor','Bhojpuri Cinema','05-june-2025',56000.69); 
 select * from employee2;

insert into employee2 (empid,empname,position,department,hire_date,salary)values
 (3, 'Sneha Verma', 'HR Manager', 'Human Resources', '2020-07-10', 72000.00),
    (4, 'Karan Mehta', 'Marketing Executive', 'Marketing', '2023-01-05', 48000.00),
    (5, 'Priya Nair', 'Project Manager', 'Operations', '2019-09-18', 95000.00),
    (6, 'Vivek Rao', 'Business Analyst', 'Business', '2022-05-12', 68000.00),
    (7, 'Anjali Singh', 'Financial Analyst', 'Finance', '2021-02-28', 70000.00),
    (8, 'Rohit Das', 'Network Engineer', 'IT', '2023-06-20', 60000.00),
    (9, 'Meena Joshi', 'Recruiter', 'Human Resources', '2022-09-09', 55000.00),
    (10, 'Aditya Kapoor', 'Sales Lead', 'Sales', '2020-12-01', 82000.00);


	select * from employee2;
	delete from employee2 where empid = 4;
	select * from employee2;
-- Delete Command in SQL
	delete from employee2 where empname ='Prachi Tiwari';
	select * from employee2;
-- Alter Command in SQL
	alter table employee2 drop column salary;
	select * from  employee2; 
	--
	alter table employee add column age numeric(10);
	select * from employee;
-- Drop column in SQL
	drop table if exists employee2;
 	select * from employee2; -- Finally deleted the table 
-- truncate commmnd in SQL
	truncate employee;
	select * from employee;


alter  table employee drop column age;
select * from employee

insert into employee (empname,position,dept,hire_date,salary)values('Prachi Tiwari','Teacher','Teaching','01-apr-2026',55000.32),
 ('Prince Tiwari','Actor','Bhojpuri Cinema','05-june-2025',56000.69); 
 select * from employee;
 truncate table  employee restart identity;
 select * from employee;
 

	 

 

	

	

 