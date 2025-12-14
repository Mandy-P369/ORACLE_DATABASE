create or replace procedure p5(x number ,y number ,z out number)
as 
begin
	z:=x+y ; 
	dbms_output.put_line('the value of z is ' || z);
end;
/