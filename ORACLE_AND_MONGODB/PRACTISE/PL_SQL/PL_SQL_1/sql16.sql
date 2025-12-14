declare
	pid football.pid%type;
	name football.pname%type;
	cursor c1 is select pid,pname from football where age > 35;
begin
	open c1;
	loop
		fetch c1 into pid,name;
		exit  when c1%notfound;
		dbms_output.put_line(pid || ' ' || name);
		update football set grade='A' where age>35;
		update football set grade='A' where (goals/matches)*100>80; 
	end loop;
	dbms_output.put_line(' no of records :' || c1%rowcount);
	close c1 ; 
end;
/