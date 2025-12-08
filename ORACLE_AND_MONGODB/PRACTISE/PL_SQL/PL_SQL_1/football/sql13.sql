declare
	pno football.pid%type;
	footdata football%rowtype;
	score_per_match number;
	accuracy number ;
	grade varchar(20);
begin
	pno := &pno;
	Select  * into footdata from football f where pid = pno;
	dbms_output.put_line('name'    ||   footdata.pname);
	dbms_output.put_line('age'     ||   footdata.age);
	dbms_output.put_line('goals'   ||   footdata.goals);
	dbms_output.put_line('matches' ||   footdata.matches);

	score_per_match := footdata.goals/footdata.matches;
	dbms_output.put_line('score per match' || score_per_match);

	accuracy := score_per_match*100;
	dbms_output.put_line('accuracy' || accuracy);
	
	if accuracy>=0 and accuracy<=20
	then 
		grade := 'E';		
		update football set grade ='E' where accuracy>=0 and accuracy<=20 ; 
	elsif accuracy>=20 and accuracy<=40
	then
		grade := 'D';
	elsif accuracy>=40 and accuracy<=60
	then
		grade := 'C';
	elsif accuracy>=60 and accuracy<=80 
	then
		grade := 'B';
	elsif accuracy<=80 and accuracy<=100
	then
		grade := 'A';
	end if ;
	dbms_output.put_line(grade);
	
	for pid in 1..20 ;
end;
/