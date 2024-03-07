create database ICICI_Bank_Management_System; 
  use ICICI_Bank_Management_System;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
/* Creating Table in database*/
CREATE TABLE Bank_Details(Branch_code INT PRIMARY KEY,Address VARCHAR(255),Department_id INT,Branch_name VARCHAR(255),State VARCHAR(250));

Create table Employees(Employee_id INT PRIMARY KEY,First_name VARCHAR(255),Department_id INT,Manager_id INT,Job_id VARCHAR(255),
Email VARCHAR(255),Hire_date Date,Phone_no VARCHAR(255), Salary INT);

CREATE TABLE Customer(Account_no INT PRIMARY KEY,First_name VARCHAR(255), City VARCHAR(255),Branch_code INT,Employee_id INT,
Phone_no VARCHAR(255), ATMNO INT UNIQUE KEY,Exp_date Date,Pin_No INT UNIQUE KEY);

Create table Department(Department_id INT PRIMARY KEY,Department_Name VARCHAR(255),Manager_id INT,Employee_id INT,Account_no INT);

Create table Job_Details(Job_ID VARCHAR(255) PRIMARY KEY,Department_id INT,Branch_code INT);

Create table Account_type(Account_no INT PRIMARY KEY,Type_Account VARCHAR(255),Manager_id INT,Department_Name VARCHAR(255),Opeaning_Date DATE);


select * from Bank_details;
INSERT INTO Bank_Details(Branch_code,Address,Department_id,Branch_name,State)
VALUES
(100,'Ngapur',1,'ICIC_N','Maharashtra'),
(101,'pune',1,'ICIC_P','Maharashtra'),
(102,'Mumbai',1,'ICIC_M','Maharashtra'),
(103,'delhi',1,'ICIC_D','DEL'),
(104,'Mumbai',1,'ICIC_M','Maharashtra'),
(105,'delhi',1,'ICIC_D','DEL'),
(106,'Ngapur',1,'ICIC_N','Maharashtra'),
(107,'pune',8,'ICIC_P','Maharashtra'),
(108,'Mumbai',8,'ICIC_M','Maharashtra'),
(109,'Ngapur',8,'ICIC_N','Maharashtra'),
(110,'pune',11,'ICIC_P','Maharashtra'),
(111,'Mumbai',11,'ICIC_M','Maharashtra'),
(112,'delhi',11,'ICIC_D','DEL'),
(113,'Ngapur',11,'ICIC_N','Maharashtra'),
(114,'pune',11,'ICIC_P','Maharashtra'),
(115,'Mumbai',16,'ICIC_M','Maharashtra'),
(116,'Ngapur',16,'ICIC_N','Maharashtra'),
(117,'pune',16,'ICIC_P','Maharashtra'),
(118,'Mumbai',19,'ICIC_M','Maharashtra'),
(119,'delhi',19,'ICIC_D','DEL'),
(120,'Pune',21,'ICIC_P','Maharashtra');

INSERT INTO Employees(Employee_id,First_name,Department_id,Manager_id,Job_id,Email,Hire_date,Phone_no,Salary)VALUES
(50,'Samuel',1,20,'ST_CLERK','SMCCAIN',str_to_date('23-Nov-07','%d-%b-%y'),'650.505.1876',3800),
(51,'Allan',8,21,'ST_CLERK','SSEWALL',str_to_date('30-Jan-04','%d-%b-%y'),'650.505.2876',3600),
(52,'Irene',11,22,'ST_CLERK','SSTILES',str_to_date('04-Mar-04','%d-%b-%y'),'650.505.3876',2900),
(53,'Kevin',16,23,'ST_CLERK','STOBIAS',str_to_date('01-Aug-04','%d-%b-%y'),'650.505.4876',2500),
(54,'Julia',19,24,'ST_CLERK','SVOLLMAN',str_to_date('10-Mar-05','%d-%b-%y'),'650.501.1876',4000),
(55,'Donald',21,25,'ST_CLERK','TFOX',str_to_date('15-Dec-05','%d-%b-%y'),'650.501.2876',3900),
(56,'Christopher',1,26,'ST_CLERK','TGATES',str_to_date('03-Nov-06','%d-%b-%y'),'650.501.3876',3200),
(57,'TJ',8,27,'ST_MAN','TJOLSON',str_to_date('11-Nov-05','%d-%b-%y'),'650.501.4876',2800),
(58,'Lisa',11,28,'ST_MAN','TRAJS',str_to_date('19-Mar-07','%d-%b-%y'),'650.507.9811',3100),
(59,'Karen',16,29,'ST_MAN','VJONES',str_to_date('24-Jan-08','%d-%b-%y'),'650.507.9822',3000),
(60,'Valli',19,30,'ST_MAN','VPATABAL',str_to_date('23-Feb-08','%d-%b-%y'),'650.507.9833',2600),
(61,'Joshua',21,31,'ST_MAN','WGIETZ',str_to_date('01-May-03','%d-%b-%y'),'650.507.9844',6400),
(62,'Randall',1,32,'FI_ACCOUNT','WSMITH',str_to_date('10-Oct-05','%d-%b-%y'),'515.123.4444',6200),
(63,'Hazel',8,33,'FI_ACCOUNT','WTAYLOR',str_to_date('16-Nov-07','%d-%b-%y'),'515.123.5555',11500),
(64,'Luis',11,34,'FI_ACCOUNT','JNAYER',str_to_date('16-Jul-05','%d-%b-%y'),'603.123.6666',10000),
(65,'Trenna',16,35,'FI_ACCOUNT','JPATEL',str_to_date('28-Sep-06','%d-%b-%y'),'515.123.7777',9600),
(66,'Den',19,36,'FI_ACCOUNT','JRUSSEL',str_to_date('14-Jan-07','%d-%b-%y'),'515.123.8888',7400),
(67,'Michael',21,37,'SA_REP','JSEO',str_to_date('08-Mar-08','%d-%b-%y'),'515.123.8080',7300),
(68,'John',1,38,'SA_REP','JTAYLOR',str_to_date('20-Aug-05','%d-%b-%y'),'011.44.1346.329268',6100),
(69,'Nandita',8,39,'SA_REP','JWHALEN',str_to_date('30-Oct-05','%d-%b-%y'),'011.44.1346.529268',11000),
(70,'Ismael',11,40,'SA_REP','KCHUNG',str_to_date('16-Feb-05','%d-%b-%y'),'011.44.1346.52',8800);

Select * from Employees;

INSERT INTO Customer(Account_no,First_name,City,Branch_code,Employee_id,Phone_no,ATMNO,Exp_date,Pin_no)VALUES
(12345,'Samuel','Ngapur',100,50,'650.505.1876',423705689,str_to_date('23-Apr-06','%d-%b-%y'),5689),
(67899,'Allan','pune',101,51,'650.505.2876',423568971,str_to_date('24-May-07','%d-%b-%y'),8971),
(10112,'Irene','Mumbai',102,52,'650.505.3876',423432253,str_to_date('04-Jan-08','%d-%b-%y'),12253),
(13145,'Kevin','delhi',103,53,'650.505.4876',423295535,str_to_date('24-Jan-06','%d-%b-%y'),15535),
(15167,'Julia','Mumbai',104,54,'650.501.1876',423158817,str_to_date('23-Feb-06','%d-%b-%y'),18817),
(18190,'Donald','delhi',105,55,'650.501.2876',423022099,str_to_date('21-Jun-07','%d-%b-%y'),22099),
(20210,'Christopher','Ngapur',106,56,'650.501.3876',422885381,str_to_date('03-Feb-08','%d-%b-%y'),25381),
(22230,'TJ','pune',107,57,'650.501.4876',422748663,str_to_date('27-Jan-04','%d-%b-%y'),28663),
(24250,'Lisa','Mumbai',108,58,'650.507.9811',422611945,str_to_date('20-Feb-05','%d-%b-%y'),31945),
(26270,'Karen','Ngapur',109,59,'650.507.9822',422475227,str_to_date('24-Jun-06','%d-%b-%y'),35227),
(28290,'Valli','pune',110,60,'650.507.9833',422338509,str_to_date('07-Feb-07','%d-%b-%y'),38509),
(30310,'Joshua','Mumbai',111,61,'650.507.9844',422201791,str_to_date('13-Jan-08','%d-%b-%y'),41791),
(32330,'Randall','delhi',112,62,'515.123.4444',422065073,str_to_date('17-Sep-03','%d-%b-%y'),45073),
(34350,'Hazel','Ngapur',113,63,'515.123.5555',421928355,str_to_date('17-Feb-04','%d-%b-%y'),48355),
(36370,'Luis','pune',114,64,'603.123.6666',421791637,str_to_date('17-Aug-05','%d-%b-%y'),51637),
(38390,'Trenna','Mumbai',115,65,'515.123.7777',421654919,str_to_date('07-Jun-02','%d-%b-%y'),54919),
(40410,'Den','Ngapur',116,66,'515.123.8888',421518201,str_to_date('07-Jun-02','%d-%b-%y'),58201),
(42430,'Michael','pune',117,67,'515.123.8080',421381483,str_to_date('07-Jun-02','%d-%b-%y'),61483),
(44450,'John','Mumbai',118,68,'011.44.1346.329268',421244765,str_to_date('07-Jun-02','%d-%b-%y'),64765),
(46470,'Nandita','delhi',119,69,'011.44.1346.529268',421108047,str_to_date('21-Apr-08','%d-%b-%y'),68047),
(48490,'Ismael','Pune',120,70,'011.44.1346.52',420971329,str_to_date('11-Mar-05','%d-%b-%y'),71329);

select * from customer;

INSERT INTO Department(Department_id,Department_name,Manager_id,Employee_id,Account_no)VALUES
(1,'Account',20,50,12345),
(8,'Loan',21,51,67899),
(11,'HR',22,52,10112),
(16,'Admin',23,53,13145),
(19,'Sales',24,54,15167),
(21,'Security',25,55,18190);
Select * from Department;

INSERT INTO Job_details(Job_id,Department_id,Branch_code)VALUES
('ST_CLERK',1,101),
('ST_MAN',8,108),
('FI_ACCOUNT',11,113),
('SA_REP',19,118);

INSERT INTO Account_Type (Account_no,Type_Account,Manager_id,Department_Name,Opeaning_Date)VALUES 
(12345,	'Saving',20,'Account', str_to_date('23-Apr-03','%d-%b-%y')),
(67899, 'loan',21,'Loan', str_to_date('24-May-04','%d-%b-%y')),
(10112,'Saving',22,'HR', str_to_date('04-Jan-06', '%d-%b-%y')),
(13145,'loan',23,'Admin', str_to_date('23-Apr-03','%d-%b-%y')),
(15167,'current',24,'Sales', str_to_date('24-May-04','%d-%b-%y')),
(18190,'business',25,'Security', str_to_date('04-Jan-06','%d-%b-%y')),
(20210,'loan',26,'Account', str_to_date('23-Apr-03','%d-%b-%y')),
(22230,'Saving',27,'Loan',str_to_date('24-May-04','%d-%b-%y')),
(24250,'loan',28,'HR',str_to_date('04-Jan-06','%d-%b-%y')),
(26270,'current',29,'Admin',str_to_date('23-Apr-03','%d-%b-%y')),
(28290,'business',30,'Sales',str_to_date('24-May-04','%d-%b-%y')),
(30310,'current',31,'Security',str_to_date('04-Jan-06','%d-%b-%y')),
(32330,'Saving',32,'Account',str_to_date('23-Apr-03','%d-%b-%y')),
(34350,'loan',33,'Loan',str_to_date('24-May-04','%d-%b-%y')),
(36370,'current',34,'HR',str_to_date('04-Jan-06','%d-%b-%y')),
(38390,'current',35,'Admin',str_to_date('23-Apr-03','%d-%b-%y')),
(40410,'business',36,'Sales',str_to_date('24-May-04','%d-%b-%y')),
(42430,'loan',37,'Security',str_to_date('04-Jan-06','%d-%b-%y')),
(44450,'Saving',38,'Account',str_to_date('23-Apr-03','%d-%b-%y')),
(46470,'loan',39,'Loan',str_to_date('24-May-04','%d-%b-%y')),
(48490,'Saving',40,'HR',str_to_date('04-Jan-06','%d-%b-%y'));

Select * from Account_Type;

Alter table bank_details add constraint FOREIGN KEY (Department_id) REFERENCES Department(Department_id);

Alter table employees add constraint FOREIGN KEY (Department_id) REFERENCES Department(Department_id);
Alter table employees add constraint FOREIGN KEY (Job_id) REFERENCES Job_details(Job_id);

alter table customer Add constraint FOREIGN KEY (Branch_code) REFERENCES Bank_Details(Branch_code);
alter table customer Add constraint FOREIGN KEY (Employee_id) REFERENCES Employees(Employee_id);

ALTER table Department add constraint foreign key(Account_no) REFERENCES Account_Type(Account_no);

ALTER table Job_details add constraint FOREIGN KEY (Department_id) REFERENCES Department(Department_id);
ALTER table Job_details add constraint FOREIGN KEY (Branch_code) REFERENCES Bank_Details(Branch_code);



-- Q1
-- Find an employee’s whose id is 52 and branch name is icic-p
SELECT ename.first_name, bname.branch_name
FROM employees AS ename
JOIN bank_details AS bname
WHERE employee_id = 52 AND branch_name = 'icic_p';

-- Q2
-- Count the number of employees working in the loan department and show its opening dates and address.
SELECT COUNT(Employee_id) AS employee_count
FROM employees
WHERE Department_id = (SELECT Department_id FROM Department WHERE Department_name = 'Loan');

-- Q3
-- Find details department name, address, branch code, dept _id, city of the account no 18190.
SELECT * 
FROM bank_details 
JOIN department ON bank_details.department_id = department.department_id 
WHERE account_no = 18190;

-- Q4
-- Find department id, department name, job id whose only work in Loan, HR, admin.
SELECT E.Department_id, D.Department_name, E.Job_id
FROM Employees AS E
JOIN Department AS D ON E.Department_id = D.Department_id
WHERE D.Department_name IN ('Loan', 'HR', 'Admin')
GROUP BY E.Department_id, D.Department_name, E.Job_id
HAVING COUNT(DISTINCT D.Department_name) = 1;


-- Q5
-- Find the type_account, state account number whose atm no 422748663.
SELECT a.type_account, a.account_no, s.state , c.ATMNO 
FROM account_type AS a ,bank_details AS s, customer AS c 
WHERE ATMNO=422748663;


-- Q6
-- Create a view with that show address, branch name, department name, first name. phone no
CREATE VIEW  icic_bank AS
SELECT address, branch_name, department_name, first_name 
FROM bank_details, department, employees 
WHERE bank_details.department_id= department.department_id= employees.department_id;

SELECT * FROM icic_bank;


-- Q7
-- Create view city, department name whose opening date is less than 24 May 04
CREATE VIEW openingDate AS 
SELECT city, department_name, Opeaning_Date 
FROM customer, account_type 
WHERE Opeaning_Date < '04-05-24';

SELECT * FROM openingDate;


-- Q8
-- Create view only job id for clerk, manager, an accountant with all detail and name it employee job_deatils
CREATE VIEW employeejobdetailse AS
SELECT *
FROM job_details
WHERE job_id IN ('st_clerk', 'st_man', 'fi_account');

SELECT * FROM employeejobdetailse;


-- Q9
-- In the job details change the atm pin 423295535 with 42321992
SET sql_safe_updates=0;

UPDATE customer SET ATMNO=423295535 WHERE ATMNO=42321992;


-- Q10
-- In the job, details change all sales account into admin and account type into saving
UPDATE account_type
SET Department_Name = 'admin', Type_Account = 'saving'
WHERE department_name = 'sales';







