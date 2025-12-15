create or replace procedure p3(empid in number,emp_salary out number)
as
	empdata employee%rowtype;
	averagesalary number;
	deptid number;
begin
	
	select dept_id into deptid from  employee where emp_id=empid ; 
	select avg(salary) into averagesalary from employee where dept_id = deptid;
 
	emp_salary := averagesalary ;
end;
/
