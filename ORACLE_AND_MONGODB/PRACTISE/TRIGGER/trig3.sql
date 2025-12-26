create or replace trigger trig3 before insert on sales2 for each row 
declare 
	v_count number ;
begin
	if :new.pname is null
	then
		select count(*) into v_count from sales2; 
		:new.pname:='Product'||(v_count+1);
	elsif :new.ppunit is null
	then 
		:new.ppunit:=0;
	elsif :new.quantity is null
	then
		:new.quantity:=0;
	elsif :new.discount is null or :new.discount=0
	then
		:new.finalamount := :new.iamt+(:new.iamt*18/100);
	end if;
	:new.iamt := :new.ppunit*:new.quantity;
	:new.finalamount:= (:new.iamt-(:new.iamt*:new.discount/100))+(:new.iamt-(:new.iamt*:new.discount/100))*18/100;

end;
/