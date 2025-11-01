-- 1. List all Universities 
Select * from university;
Select name from university;

-- 2. Find university established after 2000
Select * from university;
Select * from university where established_year >2000;
Select count(*) from university where established_year>2000;  -- 705

-- 3.Retrieve universities with ranking less than 50 
Select * from university;
Select name from university where ranking<50;
Select count(*) from university where ranking<50; -- 106

-- 4.Show the names and location of all universities 
Select * from university;
Select name,concat('country : ',country,',    state : ',state,',   city : ',city) as location from  university;

-- 5.Count the total number of universities
Select count(*) from university;
Select count(distinct name) from university;   -- We need to find the count of universities as of same name .....

-- 6.List all colleges in the particular university
Select * from university order by university_id;
Select * from colleges ;

Select u.university_id as university_id,c.college_id as college_id , u.name as university_name,c.name as college_name
from university u join colleges c on u.university_id = c.university_id;  

-- 1. List all Universities 
Select * from university;
Select name from university;

-- 2. Find university established after 2000
Select * from university;
Select * from university where established_year >2000;
Select count(*) from university where established_year>2000;  -- 705

-- 3.Retrieve universities with ranking less than 50 
Select * from university;
Select name from university where ranking<50;
Select count(*) from university where ranking<50; -- 106

-- 4.Show the names and location of all universities 
Select * from university;
Select name,concat('country : ',country,',    state : ',state,',   city : ',city) as location from  university;

-- 5.Count the total number of universities
Select count(*) from university;
Select count(distinct name) from university;   -- We need to find the count of universities as of same name .....

-- 6.List all colleges in the particular university
Select * from university order by university_id;
Select * from colleges ;

Select u.university_id as university_id,c.college_id as college_id , u.name as university_name,c.name as college_name
from university u join colleges c on u.university_id = c.university_id;  

-- 7.Count number of colleges in each university 
Select * from university;
Select * from colleges ;

Select u.name as university_name ,count(c.college_id) as totalcolleges 
from university u join colleges c on c.university_id = u.university_id 
group by u.name;

-- 8.Find colleges whose names starts with New.
Select * from colleges ;
Select * from colleges where name like 'New%';

-- 9.Retrieve the name and university of each colleges 
Select  distinct c.name as college_name,u.name as university_name from colleges c join university u on 
c.university_id = u.university_id;

Select distinct u.name as university_name , c.name as colleges_name from university u 
join 
colleges c on c.university_id = u.university_id;

Select count(distinct c.name) from colleges c ;
Select count(distinct u.name) from university u ;
-- 9.Retrieve the name and university of each colleges 

Select distinct c.name as university_name,u.name as college_name from university u 
join
colleges c on c.university_id = u.university_id ;

-- 10. List colleges established in specific year 
Select * from colleges ;
Select distinct c.established_year,count(c.name) as established_college  from colleges c group by established_year;


-- 11.List total count of  department in specific college .....
Select * from colleges ;
Select * from department;
Select distinct c.name  from colleges  c;

Select distinct c.name,count(d.name) as total_department from colleges c 
join
department d on c.college_id = d.college_id
group by c.name order by count(d.name);

Select d.name as department_name from department d 
join 
colleges c on c.college_id = d.college_id;

-- 12.Count the number of department in each college....
Select * from colleges;
Select * from department;
Select distinct c.name,count(d.dept_id) as total_department from colleges c join
department d on c.college_id = d.college_id group by c.name ;

-- 13.Find departments with more than 5 instructors ...
Select * from instructor;
Select * from department;
Select d.name,count(i.instructor_id) as instructors from department d join
instructor i on d.dept_id = i.dept_id group by d.name having count(i.instructor_id)>7 order by count(i.instructor_id);

-- 14.Retrieves department names along with college they belong to .
Select *  from colleges ;
Select * from department;
Select distinct c.name as college_name,d.name as department_name from department d 
join 
colleges c on c.college_id = d.college_id ;

-- 15.List departments starts with letter "C"
Select  distinct d.name as department_name from department d where name like 'C%';

-- 16.List all courses offered by particular department ...
Select *  from department;
Select * from course;
Select distinct d.name as department_name,c.name as course_name  from department d 
left join 
course c on c.dept_id = d.dept_id order by d.name desc;

-- 17.Find courses with credit hours greater than 3.
Select * from course;
Select distinct name from course where credits>3;
Select distinct c.name from course c where credits>3;

-- 18.Show courses with no prerequisites ....
Select * from course;
Select * from prerequisite;
Select c.name from course c join
prerequisite p on p.course_id = c.course_id group by c.name ;

-- 19 	Retrieve course names and their departments.
Select * from course;
Select * from department ;
Select c.name as course_name,d.name as department_name from course c right join 
department d on c.dept_id = d.dept_id order by d.name DESC;

Select distinct d.name as department_name,c.name as course_name from department d join 
course c on c.dept_id = c.dept_id order by d.name;

Select distinct c.name as course_name,d.name as department_name from course c join
department d on d.dept_id = c.dept_id order by c.name ;

-- 20.	List courses offered in a particular semester (if column exists).
Select * from course ;
Select * from Student;



-- 21.	List all instructors in a department.
Select * from instructor;
Select * from department;


-- 22.	Count the number of instructors in each department.
Select distinct d.name from department d order by d.name desc;

-- 23.	Find instructors hired after 2020.
Select * from instructor;
alter table instructor add column yearofhiring Integer;
update instructor set yearofhiring = extract(year from hire_date);
Select * from instructor;
Select concat(i.first_name,' ',i.last_name),i.yearofhiring from instructor i where yearofhiring>2020; 

-- 24.	Retrieve instructor names and their titles.
Select * from instructor ;
Select concat(first_name,'',last_name) as instructor_name,title as Title  from instructor ;

-- 25.	List instructors belonging to a specific department.
Select * from instructor;
Select * from department;

Select distinct concat(i.first_name,' ',i.last_name) as instructors,d.name as department_name from instructor i
right join
department d on d.dept_id = i.dept_id order by concat(i.first_name,' ',last_name) desc;

-- 26.	List all sections of a specific course in a semester.
Select * from section ;
Select * from course;
Select s.section_id ,c.course_id,c.name as course_name,s.semester as semester_name from course c
join
section s on c.course_id = s.course_id where c.course_id=854 and s.semester='Summer' order by s.section_id;

-- 27.	Count the number of students enrolled in each section.
Select * from section ;
Select * from student ;
Select * from enrollment ;
Select section_id,count(student_id) as total_students from enrollment group by section_id  order by section_id ;

-- 28.	Find sections scheduled in a particular classroom.
Select *  from student;
Select * from section ;
Select distinct substring(classroom,length(classroom),length(classroom)+1) from  section ;
Select distinct substring(classroom,length(classroom),length(classroom)+1) from section;
alter table section add column class_section varchar(50);
Select *  from section ;
update section set class_section = substring(classroom,length(classroom),length(classroom));
Select * from section;
Select distinct s.class_section ,count(s.section_id) from section s
join
enrollment e on e.section_id = s.section_id group by s.section_id ;

-- 29.	Retrieve section schedules along with instructor names.
Select *  from instructor;
Select * from section ;

Select s.semester,s.schedule,concat(i.first_name,' ',i.last_name) as instructor_name from instructor i join
section s on s.instructor_id = i.instructor_id order by instructor_name;

Select  s.semester,s.schedule,concat(i.first_name,' ',i.last_name) as instructor_name from instructor i
join
section s on s.instructor_id = i.instructor_id  where s.semester = 'Winter' order by instructor_name DESC  ;

-- 30.	List sections for a particular year.
Select * from section ;
Select distinct class_section from section where year=2025;
-- 31.	List all students in a particular department.
Select * from student;
Select *  from department;
Select * from colleges;

Select distinct  d.head as department_head,d.name as department_name,s.first_name as student_name from student s 
join 
department d on s.major_dept_id=d.dept_id where d.name='Physics Dept' order by d.head;

-- 32.	Find students enrolled in more than 3 courses.
Select *  from student;
Select * from enrollment;
Select s.student_id , concat(s.first_name,' ',s.last_name) as student_name,count(e.section_id) as total_courses from
enrollment e join student s on s.student_id = e.student_id group by s.student_id having count(e.section_id)>3
order by total_courses desc;

-- 33.	Retrieve student names along with their major/department.
Select * from student ;
Select * from department;
Select concat(s.first_name,' ',s.last_name) as student_name,d.name from student s  left join department d on s.major_dept_id=d.dept_id
order by d.name; 
-- 34.	List students who do not have an assigned advisor.
Select * from advisor;
Select * from student;
Select * from section order by section_id;


-- 35.	Count the number of students per year (Freshman, Sophomore, etc.).
Select distinct enrollment_year from student order by enrollment_year asc;
--In this question , I stuck becuase we have 11 distinct enrollment_year , so as we have 4 term to describe the
--student  whether they are freshman , sophomore, junior or senior. If we have only 4 enrollment_year then 
-- it is easy to execute .. but i will smartly to execute it........

-- 36.	List all courses a specific student is enrolled in.
Select * from student;
Select *  from enrollment;
Select * from course;
SELECT 
    s.first_name,
    s.last_name,
	trim(concat(s.first_name,' ',s.last_name)) as student_fullname,
    c.course_id,
    c.name AS course_name
FROM student s
JOIN enrollment e ON s.student_id = e.student_id  -- => Student-->Enrollment-->Section-->Course
JOIN section sec ON e.section_id = sec.section_id
JOIN course c ON sec.course_id = c.course_id
WHERE s.first_name = 'Eric'
ORDER BY c.course_id;

-- 37.	Count the number of students in each course.
-- My Approach 
-- =>Student-->Enrollment-->Section-->Course
Select * from student ;
Select * from Enrollment;
Select * from section;	
Select * from course ;
Select 
    c.course_id,
    c.name AS course_name,
    COUNT(e.student_id) AS num_of_students
from course c
join section sec on c.course_id = sec.course_id
join enrollment e on sec.section_id = e.section_id
group by c.course_id, c.name
order by c.course_id;


-- 38.	Find students enrolled in a particular course.
Select * from student;
Select * from enrollment;
Select * from section ;
Select * from course;
Select
    s.student_id,
    s.first_name,
    s.last_name,
    c.course_id,
    c.name as course_name
from student s
join enrollment e on s.student_id = e.student_id
join section sec on e.section_id = sec.section_id
join course c on sec.course_id = c.course_id
where c.course_id = 101; 

-- 39.	Retrieve courses with no enrolled students.
Select * from course;
Select * from enrollment;
Select * from section;
Select 
    c.course_id,
    c.name as course_name from course c
left join section sec on c.course_id = sec.course_id
left join enrollment e on sec.section_id = e.section_id
where e.student_id is null;

-- 40.	List students along with the sections they are enrolled in.
Select * from student ;
Select * from enrollment;
Select * from section;
Select 
    s.student_id,
    s.first_name,
    s.last_name,
    sec.section_id,
    sec.semester
from student s
join enrollment e on s.student_id = e.student_id
join section sec on e.section_id = sec.section_id
order by  s.student_id, sec.section_id;




