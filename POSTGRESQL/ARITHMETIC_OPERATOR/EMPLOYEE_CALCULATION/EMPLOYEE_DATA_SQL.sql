select * from employees;
select first_name, salary,(salary*0.1) as bonus from employees ;
select first_name,salary,(salary*0.1) as bonus, salary+(salary*0.1) as finalpay from employee;
alter table employees add column finalpay numeric(10,2);
select * from employees ;
alter table employees rename finalpay to monthlypay;
select * from employees;
update employees set bonus = (salary*0.1) ;
update employees set monthlypay= salary+bonus;
alter table employees rename bonus to monthlybonus ;
select * from employees ;
update employees set monthlypay = salary*12;
alter table employees rename monthlypay to annualpay;
select * from employees;
alter table employees add column annualbonus numeric(10,2);
update employees set annualbonus = monthlybonus*12;
select * from employees;
alter table employees alter column tax type Integer;
alter table employees add column tax numeric(10,2);
update employees set  tax=2 where annualpay>500000 and annualpay<800000;
update employees set tax=5 where annualpay>800000 and annualpay<1200000;
update employees set tax=7 where annualpay>1200000;
select * from employees;
alter table employees add column deduction numeric(10,2);
update employees set deduction = (annualpay*2/100) where tax=2;
update employees set deduction = (annualpay*5/100) where tax=5;
update employees set deduction =(annualpay*7/100 ) where tax=7;
select * from employees;
alter table employees rename annualpay to annualbasicpay;
alter table employees add column annualfinalpay numeric(10,2);
update employees set annualfinalpay = annualbasicpay-deduction;
select * from employees;
alter table employees add column netpay numeric(10,2);
select * from employees;
update employees set netpay =annualfinalpay+annualbonus;
select count(*) from employees where tax=5;
select count(*) from employees where tax=2;
select count(*) from employees where tax=7;
select count(*) from employees where tax=5 or tax=7 or tax=2; 
select * from employees;
select * from employees; 



-- select employees using gmail
select count(*) from employees where email like '%gmail.com%';
-- select employees using hotmail
select count(*) from employees where email like '%@hotmail.com%'
-- select employees using johnson 
select count(*) from employees where email like '%@johnson%'
-- select employees using chavez 
select count(*) from employees where email like '%@chavez%'
-- select employees using yahoo
select count(*) from employees where email like '%@yahoo%'

alter table employees add column experience Integer;
select * from employees;
update employees set experience=3 where annualbonus>500000 and annualbonus<800000;
select * from employees ;







































 

