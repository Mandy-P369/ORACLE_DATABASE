declare 
	pno number;
	name varchar(25);
	accuracy number;
begin
	pno:= &pno;
	name:=func1(pno);
	accuracy:=func2(pno);

	dbms_output.put_line('The name of the player is : '||name||' and his accuracy is : ' || accuracy);

	
end;
/