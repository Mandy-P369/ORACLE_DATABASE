create or replace trigger trig21 instead of insert on employeeview for each row
declare
	v_count number;
begin
	select count(*) into v_count from employeeview; 

	if :new.emp_name is null then  
		:new.emp_name:='product' || v_count;
	dbms_output.put_line('Instead of trigger');
end;
/