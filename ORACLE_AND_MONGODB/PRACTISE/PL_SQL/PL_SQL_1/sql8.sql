declare 
	n number;
	sq number;
	cid number;
begin
	for cid in 1..10
	loop
		Select num,square into n,sq from maths where mid= cid;
		dbms_output.put(n);
		dbms_output.put('  ');
		dbms_output.put_line(sq);		
	end loop;
end;
/