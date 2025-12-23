create or replace trigger trig3 before insert on sales3 for each row 
begin
	if :new.pname is null 
	then 
		:new.pname:='Adapter';
	end if ;
end;
/