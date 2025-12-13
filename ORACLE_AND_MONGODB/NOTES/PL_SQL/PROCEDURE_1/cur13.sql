declare
	cursor c1 is select * from customers;
begin
	for cur in c1
	loop
		dbms_output.put_line('Name  ' || cur.cname);
		dbms_output.put_line('Amount ' || cur.amount);
		dbms_output.put_line('--------------------------------');
	end loop;
end;
/