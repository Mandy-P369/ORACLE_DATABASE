declare
	dno number;
	nm varchar(10);
begin
	dno:=&dno;
	p4(dno,nm);
	dbms_output.put_line(nm);
end;
/