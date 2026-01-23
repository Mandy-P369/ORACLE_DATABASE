declare
	tcd number ; 
	name varchar(20);
	scity varchar(12);
	dcity varchar(12);
	faree number;
begin
	tcd:=&tcd ; 
	Select pname,scity,dcity,fare into name,scity,dcity,faree from tickets where tid = tcd ; 
	dbms_output.put_line('The name of the passenger is :'|| name || ' and want to go from '|| scity || ' to ' || dcity || ' and 	charge fare ' || faree); 
end;
/