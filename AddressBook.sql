------UC-1Create Database--------------
create database Address_Book_Service_DB

------ UC 2: Create Table ------
create table Address_Book_Table
(FirstName varchar(100),
SecondName varchar(100),
Address varchar(250),
City varchar(100),
State varchar(100),
zip BigInt,
PhoneNumber BigInt,
Email varchar(200)
)


------ UC 3: Insert Values to Table ------
Insert into Address_Book_Table(FirstName,SecondName,Address,City,State,zip,PhoneNumber,Email) 
values('Harsh','Vardhan','645 Catherine Street','Bangalore','Karnataka',243001,9842905050,'harsh@gmail.com'),
('Ramesh','Kumar','836 Heritage Rd','Chennai','Tamil Nadu',134002,98402000,'Ramesh@gmail.com'),
('Anita','Yadav','19 Augusta Avenue','Lucknow','Uttar Pradesh',113201,87210505053,'anita@gmail.com')

select * from Address_Book_Table

------ UC 4: Ability to Edit Contact Person Based on their Name ------
--Edit Email based on Name--
Update Address_Book_Table
set Email='AnitaYadav@gmail.com'
where FirstName='Anita'

--Edit Address based on Name--
Update Address_Book_Table
set Address='836 Heritage Road'
where FirstName='Ramesh' and SecondName='Kumar'


------ UC 5: Ability to Delete Contact Person Based on their Name ------
delete 
from Address_Book_Table
where FirstName='Anita' and SecondName='Yadav'


------ UC 6: Ability to Retrieve Person belonging to a City or State ------

select * 
from Address_Book_Table
where City='Bangalore' or State='Karnataka'
