declare 
	empid number;
	emp_salary number;
begin
	empid := &empid; 
	p3(empid,emp_salary);
	dbms_output.put_line(emp_salary);
end;
/