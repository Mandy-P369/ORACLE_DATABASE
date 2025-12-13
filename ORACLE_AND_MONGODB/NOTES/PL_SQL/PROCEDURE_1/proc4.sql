create or replace procedure p4(dno number,name out varchar)
as
	custdata customers%rowtype;
	dt date;
begin
	select min(doj) into dt from customers where dept=dno;
	select cname into name from customers where doj=dt;

	
end;
/