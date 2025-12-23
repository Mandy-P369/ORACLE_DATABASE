create or replace trigger trig1 before insert on sales1 for each row
begin
	dbms_output.put_line(:new.pname);
	dbms_output.put_line('New product sell successfully');
end;
/