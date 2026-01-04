create or replace trigger trig5 before insert or update of ppunit,discount,quantity,finalamount on sales2 for each row 
declare
begin 	
	if  updating('quantity') or updating('discount') or updating('finalamount') then
		:new.ppunit := ((:new.finalamount*100)/(:new.discount+18+100)) - :new.quantity;
	end if;

end ; 
/