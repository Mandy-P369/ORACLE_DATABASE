Select * from employees
create table profession (id serial primary key,name varchar(50),salary Integer);
Select * from profession ;

insert into profession (name,salary) values 
									('Engineer',76543),
									('Doctor',98765),
									('Teacher',87654),
									('Lawyer',76543),
									('Soldier',56789);
Select * from profession;
drop table profession ;
 
create table colleges(cid serial primary key ,cname varchar(50),uni_id Integer);
Select * from colleges ;
insert into colleges(cname ,uni_id) values
						('BTIRT',101),
						('gyansagar',102),
						('IGEC',103),
						('Infinity',104),
						('Adina',105),
						('Sips',106),
						('Bhagyodaya',NULL);
Select * from colleges ;

create table university(uni_id serial primary key,uname varchar(50))
Select * from university;

insert into university values(101,'RGPV'),
							(102,'RGPV'),
							(103,'RGPV'),
							(104,'RGPV'),
							(105,'RPGV'),
							(106,'RGPV'),
							(107,'RGPV');

Select * from university;
Select * from colleges ;

Select c.cname,u.uname from university u
inner join 
colleges c
on c.uni_id = u.uni_id;

select * from university ;
Select * from colleges ;

insert into colleges (cname,uni_id) values 
('Oriental',107),
('LNCT',108);

Select * from colleges ;
insert into colleges(cname,uni_id)values('Rambharose',109),('Rampyaare',NULL),('Chunnilal',110),('Ghatiyaneeche',111);
Select * from colleges;


select c.cname,u.uname from university u
inner join 
colleges c 
on c.uni_id = u.uni_id;

select * from university;

insert into university (uni_id,uname)values(108,'FHFJ'),
(109,'ASDF'),(110,'HGFD'),
(112,'JHGF');

Select * from university;



-- Inner join : In this type of join, the records of tables will be shown , which are interconnected to each other 
Select c.cname,u.uname from colleges c
inner join 
university u 
on c.uni_id = u.uni_id;

-- Left join : In this type of join the records of first table will be shown but the records of  second table will be shown ,
-- which have connection with thew first table
Select c.cname,u.uname from colleges c
left join 
university u
on c.uni_id  = u.uni_id;

select u.uname,c.cname from university u 
left join 
colleges c
on c.uni_id = u.uni_id;

-- Right join : In this type of join ,the all the records of the right table will be shown but the , the records of left table 
-- will be shown having connection with the left table 
Select u.uname,c.cname from colleges c
right join 
university u 
on u.uni_id = c.uni_id;

select c.cname,u.uname from university u
right join 
colleges c
on c.uni_id = u.uni_id;
 
-- Full outer join : it is the type of join in which if :
-- 				a) all records from table A
-- 				b) all records from table B
-- 				c) where there is no match , it fills the missing side with the null values ..
Select u.uname,c.cname from university u
full outer join 
colleges c
on c.uni_id = u.uni_id;

Select c.cname,uname from colleges c
full outer join 
university u
on c.uni_id = u.uni_id;

-- Cross join : it combines the each row of the first table with the each row of the second table 
-- without any condition , it is called cartesian product ......
-- -> If table A has m rows , and,
-- -> If table B has n rows ..
-- Then result will be m*n rows...
Select u.uname,c.cname from colleges c
cross join
university u ;


-- Self join : In this type of join if we want to compare or relate rows within the same table
-- for example : when the record is related to another record within the same table ....
select c.cname,u.cname from  colleges c join colleges u on c.uni_id = u.uni_id;  

Select c.uname,u.uname from university c join university u on c.uni_id = u.uni_id;

Select c.cname,u.cname from colleges c join colleges u on c.uni_id = u.uni_id and c.uni_id != u.uni_id ; -- no records match 

Select * from colleges ;
Select * from university;

Select c.cname,u.cname from colleges c join
colleges u on c.uni_id = u.uni_id;

Select * from student;
alter table student add column uni_id Integer;
update student set uni_id=102 where stid = 4;
-- Three tables 
Select c.cname,u.cname from colleges c join colleges u on c.uni_id = u.uni_id 
join student s 
on s.uni_id = c.uni_id ;

-- Four tables 
 Select c.cname,u.cname from colleges c join colleges u on c.uni_id = u.uni_id 
join student s 
on s.uni_id = c.uni_id join 
university v on v.uni_id = c.unid;








