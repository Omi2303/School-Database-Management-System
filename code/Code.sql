use educationsystem;

create table cours
(courseid varchar(10) primary key,
Cname   text, Ccordinator text,
);

students2
create table students2
(Student_id varchar(10) primary key,
Enroll varchar(20),
sname varchar(20),
Fathers_name varchar(20),
Email varchar(30),
Birthdate Date,
Phone_no varchar(10),
Mentor varchar(10)
);

Create table test
(test_no INT primary key,
testDate date,
test_type Text,
courseid varchar(10) FOREIGN KEY REFERENCES cours(courseid)
);
teachers2
create table teachers2
(Teach_id varchar(10) primary key,
Teacher_name varchar(20),
Email varchar(100),
Designation text,
takes_cource varchar(10),
Experience varchar(20),
Phone_No varchar(10),
salary int,
);

Create table Score
(test_no INT FOREIGN KEY REFERENCES test(test_no),
Avg_Score INT ,
Studentid varchar(10) FOREIGN KEY REFERENCES students(Studentid), 
courseid varchar(10) FOREIGN KEY REFERENCES cours(courseid)
);
inertions
insert into cours values('001cs',' Bachelor of Computer Science engineering','Ramesh Yadhav'); 
insert into cours values('002ce',' Bachelor of Computer engineering','Gaurav Sharma');
insert into cours values('003it',' Bachelor of Information Technology engineering','Yash Patel'); 
insert into cours values('004aiml',' Bachelor of Artificial Intellegence And Machine Learning engineering','Rahul Kumar'); 
insert into cours values('005civil',' Bachelor of Civil engineering','Keshav Garg'); 
insert into cours values('006mech',' Bachelor of Mechanical engineering','Ashish Goyal'); 
insert into students2 values('A101','004ailm','Aniket Sahu','Ajay Sahu','sahuaniket@gmail.com','06-05-2003','9853938451','T1');
 insert into students2 values('A102','004ailm','Aman kumar','Ravi Kumar','kunaraman23@gmail.com','09-08-2000','7593958729','T6');
insert into students2 values('A103','004ailm','Anushka Sharma','Ramesh Sharma','anushka45@gamil.com','23-APRIL-2001','9783557381','T4');
 insert into students2 values('C104','001cs','Resab Banerjee','Abhijit Banerjee','resab876@gmail.com','07-NOVEMBER-2002','7683920485','T5');
  insert into students2 values('C105','001cs','Sai kiran','Arun Kiran','kiran345@gmail.com','05-JANUARY-2004','8593205381','T8');
  insert into students2 values('C106','001cs','Sandeep Agarwal','Roshan Agarwal','sandeepagr231@gmail.com','28-JULY-2004','8674829174','T6');
  insert into students2 values('E107','002ce','Kashish Jaiswal','Mukesh Jaiwal','kashish@gmail.com','14-JUNE-2004','9341756841','T2');
  insert into students2 values('E108','002ce','Khushi Jain','Ashish Jain','Khushi@gmail.com','20-NOVEMBER-2000','8682940182','T7');
 insert into students2 values('E109','002ce','Keshav Anand','Raunak Anand','keshav@gmail.com','18-JUNE-2001','9341883452','T1');
  insert into students2 values('I110','003it','Rohit Kumar','Rajesh Kumar','rohit@gmail.com','23-AUGUST-2004','6309873458','T3');
  insert into students2 values('I111','003it','Shubham Raj','Abhay Raj','shubham@gmail.com','24-DECEMBER-2001','6306748329','T6');
  insert into students2 values('I112','003it','Aditya Singh','Ankit Singh','aditya23@gmail.com','11-JULY-2003','9341763454','T2');
  insert into students2 values('C113','005civil','Payal Dayal','Dinkar Dayal','payal@gmail.com','12-SEPTEMBER-2002','6309874563','T8');
  insert into students2 values('C114','005civil','Divyanshu Shah','Harshit Shah','divyanshu@gmail.com','14-JANUARY-2005','8797639114','T8');
  insert into students2 values('C115','005civil','Kartik Gupta','Kunal Gupta','kartik@gmail.com','25-OCTOBER-2001','9341679167','T6');
  insert into students2 values('M116','006mech','Mohit Mishra','Saket Mishra','mohit@gmail.com','23-AUGUST-2003','6305468900','T1');
  insert into students2 values('M117','006mech','Monika Bharti','Ajit Bharti','monika@gmail.com','17-MARCH-2003','8364775983','T5');
  insert into students2 values('M118','006mech','Varsha Bhatt','Dhrvu Bhatt','varsha@gmail.com','28-APRIL-2005','9341669911','T7');


insert into test values('01','11-AUGUST-2022','MTT ','001cs');
insert into test values('02','12-AUGUST-2022','MTT','002ce');
insert into test values('03','13-AUGUST-2022','MTT','003it');
insert into test values('04','14-AUGUST-2022','MTT','004aiml');
insert into test values('05','15-AUGUST-2022','MTT','005civil');
insert into test values('06','16-AUGUST-2022','MTT','006mech');
insert into test values('07','12-DECEMBER-2022','TEE','001cs');
insert into test values('08','14-DECEMBER-2022','TEE','002ce');
insert into test values('09','16-DECEMBER-2022','TEE','003it');
insert into test values('10','18-DECEMBER-2022','TEE','004aiml');
insert into test values('11','21-DECEMBER-2022','TEE','005civil');
insert into test values('12','23-DECEMBER-2022','TEE','006mech');
insert into teachers2 values('T1','Abhishek Rout','abhishek@gmail.com','Professor','006mech','13years','5627894567','95000');
insert into teachers2 values('T2','Ananya Gautam','ananya@gmail.com','Ass.Professor','004aiml','7years','6309874822','55000');
insert into teachers2 values('T3','Sunil Seth','sunil@gmail.com','Ass.Professor','002ce','6years','9341892799','38000');
insert into teachers2 values('T4','Manpreet Kaur','kaur@gmail.com','Professor','001cs','10years','7756249166','150000');
insert into teachers2 values('T5','Ravi Ranjan','ravir@gmail.com','Ass.Professor','003it','11years','7488163466','68000');
insert into teachers2 values('T6','Ayush Prakash','ayush89@gmail.com','Ass.Professor','001cs','5years','7739612311','40000');
insert into teachers2 values('T7','Akash Mahajan','akash@gmail.com','Professor','005civil','16years','6983716452','180000');
insert into teachers2 values('T8','Rishi Dubey','rishi@gmail.com','Ass.Professor','006mesh','9years','6305898221','90000');


insert into Score values('01',18,'C104','001cs');
insert into Score values('07',78,'C104','001cs');
insert into Score values('01',09,'C105','001cs');
insert into Score values('07',71,'C105','001cs');
insert into Score values('01',15,'C106','001cs');
insert into Score values('07',65,'C106','001cs');

insert into Score values('02',07,'E107','002ce');
insert into Score values('08',46,'E107','002ce');
insert into Score values('02',12,'E108','002ce');
insert into Score values('08',55,'E108','002ce');
insert into Score values('02',05,'E109','002ce');
insert into Score values('08',49,'E109','002ce');

insert into Score values('03',14,'I110','003it');
insert into Score values('09',33,'I110','003it');
insert into Score values('03',06,'I111','003it');
insert into Score values('09',59,'I111','003it');
insert into Score values('03',08,'I112','003it');
insert into Score values('09',91,'I112','003it');

insert into Score values('04',10,'A101','004aiml');
insert into Score values('10',65,'A101','004aiml');
insert into Score values('04',16,'A102','004aiml');
insert into Score values('10',58,'A102','004aiml');
insert into Score values('04',12,'A103','004aiml');
insert into Score values('10',85,'A103','004aiml');

insert into Score values('05',08,'C113','005civil');
insert into Score values('11',39,'C113','005civil');
insert into Score values('05',12,'C114','005civil');
insert into Score values('11',85,'C114','005civil');
insert into Score values('05',16,'C115','005civil');
insert into Score values('11',71,'C115','005civil');


insert into Score values('06',16,'M116','006mech');
insert into Score values('12',44,'M116','006mech');
insert into Score values('06',07,'M117','006mech');
insert into Score values('12',65,'M117','006mech');
insert into Score values('06',13,'M118','006mech');
insert into Score values('12',56,'M118','006mech');

Query
1) #FIND THE NAME OF ALL THE STUDENTS WHO SCORED MORE THAN 40 MARKS ?
SELECT Studentid FROM Score WHERE Avg_Score>40;

2) #FIND NAME OF STUDENTS WHOSE NO. STARTS WITH 9341
SELECT sname FROM  students WHERE Phone_No like '9341%';

3) #find the name and mailid of all the teachers who have designation as professor
select Teacher_name,Email from teachers where Designation like 'Professor';

4) #Set constraint on Phone_no to be unique.
ALTER TABLE students ADD UNIQUE(Phone_no);

5) #Display students name along with their Avg_score.
SELECT students.sname,students.Studentid from students INNER JOIN Score on students.Studentid=Score.Studentid;

6) #Set constraint on Studentid of students cannot be NULL.
ALTER TABLE students  alter column Studentid varchar(10) NOT NULL;

7) #Display information of all students who have scored less than 10 test.
Select Distinct Score.Avg_Score from Score
FULL join students on students.Studentid = Score. Studentid  
where Avg_Score<10;

8) #Find the name and score information of student with maximum Score 
Select Distinct students.sname,students.Studentid from students INNER join 
Score on students.Studentid = Score. Studentid WHERE Score.Avg_Score =
(SELECT max(Avg_Score) FROM Score);

9) #Find the name of all the students whose roll no. starts with 'I' or 'M';
select sname from students
where Studentid like 'I%'or Studentid like 'M%';

10) #display all infroma of the courses and there tests 
select * from cours full JOIN test ON cours.courseid = test.courseid;

select*from teachers;
11) #fing the names of all the teachers who have salary>50000 and experience=16years 
select Teacher_name from teachers where salary>50000 and Experience='16years';

12) #find the salary and name  of teacher which has minimum salary?
select Teacher_name,salary from teachers where salary=(select min(salary) from teachers);

select*from students;
13) #Find the names of all the students bron  between '2003-05-06' and '2004-08-23'?
select sname from students where Birthdate between '2003-05-06' and '2004-08-23';

14) #find the names and fathesr name of all teh students whose name start with a and m  in ascending order ?
select *from students
where sname like 'A%' or sname like 'M%' order by sname asc  ;

15) find the information of all students by arrange there avg score in descending ?
select* from Score
order by Avg_Score desc;
16)select* from Score
order by test_no asc;
17)select* from test 
where testDate between '2022-08-15' and '2022-12-18';


