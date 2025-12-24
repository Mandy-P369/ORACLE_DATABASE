create or replace trigger trig4 before delete on sales3 for each row
begin
	dbms_output.put_line('One record deleted');
end;
/