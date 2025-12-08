declare
	pno football.pid%type;
	playername football.pname%type;
	age football.age%type;
	goalss football.goals%type;
	matchess football.matches%type;
	score_per_match number;
begin
	pno := &pno;
	Select pname,age,goals,matches into playername,age,goalss,matchess from football  where pid=pno ; 
	dbms_output.put_line(playername);
	dbms_output.put_line(age);
	dbms_output.put_line(goalss);
	dbms_output.put_line(matchess);

	score_per_match := matchess/goalss;
	dbms_output.put_line(score_per_match);
end;
/