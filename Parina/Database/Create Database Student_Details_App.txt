Create Database Student_Details_App_DB;

Create Table Student_Details(Roll_No int Not Null, Name varchar(80) Not Null, Qualification nvarchar(40) Not Null, Salary Money Not Null, DOB date Not Null,
Mob_No Numeric(10, 0) Not Null, Percentage float Not Null);

Select * From Student_Details;

Insert Into Student_Details(Roll_No, Name, Qualification, Salary, DOB, Mob_No, Percentage)Values(101, 'Virat', 'MCS', 40000, '1985/03/19', 7856348754, 90.37);

Insert Into Student_Details(Roll_No, Name, Qualification, Salary, DOB, Mob_No, Percentage)Values(102, 'Surya', 'MCA', 45000, '1979/04/18', 9852348652, 92.78);

Insert Into Student_Details(Roll_No, Name, Qualification, Salary, DOB, Mob_No, Percentage)Values(103, 'Rohit', 'MSC', 48000, '1981/10/23', 8852448638, 91.49);

Insert Into Student_Details(Roll_No, Name, Qualification, Salary, DOB, Mob_No, Percentage)Values(104, 'Hardik', 'BCS', 35000, '1890/08/10', 4747532808, 89.40);

Select * from Student_Details order by Roll_No ASC;

Insert Into Student_Details(Roll_No, Name, Qualification, Salary, DOB, Mob_No, Percentage)Values(105, 'Varun', 'BCA', 39000, '1895/11/20', 7532890532, 88.56);

Insert Into Student_Details Values(106, 'Harshad', 'BSC', 41000, '1891/10/05', 8356707542, 97.45);

Select * From Student_Details;

Select * from Student_Details order by Roll_No ASC;

Select * From Student_Details Where Salary > 40000;

Select * From Student_Details Where Salary < 40000;

Select * From Student_Details Where Salary != 40000;

Select * From Student_Details Where Salary = 40000;


