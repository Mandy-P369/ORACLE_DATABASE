SELECT * FROM EMPLOYEES;

-- Upper Functions : 
Select Upper(first_name) from employees;
-- Lower Functions :
Select lower(last_name) from employees;
-- Lenght Functions :
Select length(concat(first_name,' ',last_name)) from employees;
-- Concat Functions :
Select concat(length(first_name),' ',last_name) from employees;
-- SubString functions : 
Select substring(fullname,3,5) from employees
Select substring (fullname,1,8) from employees;
-- Trim Functions :
Select Trim(concat(first_name,' ',last_name)) from employees;
-- Replace Functions :
Select replace(first_name,'Wendy','Ayush') from employees;

-- Capitalize the first character of the String :
Select initcap(fullname) from employees;






Select * from employees;
