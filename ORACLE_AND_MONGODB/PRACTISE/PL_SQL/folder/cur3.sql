declare
	cursor c1 is select  *  from employees;
	empdata employees%rowtype;
	bonus number;
	cursor c2(emp_id) is select * from employees where empid= empid;
begin
	open c1;
	loop	
		fetch c1 into empdata;
		exit when c1%notfound;
		if empdata.salary>=0 and  empdata.salary<40000 then
			bonus := (empdata.salary*15)/100;
		elsif empdata.salary>=40001 and empdata.salary<60000 then
			bonus := (empdata.salary*10)/100;
		else 
			bonus := (empdata.salary*5)/100;
		end if ;
	end loop;
	dbms_output.put_line('name of employee is ' || empdata.emp_name || ' and salary of  ' ||  empdata.emp_name || ' is '   || empdata.salary);
	dbms_output.put_line('Bonus obtained is :' || bonus);
	close c1;
end;
/


