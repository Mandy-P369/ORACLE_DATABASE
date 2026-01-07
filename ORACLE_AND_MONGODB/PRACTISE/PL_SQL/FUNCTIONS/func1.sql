create or replace function func1(pno number) return varchar
is 
	age number;
	pm varchar(20);
begin
	select pname into pm from football where pid=pno;
	return pm; 
end;
/
	