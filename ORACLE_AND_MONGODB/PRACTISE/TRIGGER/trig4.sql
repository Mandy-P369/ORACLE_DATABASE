create or replace trigger trig4 before insert on sales3  for each row 
begin
	insert into sales3 values (:new.pname,:new.ppunit,:new.quantity,:new.initialamount);
end;
/