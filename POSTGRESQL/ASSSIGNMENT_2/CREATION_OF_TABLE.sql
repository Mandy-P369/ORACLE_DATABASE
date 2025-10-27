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

--College table 
drop table colleges
CREATE TABLE Colleges (
    college_id INT PRIMARY KEY,
    university_id INT  NOT NULL REFERENCES university,
    name VARCHAR(255) NOT NULL,
    dean VARCHAR(255),
    established_year INT
 );
-- Department Table 
 CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    college_id INT NOT NULL references colleges,
    name VARCHAR(255) NOT NULL,
    building VARCHAR(255),
    head VARCHAR(255));









