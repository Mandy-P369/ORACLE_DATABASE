declare
 	SI number ; 
	principal number ;
	rate number ; 
	time number ; 
	amount number ;	
	age number;
begin
	age:=&age ;
	if age>18 then
		principal:=&principal;
		rate:=&rate ;
		time:=&time;
		SI := (principal*rate*time)/100;
		dbms_output.put_line('The simple interest obtained is '|| SI);

		amount:= SI+principal;
		dbms_output.put_line('The final amount after interest is :' || amount);
	else 
		dbms_output.put_line('You will not take interest');
	end if ; 	
	exception 	
		when no_data_found then
			dbms_output.put_line('No record found ');
end;
/