-- 1.	List all students along with the courses they are enrolled in and the instructor for each course.
Select * from student;
Select * from course;
Select * from enrollment;
Select * from instructor;

Select  distinct s.first_name,s.last_name,trim(concat(s.first_name,' ',s.last_name)) as student_full_name,
c.name,trim(concat(i.first_name,' ',i.last_name)) as instructor_name from student s
join
course c on s.major_dept_id = c.dept_id
join instructor i on i.dept_id = c.dept_id order by c.name;

-- 2.	Find students who have not completed prerequisites for courses they are enrolled in.
Select * from student;
Select * from prerequisite;
Select * from course;
Select * from enrollment;

Select s.student_id,concat(s.first_name,' ',s.last_name),e.section_id,c.name as student_enrolled_course_name,e.grade,
p.prereq_course_id from enrollment e join student s on s.student_id = e.student_id 
join section ss on e.section_id = ss.section_id join course c on c.course_id = ss.course_id
join prerequisite p on p.course_id = c.course_id where prereq_course_id  not in  
(select c2.course_id from enrollment e2 join section s2  on e2.section_id = s2.section_id 
join course c2 on c2.course_id = s2.course_id where e2.student_id=s.student_id 
order by p.prereq_course_id desc)order by p.prereq_course_id desc;


-- 3.	List students who are enrolled in more than 5 courses this semester.

-- 4.	Find students enrolled in courses outside their department.
-- 5.	Retrieve students who share the same advisor and are enrolled in at least one common course.
-- 6.	List students who have enrolled in all courses offered by their department.
-- 7.	Find students who have multiple advisors in the same semester.
-- 8.	Retrieve students along with a count of courses taken per semester.
-- 9.	List students who have not enrolled in any course that is a prerequisite for another course.
-- 10.	Find the students who are enrolled in courses where the instructor is from a different department.
-- 11.	List instructors along with the number of sections they teach.
-- 12.	Find instructors who teach in multiple departments.
-- 13.	List instructors along with the average number of students per section they teach.
-- 14.	Find instructors who have never advised any student.
-- 15.	Retrieve the total number of courses taught by each instructor grouped by department and semester.
-- 16.	List sections along with instructors and students where the classroom has scheduling conflicts.
-- 17.	Find the most popular instructor (highest total student enrollment) per semester.
-- 18.	List instructors teaching courses that have no prerequisites.
-- 19.	Retrieve instructors who are teaching all courses in a department.
-- 20.	List instructors along with their department, college, and the total number of students they teach.
-- 21.	List courses that are prerequisites for multiple other courses.
-- 22.	Find courses with no students enrolled but have prerequisites.
-- 23.	Retrieve courses along with the university, college, and department offering them.
-- 24.	List courses that are indirectly prerequisites for a specific course (multi-level prerequisite chain).
-- 25.	Find courses that are prerequisites for themselves indirectly (circular prerequisite check).
-- 26.	Find the top 3 courses with the highest student enrollment in each department.
-- 27.	List courses where all enrolled students have completed all prerequisites.
-- 28.	Retrieve courses offered in a semester that have overlapping section schedules.
-- 29.	Find courses that share the exact same set of prerequisites.
-- 30.	List courses that have sections with more than 50% failing students (if grade column exists).
-- 31.	Find departments where all instructors are teaching at least one section.
-- 32.	Count the total number of students in each department across all colleges in a university.
-- 33.	List colleges along with the number of departments and total courses offered.
-- 34.	Retrieve universities along with total student enrollment across all their colleges.
-- 35.	Find universities that have at least one student enrolled in every course offered by their colleges.
-- 36.	List departments where every course has at least one section.
-- 37.	Find the average number of courses taken by students per department.
-- 38.	Retrieve colleges where students from other colleges are enrolled in at least one course.
-- 39.	Find departments where instructors are teaching courses outside their department.
-- 40.	List universities with students enrolled in courses across all their colleges’ departments.

