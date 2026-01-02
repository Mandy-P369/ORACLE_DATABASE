create or replace trigger trig1 instead of insert on employeeview for each row
begin
	dbms_output.put_line('Instead of trigger');
end;
/