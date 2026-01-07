declare
 	pno football.pid%type;
	footdata football%rowtype;
begin
	pno := &pno;
	select * into footdata from football where pid=pno ;
	dbms_output.put_line(footdata.pname);
	dbms_output.put_line(footdata.age);
end;
/