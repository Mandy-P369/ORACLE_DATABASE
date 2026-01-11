declare cursor cur1 is select * from result;
begin
	 for data in cur1 
	 loop
		dbms_output.put_line('Enrollment number is : ' || data.enrollno);
		for i in 1..data.subjmarks
			
	 end loop;
end;
/