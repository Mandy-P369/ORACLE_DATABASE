Select * from university;
drop table if exists university;

--University Table
CREATE TABLE University (
    university_id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    established_year INT,
    ranking INT,
    country VARCHAR(100),
    location VARCHAR(255)
);
Select * from university;
alter table university rename city to country  ;
alter table university add column State varchar(50);
alter table university rename location to States ;
alter table university drop column states;
alter table university add column city varchar(50);
Select * from university;


--College table 
drop table colleges
CREATE TABLE Colleges (
    college_id INT PRIMARY KEY,
    university_id INT  NOT NULL REFERENCES university,
    name VARCHAR(255) NOT NULL,
    dean VARCHAR(255),
    established_year INT
 );

 Select * from colleges;
 
-- Department Table 
 CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    college_id INT NOT NULL references colleges,
    name VARCHAR(255) NOT NULL,
    building VARCHAR(255),
    head VARCHAR(255));

Select * from department;

--Course Table 
CREATE TABLE Course (
    course_id INT PRIMARY KEY,
    dept_id INT NOT NULL references department,
    name VARCHAR(255) NOT NULL,
    credits INT,
    description TEXT
);
Select * from Course;

-- Instructor Table 
CREATE TABLE Instructor (
    instructor_id INT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    dept_id INT references department,
    hire_date DATE,
    title VARCHAR(50)
);
drop table instructor;
Select * from Instructor;

Select * from university;
Select * from colleges;
Select * from department;

Select * from university;
Select * from instructor;

Select * from course;

-- Section Table 
CREATE TABLE Section (
    section_id INT PRIMARY KEY,
    course_id INT NOT NULL REFERENCES COURSE,
    semester VARCHAR(20),
    year INT,
    instructor_id INT REFERENCES INSTRUCTOR,
    classroom VARCHAR(50),
    schedule VARCHAR(50)
);
Select * from section ;

-- Student Table 
CREATE TABLE Student ( student_id INT PRIMARY KEY, first_name VARCHAR(100) NOT NULL,
last_name VARCHAR(100) NOT NULL, dob DATE, gender VARCHAR(10), college_id INT NOT NULL references colleges,
enrollment_year INT, major_dept_id INT references department );


Select * from Student;

-- Advisor Table 
CREATE TABLE Advisor (
    student_id INT NOT NULL  references Student,
    instructor_id INT NOT NULL references instructor
);
Select * from Advisor;

-- Enrollment Table 
CREATE TABLE Enrollment (
    student_id INT NOT NULL REFERENCES STUDENT,
    section_id INT NOT NULL REFERENCES SECTION,
    grade VARCHAR(2)
);

SELECT * FROM ENROLLMENT;

-- Prerequisite Table 
CREATE TABLE Prerequisite (
    course_id INT NOT NULL references course,
    prereq_course_id INT NOT NULL  references course
);

-- Query University
Select * from university;
-- Query Colleges 
Select* from colleges ;
-- Query Department
Select * from department;
-- Query Course
Select * from course;
-- Query instructor
Select * from instructor;
-- Query Section 
Select * from section;
-- Query Student
Select * from student;
-- Query Advisor 
Select * from advisor;
-- Query Enrollment
Select * from enrollment;
-- Query Prerequisite
Select * from prerequisite;

























