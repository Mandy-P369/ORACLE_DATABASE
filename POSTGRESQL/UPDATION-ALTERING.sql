select * from School ;
select * from school order by scid asc 
select * from School order by scid desc;
select * from School where name='SDPS';
alter table School add column schoolmail varchar(50);
alter table School drop column schoolmail ; 
select * from School ; 
update School set noofStudents = noofStudents+100 ;
select *  from School ; 
alter table School add column State varchar(40)
select * from School ;
update School set state = 'Uttar Pradesh ';
alter table School add column f_salary Integer;
select * from School  where name like '%S'; 
select * from School;
drop Table  School;


create table school (school_id Serial primary key,name varchar(50)not null,board varchar(30)not null ,type varchar(30),estd_year Integer,city varchar(30)not null,state  varchar(30) not null,contact_no Integer,email varchar(50)not null unique,principal_name varchar(40),totalStudents Integer,totalTeachers Integer)
select * from School;

insert into School values(1,'Rani Laxmmi Bai public School ','ICSE','private','1998','Jhansi','Uttar pradesh',1234567879,'rani@hotmail.com','Anupam mishra',20000,800)
select * from School ;


INSERT INTO school VALUES (3,'St. Xavier High School','CBSE','Private',1995,'Lucknow','Uttar Pradesh',9988776655,'stxavier@gmail.com','Anita',1500,60);
INSERT INTO school VALUES (4,'Delhi Public School','CBSE','Private',1985,'Delhi','Delhi',9812345678,'dps@gmail.com','Vikas Kumar',2500,110);
INSERT INTO school VALUES (5,'Little Flower School','ICSE','Private',2000,'Nagpur','Maharashtra',9922334455,'littleflower@gmail.com','Manju Gupta',800,35);
INSERT INTO school VALUES (6,'Blue Bells High','State Board','Private',1999,'Jaipur','Rajasthan',9876512345,'bluebells@gmail.com','Rekha Sinha',900,40);
INSERT INTO school VALUES (7,'Model Convent School','CBSE','Private',1992,'Raipur','Chhattisgarh',9798123456,'modelconvent@gmail.com','Ramesh Yadav',1100,42);
INSERT INTO school VALUES (8,'Mount Carmel School','ICSE','Private',1988,'Kolkata','West Bengal',9934567890,'mountcarmel@gmail.com','Pallavi Sen',1600,70);
INSERT INTO school VALUES (9,'Silver Oak Academy','CBSE','Private',2003,'Pune','Maharashtra',9867543210,'silveroak@gmail.com','Amit Khandelwal',1300,52);
INSERT INTO school VALUES (10,'Lotus Valley School','CBSE','Private',2005,'Gurgaon','Haryana',9845632198,'lotusvalley@gmail.com','Shalini Mehra',1700,68);
INSERT INTO school VALUES (11,'Heritage School','ICSE','Private',1996,'Hyderabad','Telangana',9811122233,'heritage@gmail.com','Prakash Reddy',1500,62);
INSERT INTO school VALUES (12,'National High School','State Board','Public',1975,'Ranchi','Jharkhand',9876678899,'national@gmail.com','Shobha Nair',2000,85);
INSERT INTO school VALUES (13,'Carmel Convent','ICSE','Private',1980,'Gwalior','Madhya Pradesh',9955123456,'carmel@gmail.com','Rita Francis',1100,44);
INSERT INTO school VALUES (14,'Sacred Heart School','CBSE','Private',1987,'Amritsar','Punjab',9822567890,'sacredheart@gmail.com','Jasleen Kaur',900,38);
INSERT INTO school VALUES (15,'Sunbeam Academy','CBSE','Private',1993,'Varanasi','Uttar Pradesh',9877098765,'sunbeam@gmail.com','Manish Dubey',1400,60);


INSERT INTO school VALUES (3,'Sunrise Public School', 'CBSE', 'Private', 2002, 'Bhopal', 'Madhya Pradesh', 9823456712, 'sunrise@gmail.com', 'Neha Sharma', 1200, 45);





alter table School drop column contact_no;
select * from School ;

alter table School add column contact_no Real ;
select * from School ;

update School set contact = 765453456 where school_id=1;
select * from School;
alter table School add column contact Integer ;
select * from School;

desc School 


alter table School drop column contact_no;
select * from School ; 

insert into School (school_id,name,board,type,estd_year,city,state,email,principal_name,totalstudents,totalteachers,contact)values(3,'SDS','ICSE','private',5678,'Lalitpur','Uttarpradesh','sds@gmail.com','Ramdas',5654,566,45454545)
select * from School ;

INSERT INTO school (school_id, name, board, type, estd_year, city, state, email, principal_name, totalstudents, totalteachers, contact,revenue) 
VALUES
(4, 'Green Valley High', 'ICSE', 'Private', 2001, 'Indore', 'Madhya Pradesh', 'greenvalley@gmail.com', 'Rajesh Tiwari', 950, 38, 987654),
(5, 'St. Xavier High School', 'CBSE', 'Private', 1995, 'Lucknow', 'Uttar Pradesh', 'stxavier@gmail.com', 'Anita Verma', 1500, 60, 998877),
(6, 'Delhi Public School', 'CBSE', 'Private', 1985, 'Delhi', 'Delhi', 'dps@gmail.com', 'Vikas Kumar', 2500, 110, 985678),
(7, 'Little Flower School', 'ICSE', 'Private', 2000, 'Nagpur', 'Maharashtra', 'littleflower@gmail.com', 'Manju Gupta', 800, 35, 992255),
(8, 'Blue Bells High', 'State Board', 'Private', 1999, 'Jaipur', 'Rajasthan', 'bluebells@gmail.com', 'Rekha Sinha', 900, 40, 987645);
select * from School ;

alter table School add column revenue BIgInt;
select * from school ;

update School set revenue=670000000 where estd_year<=2000;
select * from school ;


	INSERT INTO school (school_id, name, board, type, estd_year, city, state, email, principal_name, totalstudents, totalteachers, contact, revenue) 
	VALUES
	(19, 'Heritage School', 'ICSE', 'Private', 1996, 'Hyderabad', 'Telangana', 'heritage@gmail.com', 'Prakash Reddy', 1500, 62, 981133, 160),
	(20, 'National High School', 'State Board', 'Public', 1975, 'Ranchi', 'Jharkhand', 'national@gmail.com', 'Shobha Nair', 2000, 85, 987899, 210),
	(21, 'Carmel Convent', 'ICSE', 'Private', 1980, 'Gwalior', 'Madhya Pradesh', 'carmel@gmail.com', 'Rita Francis', 1100, 44, 995516, 130),
	(22, 'Sacred Heart School', 'CBSE', 'Private', 1987, 'Amritsar', 'Punjab', 'sacredheart@gmail.com', 'Jasleen Kaur', 900, 38, 982890, 115),
	(23, 'Sunbeam Academy', 'CBSE', 'Private', 1993, 'Varanasi', 'Uttar Pradesh', 'sunbeam@gmail.com', 'Manish Dubey', 1400, 60, 987765, 145),
	(24, 'Cambridge International', 'CBSE', 'Private', 2007, 'Ahmedabad', 'Gujarat', 'cambridge@gmail.com', 'Jignesh Patel', 1800, 72, 97898, 190),
	(25, 'Bal Bharati School', 'CBSE', 'Public', 1982, 'Delhi', 'Delhi', 'balbharati@gmail.com', 'Ravi Bansal', 2300, 98, 965478, 250),
	(26, 'DAV Public School', 'CBSE', 'Public', 1986, 'Patiala', 'Punjab', 'dav@gmail.com', 'Sushma Malhotra', 1900, 75, 98234, 200),
	(27, 'Aryan International', 'CBSE', 'Private', 2008, 'Dehradun', 'Uttarakhand', 'aryan.ddn@gmail.com', 'Nidhi Chauhan', 800, 35, 98730, 90),
	(28, 'St. Marys School', 'ICSE', 'Private', 1990, 'Thiruvananthapuram', 'Kerala', 'stmarys.tvm@gmail.com', 'Anita Kurian', 1400, 58, 98450, 150);




update School set revenue = 560000000 where  estd_year>2000
select  * from School ;
INSERT INTO
	SCHOOL (
		SCHOOL_ID,
		NAME,
		BOARD,
		TYPE,
		ESTD_YEAR,
		CITY,
		STATE,
		EMAIL,
		PRINCIPAL_NAME,
		TOTALSTUDENTS,
		TOTALTEACHERS,
		CONTACT,
		REVENUE
	)
VALUES
	(
		69,
		'London Bridge Academy',
		'CBSE',
		'Private',
		2005,
		'London',
		'England',
		'londonbridge@gmail.com',
		'Emma Watson',
		1500,
		60,
		12345,
		180
	),
	(
		70,
		'Thames Valley School',
		'ICSE',
		'Private',
		1998,
		'London',
		'England',
		'thamesvalley@gmail.com',
		'Oliver Smith',
		1300,
		55,
		23456,
		160
	);

	select * from school;














