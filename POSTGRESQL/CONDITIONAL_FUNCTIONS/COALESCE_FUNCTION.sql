Select * from employees;
-- Coalesce Functions :
--   -> Handling null values 

-- alter table employees alter column deduction rename  tax_deduction; 
select distinct(department) from employees ; 
Select count(fullname) from employees where department = 'IT'or department='HR'
Select coalesce(deduction,annualfinalpay)  as netpay from employees;
 
Select coalesce(deduction,netpay) as pay from employees;

Select coalesce (deduction,salary) as xyz from employees;

Select coalesce(monthlybonus,6) as bonus_amount from employees;

Select coalesce(null,null,'Hello','World') as result ;










