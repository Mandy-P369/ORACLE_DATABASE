declare 
	cursor c1 is select * from football;
	footdata football%rowtype;
begin
	open c1;
	loop
	fetch c1 into footdata;
	exit when c1%notfound;
	dbms_output.put(footdata.pname);
	dbms_output.put(footdata.age); 
	dbms_output.put(footdata.goals);
	dbms_output.put_line(footdata.matches);
	end loop;
	close c1;
end;
/