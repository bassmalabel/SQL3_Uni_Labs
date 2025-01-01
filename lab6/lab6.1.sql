-- Creating a relational table emp_ind 
-- This table has two constraints one primary key and another unique
create table emp_ind (empno number constraint emp_ind_pk primary key, 
                      ename varchar (100) unique, 
                      nickname varchar2(100), 
                      email varchar2(100));
                      
-- Date insetion into the table imp_ind
insert into emp_ind (empno, ename, nickname,email) 
values (1, 'Ahmed smaer', 'Ahmed.samer', 'ahmed,samer@gmail.com');
 
insert into emp_ind (empno, ename, nickname,email) 
values (2, 'Rami Nader', 'Rami.nader', 'Rami.nader@gmail.com');

insert into emp_ind (empno, ename, nickname,email) 
values (3, 'Khaled Ali', 'Khaled.ali', 'Khaled.ali@gmail.com'); 

insert into emp_ind (empno, ename, nickname,email) 
values (4, 'Hassane Nabil', 'Hassane.nabil', 'Hassane.nabil@gmail.com'); 

-- Usually an implicit UNIQUE index is automatically created for columns with primary key and unique constraints 
-- The index will be named after the name of the constraint 

-- Display the indexes of to the table emp_ind (including unique and nonUnique indexes)
select * from USER_INDEXES 
where TABLE_NAME =  'EMP_IND';

-- Display the columns of the table emp_ind with the indexes associated to each one 
select * from USER_IND_COLUMNS
where table_name = 'EMP_IND';

-- This Select statement (query) uses Index because it contains a column that has a unique indexe (if you're on Oracle check the explain plan)
select * from EMP_IND
where empno = 1;

-- Same goes for this query, since ename has the unique constraint --> unique index is associated
select * from EMP_IND
where ename = 'Ahmed smaer';

-- However this select statement doesn't use index because there is no Unique Index associated to the column "nickname"
select * from EMP_IND
where nickname = 'Ahmed.samer';


-- Create an index for the column "nickname" of the table emp_ind 
create index EMP_IND_NICKNAME ON EMP_IND (NICKNAME);

-- Creat a uniqye index for the column 'email' (It's like adding the unique contraint to the email column)
create UNIQUE index EMP_IND_EMAIL ON EMP_IND (EMAIL);

-- this query won't work because we're trying to insert an email that already exists in the database
insert into emp_ind (empno, ename, nickname, email) 
values (5, 'bassmala', 'bassmala', 'Hassane.nabil@gmail.com'); 

-- Create an index on the column ename of the table emp_ind
create index EMP_IND_UP_ENAME on EMP_IND (UPPER(ENAME));
-- In this case, when we make a query that uses the upper function, the DBMS will be able to use the index for "ENAME" column
select * from EMP_IND 
where upper(ename) = 'AHMED SMAER';