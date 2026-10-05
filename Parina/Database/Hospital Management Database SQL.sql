--Database Create--

Create Database Hospital_Management_App_DB;

--Table Create--

Create Table UserLogin
(
		UserID int Not Null,
		Username nvarchar(12) Not Null,
		Password nvarchar(8) Not Null

		Primary Key (UserID)
);

Create Table AdminLogin
(
		Username nvarchar(12) Not Null,
		Password nvarchar(8) Not Null
);

Create Table Doctor_Details
(
		DID int Not Null,
		Name varchar(60) Not Null,
		Specialization nvarchar(40) Not Null,
		Salary money Not Null,
		DOB date Not Null,
		MobNo numeric(10,0) Not Null,
		City varchar(40) Null

	    Primary Key (DID)
);

--DQL Query Select--

Select * From Doctor_Details;

Select * From AdminLogin;

Select * From UserLogin;

Select Name From Doctor_Details;
Select DOB From Doctor_Details;
Select Name, Specialization, MobNo, City From Doctor_Details;

--Insert query for AdminLogin--

Insert Into AdminLogin (Username, Password) Values ('Admin', 'a123');
Insert Into AdminLogin (Password, Username) Values ('H123', 'Harry');

--Insert query for UserLogin--

Insert Into UserLogin (UserID, Username, Password) Values (101, 'Staff', 's123');
Insert Into UserLogin (UserID, Username, Password) Values (201, 'Patient', 'p123');
Insert Into UserLogin (UserID, Username, Password) Values (802, 'Manager1', 'm111');
Insert Into UserLogin (UserID, Username, Password) Values (342, 'Manager2', 'm222');

Insert Into UserLogin (Password, UserID, Username) values ('w123', 301, 'Watchman');

Insert Into UserLogin Values (401, 'Peon', 'p111');

--Insert query for Doctor_Details--
Select * From Doctor_Details;

Insert Into Doctor_Details (DID, Name, Specialization, Salary, DOB, MobNo, City) Values (101, 'Dr. Amit', 'Cardiology', 80000, '11/4/1987', 9876543337, 'Pune');

Insert Into Doctor_Details (DID, Name, DOB, Salary, Specialization, MobNo) Values (201, 'Dr. Sneha', '1978-5-17', 100000, 'Neurologiest', 9766546335);

Insert Into Doctor_Details (DID, Name, Specialization, Salary, DOB, MobNo, City) Values (301, 'Dr. Rohit', 'Orthopedic', 40000, '6-Jan-2000', 9876542233, 'Mumbai');

Insert Into Doctor_Details Values (401, 'Dr. Pooja', 'Pediatrician', 55000, '5-May-1990', 9367584836, 'Delhi');
Insert Into Doctor_Details Values (501, 'Dr. Neha', 'ENT Specialist', 78000, '17-June-1890', 9375677737, ' ');
Insert Into Doctor_Details Values (601, 'Dr. Vijay', 'Dermatologiest', 37000, '6-July-1989', 4567839198, 'Satara');

Insert Into Doctor_Details Values (701, 'Dr. Harry', 'MBBS', 47000, '17-Mar-1978', 9367533337, 'Karad');
Insert Into Doctor_Details Values (801, 'Dr. Jack', 'BAMS', 55000, '16-Feb-2001', 8367288816, ' ');
Insert Into Doctor_Details Values (901, 'Dr. Richie', 'BDS', 67000, '23-Oct-1999', 7645894398, 'Patan');
Insert Into Doctor_Details Values (877, 'Dr. Leo', 'MS', 70000, '5-Sep-1989', 7857869466, 'Null');

--Where Clause--
Select * From Doctor_Details;

Select * From Doctor_Details Where Salary > 80000;
Select * From Doctor_Details Where Salary < 80000;

Select * From Doctor_Details Where Salary != 40000;
Select * From Doctor_Details Where Salary = 40000;

Select * From Doctor_Details Where Salary = 40000 or Salary = 70000;

--Between Clause--
Select * From Doctor_Details;

Select * From Doctor_Details Where Salary Between 40000 And 70000;
Select * From Doctor_Details Where Salary Between 45001 And 79999;

Select * From Doctor_Details Where Salary >= 40000 And Salary <= 70000;

Select * From Doctor_Details Where Salary > 40000 And Salary < 70000;

--Aggregative Function--
Select * From Doctor_Details;

Select Max(Salary) From Doctor_Details;

Select Min(Salary) From Doctor_Details;

Select Avg(Salary) From Doctor_Details;

Select Sum(Salary) From Doctor_Details;

Select Count(Salary) From Doctor_Details;

Select Count(*) From Doctor_Details;

Select Count(Name) From Doctor_Details;

--Order By--
Select * From Doctor_Details;

Select * From Doctor_Details Order By DID ASC;
Select * From Doctor_Details Order By DID DESC;

Select * From Doctor_Details Order By Salary ASC;
Select * From Doctor_Details Order By Salary DESC;

--Like Pattern Matching--
--For Name--
Select * From Doctor_Details;

Select * From Doctor_Details Where Name = 'Dr.Pooja';

Select * From Doctor_Details Where Name like 'D%';

Select * From Doctor_Details Where Name like '%A';

Select * From Doctor_Details Where Name like 'Dr%';

Select * From Doctor_Details Where Name like '%ha';

Select * From Doctor_Details Where Name like '%O%';

Select * From Doctor_Details Where Name like '_r%';

Select * From Doctor_Details Where Name like '%R_';

Select * From Doctor_Details Where Name like '%eh_';

--For Mobile Number--
Select * From Doctor_Details;

Select * From Doctor_Details Where MobNo = 9876543337;

Select * From Doctor_Details Where MobNo like '7%';

Select * From Doctor_Details Where MobNo like '%7';

Select * From Doctor_Details Where MobNo like '98%';

Select * From Doctor_Details Where MobNo like '%37';

Select * From Doctor_Details Where MobNo like '%7%';

Select * From Doctor_Details Where MobNo like '_8%';

Select * From Doctor_Details Where MobNo like '%3_';

Select * From Doctor_Details Where MobNo like '%33_';