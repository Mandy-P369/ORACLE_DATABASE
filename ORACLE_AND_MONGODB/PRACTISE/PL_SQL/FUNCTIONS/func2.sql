create or replace function func2(pno number)return number
is
	accuracy number;
begin
	select round((goals/matches)*100) into accuracy from football where pid=pno;
	return accuracy ;
end;
/