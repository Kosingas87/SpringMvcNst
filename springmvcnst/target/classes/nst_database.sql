Create database nst;
DROP TABLE IF EXISTS departments;                     
CREATE TABLE departments (
    dept_id       INT  PRIMARY KEY   auto_increment  ,
    dept_name   VARCHAR(40)     NOT NULL

);
DROP TABLE IF EXISTS employees; 
CREATE TABLE employees (
    emp_id      INT  PRIMARY KEY   auto_increment   ,
    birth_date  DATE            NOT NULL,
    first_name  VARCHAR(20)     NOT NULL,
    last_name  VARCHAR(20)     NOT NULL,
	gender      VARCHAR(2) NOT NULL CHECK (gender IN('M', 'F')),    
    hire_date   DATE            NOT NULL
   );
   DROP TABLE IF EXISTS dep_emp; 
CREATE TABLE dep_emp (
   dept_emp_id INT  PRIMARY KEY   auto_increment  ,
   emp_id       INT    NOT NULL,
   dept_id     INT         NOT NULL,
   from_date    DATE            NOT NULL,
   to_date      DATE           DEFAULT NULL,
     CONSTRAINT FK_DeptEmp1 FOREIGN KEY (emp_id)
   REFERENCES employees(emp_id) ON DELETE CASCADE on update Cascade,
CONSTRAINT FK_DeptEmp2 FOREIGN KEY (dept_id)
   REFERENCES departments (dept_id) ON DELETE CASCADE on update Cascade
); 
DROP TABLE IF EXISTS  dept_manager; 
CREATE TABLE dept_manager (
   dept_manager_id INT  PRIMARY KEY   auto_increment  ,
   emp_id      INT    NOT NULL,
   dept_id      INT         NOT NULL,
   from_date    DATE            NOT NULL,
   to_date      DATE            DEFAULT NULL,
     CONSTRAINT FK_DeptManager1 FOREIGN KEY (emp_id)
   REFERENCES employees(emp_id) ON DELETE CASCADE,
CONSTRAINT FK_DeptManager2 FOREIGN KEY (dept_id)
   REFERENCES departments (dept_id) ON DELETE CASCADE on update Cascade
   ); 
DROP TABLE IF EXISTS  salaries; 
   CREATE TABLE salaries (
   salaries_id INT  PRIMARY KEY  auto_increment ,
   emp_id       INT    NOT NULL,
   salary      VARCHAR(50)     NOT NULL,
    from_date   DATE            NOT NULL,
    to_date     DATE  DEFAULT NULL,
	type         CHAR(2) DEFAULT NULL,
    bonus FLOAT(10) DEFAULT NULL,
    commision   FLOAT(2) DEFAULT NULL,
     CONSTRAINT FK_Salary1 FOREIGN KEY (emp_id)
   REFERENCES employees(emp_id) ON DELETE CASCADE on update Cascade
    
); 
DROP TABLE IF EXISTS  titles; 
CREATE TABLE titles (
   titles_id INT  PRIMARY KEY   auto_increment ,
   emp_id       INT    NOT NULL,
   title       VARCHAR(50)     NOT NULL,
    from_date   DATE            NOT NULL,
    to_date     DATE  DEFAULT NULL,
     CONSTRAINT FK_Title1 FOREIGN KEY (emp_id)
   REFERENCES employees(emp_id) ON DELETE CASCADE on update Cascade
); 
create table users(
  username varchar(60) primary key not null,
  password varchar(80) not null,
  enabled int default 1  ,
  email varchar(60)
  

);
create table authorities(
  username varchar(60) primary key not null,
  authority varchar(45)  
);
