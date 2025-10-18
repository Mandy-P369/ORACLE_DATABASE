select * from employees ;
select trim(last_name) from employees ;
select subString(first_name,1,5) from employees ;
select replace(first_name,'Todd','Rajkumar') from  employees;
select * from employees ;
select Date_part('month',joining_date) from employees ;
select date_part('day',joining_date) from employees;
select date_part('year',joining_date) from employees;

-- NOW() : today's currrent time.. 
Select now() as today_time ;
-- current_Date : Gives todays current date..
Select current_Date as cd ;
-- Extract Functions :
Select extract(year from joining_date) from employees;
Select extract(month from joining_date) from employees;
Select extract (day from joining_date )from employees;
select concat(extract(day from joining_date),'-', extract(month from joining_date),'-',extract(year from joining_date)) from employees;

-- DATE_PART FUNCTIONS :
Select Date_part('month',joining_date) from employees;
Select Date_Part('Day',joining_date) from employees;
Select Date_Part('year',joining_date) from employees;
Select Date_part('week',joining_date) from employees;
Select Date_part('decade',joining_date)  from employees;

-- Age  Functions :
Select age (now() ,joining_date) from employees;
Select age (current_date,joining_date )from employees;



-- DATE_TRUNC() : Truncate Date to precision 
-- Truncate added date to start of the month 

select date_trunc('month',joining_date) from employees;
							-- == --
select concat(date_trunc('day',joining_date),' || ',date_trunc('month',joining_date),' || ',date_trunc('year',joining_date)) from employees;
select joining_date,date_trunc('week',joining_date) from employees;
select joining_date,date_trunc('millennium',joining_date) from employees;
select joining_date ,date_trunc('century',joining_date) from employees;
select joining_date ,date_trunc('decade',joining_date) from employees;
select joining_date , date_trunc('second',joining_date) from employees;
select joining_date, date_trunc('microseconds',joining_date) from employees;
-- select To-char(date_trunc('week',joining_date),'DD-Mon-YYYY') from employees;

-- INTERVAL : Add or substract time intervals 
select joining_date , joining_date + INTERVAL'6 days' as new_date from employees;
-- ==
select joining_date , joining_date + INTERVAL'5 months' as new_date from employees;
-- ==
select joining_date , joining_date + INTERVAL'5 year' as new_date from employees;


-- current_time :
select current_time as ct;

-- To_date :
Select to_date(joining_date ,'DD-MM-YYYY') from employees;
select * from employees ; 










