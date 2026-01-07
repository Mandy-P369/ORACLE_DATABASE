declare 
	l number
	b number
	h number
	volume  number
begin 
	l:=&length
	b:=&breadth
	h:=&height
	volume = l*b*h
	dbms_output.put_line('The length of the cuboid is : '  || l)
	dbms_output.put_line('The length of the cuboid is : '  || b)
	dbms_output.put_line('The length of the cuboid is : '  || h)
	dbms_output.put_line('The volume of the cuboid is : '  || volume)
end;
/

	

	
	
	