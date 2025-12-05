declare
	price number;
	qty number;
	total number;
begin
	price:=&MRP;
	qty:=&units;
	total:=price*qty;
	dbms_output.put_line('Total is ' || total);
end;
/