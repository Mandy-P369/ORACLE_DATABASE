create or replace trigger trig5 before update or insert of ppunit,quantity on sales3 for each row 
declare
begin
	dbms_output.put_line('Sales3 table updated');
	:new.initialamount := :old.ppunit * :old.quantity;

end;
/