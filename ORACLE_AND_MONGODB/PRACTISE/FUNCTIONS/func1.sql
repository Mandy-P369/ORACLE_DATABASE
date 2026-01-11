create or replace function func1(sno number)return number
is 
	am number;
begin 
	select quantity*ppunit into am from sales where sid = sno ;
	return am;
end;
/