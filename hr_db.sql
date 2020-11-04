
DROP DATABASE IF EXISTS hr_dev_db;

CREATE DATABASE hr_dev_db;
USE hr_dev_db;
 
CREATE TABLE employees (
  empno INT NOT NULL,
  ename VARCHAR(100) DEFAULT NULL,
  job VARCHAR(100) DEFAULT NULL,
  mgr INT DEFAULT NULL,
  hiredate DATE DEFAULT NULL,
  sal DECIMAL(7,2) DEFAULT NULL,
  comm DECIMAL(7,2) DEFAULT NULL,
  deptno INT DEFAULT NULL
);

CREATE TABLE departments  (
  deptno INT NOT NULL,
  dname VARCHAR(100) DEFAULT NULL,
  loc VARCHAR(100) DEFAULT NULL
);

INSERT INTO employees VALUES ('7369','SMITH','CLERK','7902','1980-12-17','800.00',NULL,'20');
INSERT INTO employees VALUES ('7499','ALLEN','SALESMAN','7698','1981-02-20','1600.00','300.00','30');
INSERT INTO employees VALUES ('7521','WARD','SALESMAN','7698','1981-02-22','1250.00','500.00','30');
INSERT INTO employees VALUES ('7566','JONES','MANAGER','7839','1981-04-02','2975.00',NULL,'20');
INSERT INTO employees VALUES ('7654','MARTIN','SALESMAN','7698','1981-09-28','1250.00','1400.00','30');
INSERT INTO employees VALUES ('7698','BLAKE','MANAGER','7839','1981-05-01','2850.00',NULL,'30');
INSERT INTO employees VALUES ('7782','CLARK','MANAGER','7839','1981-06-09','2450.00',NULL,'10');
INSERT INTO employees VALUES ('7788','SCOTT','ANALYST','7566','1982-12-09','3000.00',NULL,'20');
INSERT INTO employees VALUES ('7839','KING','PRESIDENT',NULL,'1981-11-17','5000.00',NULL,'10');
INSERT INTO employees VALUES ('7844','TURNER','SALESMAN','7698','1981-09-08','1500.00','0.00','30');
INSERT INTO employees VALUES ('7876','ADAMS','CLERK','7788','1983-01-12','1100.00',NULL,'20');
INSERT INTO employees VALUES ('7900','JAMES','CLERK','7698','1981-12-03','950.00',NULL,'30');
INSERT INTO employees VALUES ('7902','FORD','ANALYST','7566','1981-12-03','3000.00',NULL,'20');
INSERT INTO employees VALUES ('7934','MILLER','CLERK','7782','1982-01-23','1300.00',NULL,'10');

INSERT INTO departments  VALUES ('10','ACCOUNTING','NEW YORK');
INSERT INTO departments  VALUES ('20','RESEARCH','DALLAS');
INSERT INTO departments  VALUES ('30','SALES','CHICAGO');
INSERT INTO departments  VALUES ('40','OPERATIONS','BOSTON');


ALTER TABLE employees 
ADD CONSTRAINT pk_employees 
PRIMARY KEY (empno);

ALTER TABLE departments  
ADD CONSTRAINT pk_departments  
PRIMARY KEY (deptno);


ALTER TABLE employees 
ADD constraint fk_deptno foreign key (deptno) references departments (deptno);



-- *****************


DROP DATABASE IF EXISTS hr_qa_db;

CREATE DATABASE hr_qa_db;
USE hr_qa_db;

CREATE TABLE employees (
  empno INT NOT NULL,
  ename VARCHAR(100) DEFAULT NULL,
  job VARCHAR(100) DEFAULT NULL,
  mgr INT DEFAULT NULL,
  hiredate DATE DEFAULT NULL,
  sal DECIMAL(7,2) DEFAULT NULL,
  comm DECIMAL(7,2) DEFAULT NULL,
  deptno INT DEFAULT NULL
);

CREATE TABLE departments  (
  deptno INT NOT NULL,
  dname VARCHAR(100) DEFAULT NULL,
  loc VARCHAR(100) DEFAULT NULL
);

INSERT INTO employees VALUES ('7369','SMITH','CLERK','7902','1980-12-17','800.00',NULL,'20');
INSERT INTO employees VALUES ('7499','ALLEN','SALESMAN','7698','1981-02-20','1600.00','300.00','30');
INSERT INTO employees VALUES ('7521','WARD','SALESMAN','7698','1981-02-22','1250.00','500.00','30');
INSERT INTO employees VALUES ('7566','JONES','MANAGER','7839','1981-04-02','2975.00',NULL,'20');
INSERT INTO employees VALUES ('7654','MARTIN','SALESMAN','7698','1981-09-28','1250.00','1400.00','30');
INSERT INTO employees VALUES ('7698','BLAKE','MANAGER','7839','1981-05-01','2850.00',NULL,'30');
INSERT INTO employees VALUES ('7782','CLARK','MANAGER','7839','1981-06-09','2450.00',NULL,'10');
INSERT INTO employees VALUES ('7788','SCOTT','ANALYST','7566','1982-12-09','3000.00',NULL,'20');
INSERT INTO employees VALUES ('7839','KING','PRESIDENT',NULL,'1981-11-17','5000.00',NULL,'10');
INSERT INTO employees VALUES ('7844','TURNER','SALESMAN','7698','1981-09-08','1500.00','0.00','30');
INSERT INTO employees VALUES ('7876','ADAMS','CLERK','7788','1983-01-12','1100.00',NULL,'20');
INSERT INTO employees VALUES ('7900','JAMES','CLERK','7698','1981-12-03','950.00',NULL,'30');
INSERT INTO employees VALUES ('7902','FORD','ANALYST','7566','1981-12-03','3000.00',NULL,'20');
INSERT INTO employees VALUES ('7934','MILLER','CLERK','7782','1982-01-23','1300.00',NULL,'10');

INSERT INTO departments  VALUES ('10','ACCOUNTING','NEW YORK');
INSERT INTO departments  VALUES ('20','RESEARCH','DALLAS');
INSERT INTO departments  VALUES ('30','SALES','CHICAGO');
INSERT INTO departments  VALUES ('40','OPERATIONS','BOSTON');


ALTER TABLE employees 
ADD CONSTRAINT pk_employees 
PRIMARY KEY (empno);

ALTER TABLE departments  
ADD CONSTRAINT pk_departments  
PRIMARY KEY (deptno);


ALTER TABLE employees 
ADD constraint fk_deptno foreign key (deptno) references departments (deptno);


-- ***********************************


DROP DATABASE IF EXISTS hr_prod_db;

CREATE DATABASE hr_prod_db;
USE hr_prod_db;

CREATE TABLE employees (
  empno INT NOT NULL,
  ename VARCHAR(100) DEFAULT NULL,
  job VARCHAR(100) DEFAULT NULL,
  mgr INT DEFAULT NULL,
  hiredate DATE DEFAULT NULL,
  sal DECIMAL(7,2) DEFAULT NULL,
  comm DECIMAL(7,2) DEFAULT NULL,
  deptno INT DEFAULT NULL
);

CREATE TABLE departments  (
  deptno INT NOT NULL,
  dname VARCHAR(100) DEFAULT NULL,
  loc VARCHAR(100) DEFAULT NULL
);

INSERT INTO employees VALUES ('7369','SMITH','CLERK','7902','1980-12-17','800.00',NULL,'20');
INSERT INTO employees VALUES ('7499','ALLEN','SALESMAN','7698','1981-02-20','1600.00','300.00','30');
INSERT INTO employees VALUES ('7521','WARD','SALESMAN','7698','1981-02-22','1250.00','500.00','30');
INSERT INTO employees VALUES ('7566','JONES','MANAGER','7839','1981-04-02','2975.00',NULL,'20');
INSERT INTO employees VALUES ('7654','MARTIN','SALESMAN','7698','1981-09-28','1250.00','1400.00','30');
INSERT INTO employees VALUES ('7698','BLAKE','MANAGER','7839','1981-05-01','2850.00',NULL,'30');
INSERT INTO employees VALUES ('7782','CLARK','MANAGER','7839','1981-06-09','2450.00',NULL,'10');
INSERT INTO employees VALUES ('7788','SCOTT','ANALYST','7566','1982-12-09','3000.00',NULL,'20');
INSERT INTO employees VALUES ('7839','KING','PRESIDENT',NULL,'1981-11-17','5000.00',NULL,'10');
INSERT INTO employees VALUES ('7844','TURNER','SALESMAN','7698','1981-09-08','1500.00','0.00','30');
INSERT INTO employees VALUES ('7876','ADAMS','CLERK','7788','1983-01-12','1100.00',NULL,'20');
INSERT INTO employees VALUES ('7900','JAMES','CLERK','7698','1981-12-03','950.00',NULL,'30');
INSERT INTO employees VALUES ('7902','FORD','ANALYST','7566','1981-12-03','3000.00',NULL,'20');
INSERT INTO employees VALUES ('7934','MILLER','CLERK','7782','1982-01-23','1300.00',NULL,'10');

INSERT INTO departments  VALUES ('10','ACCOUNTING','NEW YORK');
INSERT INTO departments  VALUES ('20','RESEARCH','DALLAS');
INSERT INTO departments  VALUES ('30','SALES','CHICAGO');
INSERT INTO departments  VALUES ('40','OPERATIONS','BOSTON');


ALTER TABLE employees 
ADD CONSTRAINT pk_employees 
PRIMARY KEY (empno);

ALTER TABLE departments  
ADD CONSTRAINT pk_departments  
PRIMARY KEY (deptno);


ALTER TABLE employees 
ADD constraint fk_deptno foreign key (deptno) references departments (deptno);


COMMIT;







