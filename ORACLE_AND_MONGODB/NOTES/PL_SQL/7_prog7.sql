declare
	town varchar(10);
	nm varchar(10);
begin	
	town:='&town';
	select cname into nm from customers where city=town;
	dbms_output.put_line('Name ' || nm);
exception
	when no_data_found then
		dbms_output.put_line('No record found');
	when too_many_rows then
		dbms_output.put_line('Multiple records found');
end;
/
