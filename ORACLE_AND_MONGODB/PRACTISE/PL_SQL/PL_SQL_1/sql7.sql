declare 
	a number ; 
	cb number ;
	midd number;
begin 
	for midd in 1..20
	loop
		cb:=a*a*a;
		update maths set cube=cb where midd= mid;
	end loop;
end;
/
