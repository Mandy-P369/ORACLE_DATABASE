declare
	cursor c1(mon number,pdays number) is select * from attendance
	where month=mon and days>=pdays;
	attdata c1%rowtype;
begin
	open c1(12,20);
	loop	
		fetch c1 into attdata;
		exit when c1%notfound;
		dbms_output.put_line('Id ' || attdata.id);
		dbms_output.put_line('Month ' || attdata.month);
		dbms_output.put_line('Days ' || attdata.days);
		dbms_output.put_line('------------------------');
	end loop;
		
	close c1;
end;
/