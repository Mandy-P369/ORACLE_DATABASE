declare 
	a number;
	mid number;
	sq number;
begin
	for a in 1..20
	loop
		mid:=a;
		sq:=a*a;
		insert into maths values(mid,a,sq);
	end loop;
end;
/
