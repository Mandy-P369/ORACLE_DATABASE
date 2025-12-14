declare
	cursor c1 is select * from employees ;
	empdata employees%rowtype;
	totalsalary number;
begin
	open c1;
	loop
	fetch c1 into empdata;
	exit when c1%notfound;
		select sum(salary) into totalsalary from employees ;
	end loop;
	dbms_output.put_line(totalsalary);
	close c1;
end;
/