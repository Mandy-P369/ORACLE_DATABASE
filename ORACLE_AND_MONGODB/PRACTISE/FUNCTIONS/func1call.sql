declare
	sid number ;
	result number;
	name varchar(20);
begin
	sid := &sid;
	result := func1(sid);
	select pname into name from sales where quantity*ppunit=result;
	dbms_output.put_line('The name of the product is ' || name || ', Amount is :' || result);
end;
/