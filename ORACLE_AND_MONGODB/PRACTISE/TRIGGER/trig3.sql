create or replace trigger trig3 before insert or update of ppunit,quantity,iamt,finalamount  on sales2 for each row 
declare 
	v_count number ;
	v_net number ;
begin
	if :new.pname is null
	then
		select count(*) into v_count from sales2;
		:new.pname:='Product'||(v_count+1);
	end if;

	if :new.ppunit is null
	then
		:new.ppunit:=0;
	end if;

	if :new.quantity is null
	then
		:new.quantity:=0;
	end if;
							
	:new.iamt:= :new.ppunit*:new.quantity;
	v_net:= :new.iamt-(:new.iamt*:new.discount/100);
	:new.finalamount:=v_net+(v_net*18/100);

end;
/