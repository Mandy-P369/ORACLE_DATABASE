declare 
	type nums is table of number;
	no nums:=nums();
	limit number ; 
begin
	limit:=&limit;
	no.extend(limit);
	for i in 1..limit
	loop
		no(i):= i*i;	
	end loop;
	for j in 1..limit
	loop
		no(j):=j*j*j;
	end loop;
	for i in no.first..no.last
	loop
		dbms_output.put_line(no(i));
		dbms_output.put_line(no(j));
	end loop;
end;
/