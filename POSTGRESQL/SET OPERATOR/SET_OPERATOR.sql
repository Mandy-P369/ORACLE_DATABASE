CREATE TABLE student_24(StudentID serial primary key,
Name varchar(50),
Age Integer,
Email varchar(50),
Department varchar(50),
GPA numeric(10,2),
GraduationYear Integer);

CREATE TABLE student_25(
StudentID serial primary key,
Name varchar(50),
Age Integer,
Email varchar(50),
Department varchar(50),
GPA numeric(10,2),
GraduationYear Integer
)

select * from student_24;
select * from student_25;

-- UNION : Combines result  ,removes duplicates 
-- 1
select * from student_24 union select * from student_25;
-- 2
select name,department from student_24 union select email,department from student_25; -- Need to write the colum_name proportionally 
-- 3
select email from student_24 union select email from student_25;


-- UNION ALL : Combines result , keep duplicates 
-- 1
select * from student_24 union all select * from student_25;
-- 2
select name,department from student_24 union all select email,department from student_25; -- Need to write the colum_name proportionally 
-- 3
select email from student_24 union all select email from student_25;

-- INTERSECT : Returns common result  in both tables 
-- 1
select * from student_24 intersect select * from student_25;
-- 2
select name,department from student_24 intersect select email,department from student_25; -- Need to write the colum_name proportionally 
-- 3
select email from student_24 intersect select email from student_25;


-- EXCEPT : Results in first,not second
-- 1
select * from student_24 except select * from student_25;
-- 2
select name,department from student_24 except select email,department from student_25; -- Need to write the colum_name proportionally 
-- 3
select email from student_24 except select email from student_25;












