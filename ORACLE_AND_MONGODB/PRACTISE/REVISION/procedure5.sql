c
reate or replace procedure p2(no in number)
as 	
	tax number; 
	cursor c1(tax number) is select * from tickets where tid=no; 
	tdata c1%rowtype;
	finalamount number;
begin
	tax:=&tax ; 
	open c1(tax);
	loop
		fetch c1 into tdata;
		exit when c1%notfound;
		finalamount := tdata.fare+tdata.fare*tax/100;
		dbms_output.put_line('Finalamount of id'|| tdata.tid || 'is' || finalamount);
	end loop;
	close c1;
end;
/