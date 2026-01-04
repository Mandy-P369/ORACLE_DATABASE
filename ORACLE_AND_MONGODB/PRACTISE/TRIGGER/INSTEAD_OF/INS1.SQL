create or replace trigger ins1 instead of insert on empview for each row
declare
begin
	if :old.salary>0 then 
		dbms_output.put_line('Quantity is in stock , you can not delete');
	else
		delete from empview where emp_id=:old.emp_id;
		dbms_output.put_line('Employee code 0, employee deleted');
	end if ; 
end;
/