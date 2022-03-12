
/* School management table linking all with a foreign key*/

Create table Course_Info(

Course_Id int not null,
Course_Name varchar(200) not null,
Course_Subject varchar(200) not null,

Constraint Course_Id_Pk
Primary key (Course_Id)

);

Create Table Student_Info(

Student_Id int not null,
First_Name varchar(200) not null,
Last_Name varchar(200) not null,
DOB Date not null,
Address varchar(100),
Course_Id int not null,

Constraint Student_Id_Pk
Primary key (Student_Id)

);


Create Table Instructors_Info(

Instructors_Id int not null,
First_Name varchar(100) not null,
Last_Name varchar(100) not null,
Address nvarchar(100),
Course_Id int Not null,

Constraint Instructors_Id_Pk
Primary key (Instructors_Id)

);


Alter Table Student_Info
Add Constraint Fk_Student_Course_Id 
Foreign Key (Course_Id) 
References Course_Info(Course_Id);

Alter Table Instructors_Info
Add Constraint Fk_Instructors_Course_Id 
Foreign Key (Course_Id) 
References Course_Info(Course_Id);

Insert Into Course_Info Values
('1001','Business','Accounting'),
('1002','Science','Biology'),
('1003','General Art','Government'),
('1004','Home Economics','Management In Living'),
('1005','Virtual Art','General Knowledge In Art');

insert Into [dbo].[Instructors_Info] values
(1, 'Harvy','Specter','NewYork',1001),
(2, 'Donna','Paulson','Califonia',1002),
(3, 'Mike','Ross','Vegas',1005),
(4, 'Rachel','Zane','LA',1004),
(5, 'Louise','Litt','Texas',1003);

Insert into [dbo].[Student_Info] values 
(101,'Robert','Zane','1971-09-16','Texas',1005),
(102,'Donna','Ross','1972-09-16','Texas',1005),
(103,'Samantha','Wheeler','1973-09-16','Texas',1005),
(104,'Alex','Williams','1974-09-16','Texas',1005),
(105,'Rachel','Beneth','1975-09-16','Texas',1005);

-----Truncate table[dbo].[Instructors_Info]-------

Select * from [dbo].[Course_Info]
Select * from [dbo].[Instructors_Info]
Select * from [dbo].[Student_Info]