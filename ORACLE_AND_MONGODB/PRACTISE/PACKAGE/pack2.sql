create or replace package body pack1
is 
	function func1(no number) return number is 
		sq number;
	begin 
		sq:=no*no ;
		return sq ; 
	end func1;

	procedure proc1(no number)
	is 
		cube number ;
	 begin 
		cube := no*no*no ;
		dbms_output.put_line('Cube root obtained is :'|| cube);
		dbms_output.put_line('The number is : '||no);
	end proc1;
end pack1;
/