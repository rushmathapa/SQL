create schema hms;
Create table department (
DeptID int primary key not null,
DeptName varchar (100)
);

Create Table patient(
PatientID int primary key not null,
FirstName varchar(50) not null,
LastName varchar(50) not null,
Birthday date not null,
Age int not null,
PhoneNumber int not null,
Address varchar(200) not null,
Gender varchar(10) not null,
Admission_Date date not null
);

-- Table Doctor:
Create Table Doctor(
DoctorID int Primary Key,
FirstName varchar(50) not null,
LastName varchar(50) not null ,
Birthday date not null,
Age int not null,
PhoneNumber int not null,
Address varchar(200) not null,
Gender varchar(10) not null,
deptId int,
Foreign key (DeptID) references department(DeptID)
);


-- APPOINTMENT TABLE (Many to many relationship between doctor and patient)
-- one patient makes many appointment and once doctor have many appointment 

create Table appointment(
appointmentID int primary key not null,
appointTime date,
patientID int,
doctorID int,
foreign key (patientID)references patient(patientID),
foreign key (doctorID)references doctor(doctorID)
);





-- Table Diagnosis:

Create Table Diagnosis(
Dia_id int not null,
Result varchar(100) not null,
PatientID int not null ,
Primary Key(Dia_id) ,
Foreign key(PatientID) references patient(patientID)
);

-- Table Staff:
Create Table Staff(
FirstName varchar(50) not null ,
LastName varchar(50) not null ,
StaffName varchar(50) null ,
Gender varchar(10) not null,
PhoneNumber int not null ,
Address varchar(200) not null,
StaffID int not null,
Primary key(staffID),
designation varchar(100),
Salary int(10)
);

Create Table Staff(
FirstName varchar(50),
LastName varchar(50),
StaffName varchar(50),
Gender varchar(10),
PhoneNumber int,
Address varchar(200),
designation varchar(100),
Salary int(10),
StaffID int,
DoctorID int not null, 
foreign  Key(DoctorID) references Doctor(DoctorID),
Primary Key(StaffID)

);
 
-- Table Bill:
Create table Bill(
Doctor_charge int not null,
room_charge int not null,
no_of_days int not null,
medecine_charge int not null,
billno int not null,
Primary Key(billno)
);
 
-- Table Payment:
Create Table Payment(
PaymentID int not null,
Status varchar(20),
Type varchar(20),
billno int not null,
Primary Key(PaymentID),
Foreign Key(billno) references bill(billno)
);
Create Table Room(
RoomType varchar(40) not null,
RoomFee int not null,
RoomID int not null,
staffid int not null,
Primary Key(roomID) ,
Foreign key(staffid) references staff(staffID)
);
 
-- Table Medicine:
Create Table Medicine(
MedicineID int not null,
Price int not null,
quantity int not null,
name varchar(200) not null,
patientID int not null,
primary key(medicineID),
Foreign key(patientID) references patient(patientID)
);
 
-- Table inpatient:
Create Table inpatient(
DischargeDate date not null,
InID int not null,
patientID int not null,
Primary key(InID),
Foreign key(patientID) references patient(patientID)
);
 
-- Table outpatient:
 
Create Table outpatient(
OutID int not null,
CheckBack Date not null,
patientID int not null,
Primary key(OutID) ,
Foreign key(patientID) references patient(patientID)
);
