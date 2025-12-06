declare 
	a number;
begin 
	a:=1;
	loop
		dbms_output.put_line(a);
		a:=a+1;
		exit when a>10;
	end loop;

end;
/