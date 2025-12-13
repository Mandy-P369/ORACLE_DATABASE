 declare
	x number;
	y number;
	z number;
begin
	x:=&x;
	y:=&y;
	p3(x,y,z);
	dbms_output.put_line('Sum is ' || z);
end;
/
