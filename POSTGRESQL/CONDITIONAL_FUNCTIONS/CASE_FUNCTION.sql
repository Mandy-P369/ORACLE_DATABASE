Select * from employees;
-- CASE FUNCTIONS : Categorizing based on the conditions .
-- We will categorize the employees into their salary ranges .

-- Beginner : If the annual final pay is less than 700000 .
-- Intermediate : If the annual final pay is less than 1000000..
-- Expert : If the annual pay is less than 1200000.
Select fullname,annualfinalpay,
	CASE
		WHEN annualfinalpay>=200000 and annualfinalpay <=700000 then 'freshers'
		WHEN annualfinalpay >=700000 and annualfinalpay <=1000000 then 'Beginner'
		WHEN annualfinalpay >1000000 and annualfinalpay <=1200000 then 'Intermediate'
		WHEN annualfinalpay >=1200000 then 'Expert'
		else ' ' end as salary_category
	from employees;

ALTER TABLE EMPLOYEES RENAME EXPERIENCE TO STATUS ;
SELECT * FROM EMPLOYEES
ALTER TABLE EMPLOYEES ALTER COLUMN STATUS TYPE VARCHAR(50);

UPDATE EMPLOYEES SET STATUS = CASE 
	WHEN annualfinalpay >=1000000 and annualfinalpay <=1200000 then 'Intermediate'
		WHEN annualfinalpay >1200000 then 'Expert'
		else 'freshers' end ;





	


