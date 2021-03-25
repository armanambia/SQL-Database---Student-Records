drop table Enrollment;
drop table Section;
drop table Prerequisite;
drop table Course;
drop table Minor;
drop table Student;
drop table Department;
drop table College_Degree;
drop table Professor;

CREATE TABLE Professor(
    SSN numeric(9) primary key,
    Sex enum('M','F'),
    Title enum ('Mr.', 'Mrs.', 'Ms.', 'Dr.'),
    Salary numeric(6),
    Full_Name varchar(30),
    Area_Code numeric(3),
    Telephone numeric(7),
    Street varchar(20),
    City varchar(20),
    State_Abr char(2),
    Zip char(5) 
);

Create Table College_Degree(
    ProfSSN numeric(9),
    Degree varchar(20),
    primary key(ProfSSN, Degree),
    foreign key (ProfSSN) references Professor(SSN)
);

Create Table Department(
    Dep_Number numeric(2) primary key,
    Dep_Name varchar(20),
    Office_Location varchar(20),
    Telephone numeric(10),
    PSSN numeric(9),
    foreign key (PSSN) references Professor(SSN)
);

Create Table Student(
    CWID numeric(9) primary key,
    Stu_Address varchar(40),
    Telephone numeric(10),
    Fname varchar(20),
    Lname varchar(20),
    DNumber numeric(2),
    foreign key (DNumber) references Department(Dep_Number)
);

Create Table Minor(
    MDnumber numeric(2),
    MCWID numeric(9),
    primary key(MDnumber, MCWID),
    foreign key (MDnumber) references Department(Dep_Number),
    foreign key (MCWID) references Student(CWID)
);

Create Table Course(
    Crs_Number varchar(10) primary key,
    Title varchar(20),
    Textbook varchar(20),
    Units numeric(1),
    DNumber numeric(2),
    foreign key (DNumber) references Department(Dep_Number)
);

create Table Prerequisite(
    CourseNum varchar(10),
    PreReqNum varchar(10),
    primary key(CourseNum, PreReqNum),
    foreign key (CourseNum) references Course(Crs_Number),
    foreign key (PreReqNum) references Course(Crs_Number)
);

Create Table Section(
    Sec_Number numeric(2),
    CourseNum varchar(10),
    ProfSSN numeric(9),
    Begin_Time varchar(20),
    End_Time varchar(20),
    Meeting_Days varchar(20),
    Num_Seats numeric(2),
    Classroom varchar(20),
    primary key(Sec_Number, CourseNum),
    foreign key (CourseNum) references Course(Crs_Number),
    foreign key (ProfSSN) references Professor(SSN)
);

Create Table Enrollment(
    SecNumber numeric(2),
    SCWID numeric(9),
    Grade varchar(2),
    primary key (SecNumber, SCWID),
    foreign key (SecNumber) references Section(Sec_Number),
    foreign key (SCWID) references Student(CWID)
);