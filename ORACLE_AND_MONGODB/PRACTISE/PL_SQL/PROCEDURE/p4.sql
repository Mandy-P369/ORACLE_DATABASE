create or replace procedure p4(amounts number)
as
	cid orders.customer_id%type;
	amt orders.amount%type;
begin
 	select customer_id,amount into cid,amt from orders where amount>amounts;
	dbms_output.put_line('customer id is ' || cid);
	dbms_output.put_line('amount is ' || amount);
end;
/