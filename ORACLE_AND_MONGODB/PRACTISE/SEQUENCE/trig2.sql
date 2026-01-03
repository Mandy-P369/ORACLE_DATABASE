create or replace trigger trig2 before insert on newconnection for each row
declare
	cnt number;
	minsrno number ;
begin
	select min(srno) into minsrno from oldconnection ;
	if minsrno is not null then 
		select age into cnt from oldconnection where srno=minsrno;
		:new.age:=cnt;
		delete from oldconnection where age=cnt;
	end if ;

end;
/