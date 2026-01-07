declare 
	cb number ;
begin 
	for midd in 1..20
	loop	
		cb:=midd*midd*midd;
		update maths set cube=cb where mid = midd;
		dbms_output.put_line(cb);
		
		
	end loop;
end;
/
