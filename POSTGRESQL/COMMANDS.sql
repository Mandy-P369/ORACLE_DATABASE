-- Creatioj of the Table in multiple form :
create table School(scid serial primary key,name varchar(30)not null unique ,noofStudents Real,Faculty Integer);
select * from School;
insert into School (name,noofStudents,Faculty)values('Sant Dominic Savio School',7000,100);
select * from School;

SELECT * FROM STUDENT ;
INSERT INTO STUDENT (name,email,age) values('aayush pateriya','aayushmanniya56@gmail.com',21);

SELECT * FROM STUDENT ;
select name,email from Student ascend ;

create table if not exists Country(cid serial primary key,name varchar(50),population Integer);
select  * from Country;

-- Insertion by two methods : 
select * from school ;
insert into school (name,noofStudents,faculty)values('Modern public School',800,50);
insert into school values (4,'SDPS',1000,54)


select * from school 

-- Numeric Data types :
-- Integer
-- Serial 
-- BigInt
-- Numeric(10,2) 
-- Real 
-- DoublePrecision
create table Student(Sid Serial primary key,age Integer,salary numeric(10,2))
select * from Student;
insert into Student (age ,salary )values(23,4555454.45)
select * from Student ;
select * from Student  where age<21;
-- Character Data types :
-- char (for character fixed length)
-- varchar(40)  (For the variable length )
-- Text (for unlimited length String )
create table Course(tid Serial primary key, name varchar(45),description char,feedback text);
select * from Course;
insert into Course (name,description,feedback)values('C','R','Ek number course h bhai')
select * from  Course;
alter table Course drop column description ;
alter table Course add column description text;
select * from Course;
update Course set description = 'Radhey Radhey';

-- Date and Time  Data types :
-- 1 . DATE :  Stores Date(Year,Month,Day)
-- 2. Time  :  Stores Time(Hour,Minute,Second)
-- 3. TIMESTAMP : Stores Date and Time 
-- 4. TIMESTAMPTZ : Stores Date and Time with Time zone 
-- 5. INTERVAL : Stores durartion of Time 
create table events (eventid serial primary key,event_date TIMESTAMP ,duration INTERVAL);
SELECT * FROM EVENTS ;
INSERT INTO EVENTS (event_date ,duration )values('23-Jan-2024','10:00:00')
SELECT * FROM EVENTS ;
ALTER TABLE EVENTS ADD COLUMN DEPT_TIME TIMESTAMPTZ;
SELECT * FROM EVENTS ;

--BOOLEAN DATA TYPES : 
--BOOLEAN : Stores TRUE,FALSE,or NULL
CREATE TABLE USERS (userid serial primary key,username varchar(56),is_active BOOLEAN);
SELECT * FROM USERS ;
INSERT INTO USERS  (username,is_active)values('aayush pateriya',TRUE)
SELECT * FROM USERS; 



-- CONSTRAINTS : THESE ARE RULES ENFORCED ON DATA  IN TABLES TO ENSURE ACCURACY , CONSISTENCTY, AND INTEGRITY. THEY DEFINE 
-- CONDITIONS 	THAT THE DATA MUST READ AND ARE APPLIED TO COLUMNS OR TABLES DURING TABLE CREATION AND MODIFICATION
-- NOT NULL : 
-- PRIMARY KEY
-- UNIQUE
-- FOREIGN KEY
-- CHECK
-- DEFAULT
-- EXCLUSION 
drop table  if exists Student ;
select * from Student; --Table not existed

create table Student (stid serial primary key,
name varchar(40),
email varchar(50) not null unique,
age Integer check (age>=18),
register_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP)



-- ORDER BY 
SELECT * FROM SCHOOL ;
SELECT *  FROM SCHOOL ORDER BY scid DESC
UPDATE SCHOOL SET NOOFSTUDENTS = 6000 WHERE SCID = 2;
SELECT * FROM SCHOOL;
SELECT * FROM SCHOOL ORDER BY NOOFSTUDENTS ASC;
SELECT * FROM SCHOOL ORDER  BY SCID ASC ;
UPDATE SCHOOL SET NAME='RLPS',FACULTY=50 WHERE SCID=1;
SELECT * FROM SCHOOL;









