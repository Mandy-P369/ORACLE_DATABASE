declare 
	name varchar(20);
	age number; 	
begin
	name:='&name';
	age:=&age;
	insert into oldconnection values(seqq.nextval,name,age);
end;
/