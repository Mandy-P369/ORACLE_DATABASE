create or replace procedure p3(dividend number,divisor number)
as 
	divide number;
begin
	divide := dividend/divisor;
	dbms_output.put_line('The result obtained is ' || divide);
end;
/