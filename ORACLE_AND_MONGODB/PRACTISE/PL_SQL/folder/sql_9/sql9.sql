declare 
	cno number;
	custoname varchar(20);
	prodname varchar(20);
begin
	for mid in reverse 1..5
	loop
		select cname,pname into custoname,prodname from customers where cid = mid ;
		dbms_output.put(custoname);
		dbms_output.put('        ');   
		dbms_output.put(prodname);
		dbms_output.put_line('       ');
	end loop ;
end;
/ 