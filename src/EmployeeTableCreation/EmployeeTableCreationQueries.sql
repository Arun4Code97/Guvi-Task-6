
-- To display all available databases
show databases;
-- To create a employee details database
create database employeedetails;
-- commanding mySQL server to use employeedetails database for creating tables inside of it.
use employeedetails;
-- creating table with all the required columns with specified datatype and null value  (emp,ename,job,mgr,hiredate,sal,comm,deptno,primary key,Engine(choosing InnoDB as it supports transactions,row level locking,foreign keys),character set(set of symbols and encoding technique),collate(set of rules for comparing characters))
CREATE TABLE empl (
   empno int NOT NULL,
   ename varchar(50) NOT NULL,
   job varchar(50) NOT NULL,
   mgr int DEFAULT NULL,
   hiredate date NOT NULL,
   sal decimal(6,2) NOT NULL,
   comm decimal(6,2) DEFAULT NULL,
   deptno int NOT NULL,
   PRIMARY KEY (empno)
 ) ENGINE=InnoDB
 DEFAULT CHARSET=utf8mb4
 COLLATE=utf8mb4_0900_ai_ci;

-- inserting multiple rows into a table empl in single query
insert into empl (empno,ename,job,mgr,hiredate,sal,comm,deptno) values
(8369,'SMITH','CLERK',8902,'1990-12-18',800.00,null,20),
(8499,'ANYA','SALESMAN',8698,'1991-02-20',1600,300,30) ,
(8521,'SETH','SALESMAN',8698,'1991-02-22',1250,500,30),
(8566,'MAHADEVAN','MANAGER',8839,'1991-04-02',2985,NULL,20),
(8698,'BINA','MANAGER',8839,'1991-05-01',2850,NULL,30),
(8882,'SHIVANSH','MANAGER',8839,'1991-06-09',2450,NULL,10),
(8888,'SCOTT','ANALYST',8566,'1992-12-09',3000,NULL,20),
(8839,'AMIR','PRESIDENT',NULL,'1991-11-18',5000,NULL,10),
(8844,'KULDEEP','SALESMAN',8698,'1991-09-08',1500,0,30);

-- To display all the records in the table to cross verify whether it is successfully created or not.
select * from empl ;
