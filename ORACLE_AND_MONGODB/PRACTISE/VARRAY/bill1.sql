declare
	bijli_units monthly_unit;
	bijli_total number:=0;
	customerid number:=&customerid;
begin
	Select monthly_units into bijli_units from billconsume where custid=customerid;
	for i in 1..bijli_units.count
	loop
		bijli_total:= bijli_total + bijli_units(i);
	end loop;
	dbms_output.put_line('Total yearly Electricity units ' || bijli_total);
	dbms_output.put_line('Monthly consumption electricity'||bijli_total/12);
	if bijli_total>300 then
		dbms_output.put_line('You already reach to your limit');
	end if;
end;
/