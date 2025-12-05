declare
	pno number;
	nm varchar(10);
	comp varchar(10);
begin
	pno:=&pno;
	select name,company into nm,comp from stock where prodcd=pno;
	dbms_output.put_line('Name ' || nm);
	dbms_output.put_line('Company ' || comp);
end;
/