declare 
	type data is table of number;
	dt data:=data(10,20,30);
begin
	for i in dt.first..dt.last
	loop
		dbms_output.put_line(dt(i));
	end loop;
end;
/