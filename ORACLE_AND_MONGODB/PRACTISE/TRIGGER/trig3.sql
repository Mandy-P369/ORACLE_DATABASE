create or replace trigger trig3 before insert on sales3 for each row 
declare 
	v_count number ;
begin
	if :new.pname is null
	then
		select count(*) into v_count from sales3; 
		:new.pname:='Product'||(v_count+1);
	elsif :new.ppunit is null 
	then 
		:new.ppunit:=0;
	elsif :new.quantity is null
	then
		:new.quantity:=0;
	
	end if;
	:new.initialamount := :new.ppunit*:new.quantity;	
end;
/