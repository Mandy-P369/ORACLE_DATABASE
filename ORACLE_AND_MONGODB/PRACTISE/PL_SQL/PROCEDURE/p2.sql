create or replace procedure p2(no in number)
as
	sq number;
begin
 	sq :=no*no;
	dbms_output.put_line('square is : ' || sq);
end;
/