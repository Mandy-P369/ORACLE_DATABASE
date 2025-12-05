declare
	a number;
begin
	a:=&a;
	if a=1
	then	
		dbms_output.put_line('Monday');
	elsif a=2
	then
		dbms_output.put_line('Tuesday');
	elsif a=3
	then
		dbms_output.put_line('Wednesday');
	else
		dbms_output.put_line('Sunday');
	end if;
end;
/