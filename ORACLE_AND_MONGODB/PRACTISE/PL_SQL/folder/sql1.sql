declare 
	a number;
	b number;
	c number;
begin 
	dbms_output.put_line('It is my first SQL program');
	a:=56;
	b:=45;
	c:= a+b;
	dbms_output.put_line('The calculation of these number' ||   c);	
	if c>0 and c<40
	then 
		dbms_output.put_line('Very low sum obtained');
	elsif c>40 and c<100
	then 
		dbms_output.put_line('Good sum obtained');
	elsif c>100 and c<150 
	then
		dbms_output.put_line('very good sum obtained');
	end if ;
end; 
/


