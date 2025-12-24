create or replace trigger trig5 before update on sales3  for each row
declare
begin 
	dbms_output.put_line('Sales3 Table updated');
end;
/