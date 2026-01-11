declare
	type marks is table of number;
	mk marks := marks(10,20,30,40,50,60);
begin
	dbms_output.put_line(mk.count);
	mk.extend(4);
	mk(mk.last):=50; 
	dbms_output.put_line('After extending');
	for i in mk.first..mk.last
	loop
		dbms_output.put_line(mk(i));
	end loop;
	dbms_output.put_line('---------------------------');
	dbms_output.put_line(mk.count);
	mk(mk.last):=60;
	for i in mk.first..mk.last
	loop
		dbms_output.put_line(mk(i));
	end loop;
	dbms_output.put_line(mk.count);

	if mk.exists(2) then 
		dbms_output.put_line('Found');
		dbms_output.put_line(mk(2));
	else  
		dbms_output.put_line('Not found');
	end if;

	if mk.exists(3) then
		dbms_output.put_line('Found');
		dbms_output.put_line(mk(3));
	else
		dbms_output.put_line('Not found');
	end if;

	dbms_output.put_line(mk.count);
end;
/