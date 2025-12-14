create or replace procedure p6(am number,cid out number)
as
	orderdata orders%rowtype;
	dt date;
begin
	Select min(doj) into dt from orders where amount>am;	
	Select customer_id into cid from orders where order_date = dt ;
end;
/