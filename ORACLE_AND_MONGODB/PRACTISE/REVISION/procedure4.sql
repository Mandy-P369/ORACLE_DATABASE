declare 
	cursor c1(fares number) is select * from tickets where fare > fares;
	tdata c1%rowtype;
	x number ; 
	totalcost number:=0;
begin
	x:=&x; 
	open c1(x);
	loop
		fetch c1 into tdata ;
		exit when c1%notfound;
		dbms_output.put_line('Id is '|| tdata.tid);
		dbms_output.put_line('Name is :'|| tdata.pname);
		dbms_output.put_line('Fare is :'|| tdata.fare);
		totalcost:= totalcost+tdata.fare;
		dbms_output.put_line('Total cost of all these records ' || totalcost);

	end loop;
	close c1 ;
end;
/