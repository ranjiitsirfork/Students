Create Database HOSPITAL;

--use Database--
use HOSPITAL;

--Create Table--

CREATE TABLE Doctor
(
	DoctorID INT PRIMARY KEY,
	DoctorName VARCHAR(50),
	Specialization VARCHAR(50),
	Salary DECIMAL(10,2),
	DeptID INT,

	FOREIGN KEY(DeptID)
	REFERENCES Department(DeptID)
);

CREATE TABLE Patient
(
	PatientID INT PRIMARY KEY,
	PatientName VARCHAR(50),
	Age INT,
	City VARCHAR(50),
	DoctorID INT,

	FOREIGN KEY(DoctorID)
	REFERENCES Doctor(DoctorID)
);

CREATE TABLE Department
(
	DeptID INT PRIMARY KEY,
	DeptName VARCHAR(50),
);

CREATE TABLE Nurse
(
	NurseID INT PRIMARY KEY,
	NurseName VARCHAR(50),
	ShiftTime VARCHAR(50),
	DoctorID INT,

	FOREIGN KEY(DeptID)
	REFERENCES Department(DeptID)
);

CREATE TABLE Medicine
(
	MedicineID INT PRIMARY KEY,
	MedicineName VARCHAR(50),
	Price INT,
	DoctorID INT,

	FOREIGN KEY(PatientID)
	REFERENCES Patient(PatientID)
);

--Insert Commands--

INSERT INTO Department VALUES
(1, 'Cardiology'),
(2, 'Neurology'),
(3, 'Orthopedic'),
(4, 'Pediatrics'),
(5, 'ENT'),
(6, 'Dermatology');

INSERT INTO Doctor VALUES
(101, 'Dr. Amit', 'Cardiology', 80000, 1),
(102, 'Dr. Sneha', 'Neurologiest', 85000, 2),
(103, 'Dr. Rohit', 'Orthopedic', 75000, 3),
(104, 'Dr. Pooja', 'Pediatrician', 70000, 4),
(105, 'Dr. Neha', 'ENT Specialist', 65000, 5),
(106, 'Dr. Vijay', 'Dermatologiest', 72000, 6);

INSERT INTO Patient VALUES
(1, 'Rahul', 25, 'Pune', 101),
(2, 'Priya', 30, 'Mumbai', 102),
(3, 'Aakash', 25, 'Pune', 103),
(4, 'Snehal', 25, 'Pune', 104),
(5, 'Om', 25, 'Pune', 105),
(6, 'Tejas', 25, 'Pune', 106);

INSERT INTO Nurse VALUES
(1, 'Anjali', 'Morning', 101),
(2, 'Pooja', 'Night', 102),
(3, 'Sneha', 'Evening', 103),
(4, 'Ritika', 'Morning', 104),
(5, 'Kajal', 'Night', 105),
(6, 'Janavi', 'Evening', 106);

INSERT INTO Medicine VALUES
(1, 'Paracetamol', 50, 101),
(2, 'Amoxicillin', 120, 102),
(3, 'Dolo 650', 40, 103), 
(4, 'Insulin', 500, 104),
(5, 'Metformin', 50, 105), 
(6, 'Vitamin C', 90, 106);

--where clause--
select * from Patient where PatientName like '%h';

select * from Patient where PatientName like 'T%';

select * from Patient where PatientName like '%R%';

ALTER TABLE Patient
ADD RoomNo INT;

UPDATE Patient
SET RoomNo = 101
WHERE PatientID = 1;

UPDATE Patient
SET RoomNo = 102
WHERE PatientID = 2;

UPDATE Patient
SET RoomNo = 103
WHERE PatientID = 3;

UPDATE Patient
SET RoomNo = 104
WHERE PatientID = 4;

UPDATE Patient
SET RoomNo = 105
WHERE PatientID = 5;

UPDATE Patient
SET RoomNo = 106
WHERE PatientID = 6;

UPDATE Patient
SET RoomNo = 107
WHERE PatientID = 7;

UPDATE Patient
SET RoomNo = 108
WHERE PatientID = 8;




















Select * from Department;

Select * from Doctor;

Select * from Nurse;

Select * from Patient;

Select * from Medicine;
