
insert into employees values(1,'2000-01-01','John', 'Doe','M', '2018-01-01');
insert into employees values(2,'2005-01-02','Jane', 'Jones','F', '2015-02-01');
insert into titles values(1,1,'Php developer', '2018-01-01', '2019-01-01');
insert into titles values(2,2,'Java Developer', '2015-02-01', '2019-03-03');
insert into departments values(1,'Human Resources');
insert into departments values(2,'Informational Tehnologies');
insert into dep_emp values(1,1,1,'2018-01-01','2019-01-01');
insert into dep_emp values(2,2,2,'2018-01-01','2019-01-01');
insert into dept_manager values(1,1,1,'2018-01-01','2019-01-01');
insert into nst.salaries values(1,1,"45000",'2018-01-01','2019-01-01','SS',null,1231.34);
insert into nst.salaries values(2,2,"35000",'2015-02-02','2017-03-03','NS',20,NULL);
insert into users(username,password,email) values('admin','admin','admin@gmail.com');
insert into authorities(username,authority) values('admin','admin');
insert into users(username,password,email) values('user','user','user@gmail.com');
insert into authorities(username,authority) values('user','user');
