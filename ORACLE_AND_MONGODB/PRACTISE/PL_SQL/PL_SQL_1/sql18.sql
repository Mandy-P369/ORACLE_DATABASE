declare
	cursor c1 is select * from football;
	name football.pname%type;
	totalgoals number;
	totalmatches number;
	countgoals number;
	countmatches number ;
	meanpercent number;
	footdata football%rowtype;
	meanofgoals number;
	meanofmatches number;
begin
	open c1;
	loop
		fetch c1 into footdata;
		exit when c1%notfound;
		select sum(goals),sum(matches),count(goals),count(matches) into totalgoals,totalmatches,countgoals,countmatches from football;
		meanofgoals   := totalgoals/countgoals;
		meanofmatches :=totalmatches/countmatches;
		meanpercent := (meanofgoals/meanofmatches)*100;
	end loop;
   	dbms_output.put_line('totalgoals'           || '  ' || totalgoals);
	dbms_output.put_line('totalmatches'         || '  ' || totalmatches);
	dbms_output.put_line('mean of goals is :  ' || '  ' || meanofgoals);
	dbms_output.put_line('mean of matches is :' || '  ' || meanofmatches);
	dbms_output.put_line('mean percent is ' || '  ' || meanpercent);
	close c1;
end;
/