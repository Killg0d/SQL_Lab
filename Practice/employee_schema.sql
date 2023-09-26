create table department
(
    dep_id number primary key,
    dep_name varchar(20) constraint upper_cons CHECK (dep_name=upper(dep_name)),
    dep_location varchar(15) constraint dept_loc_cons check (dep_location in ('MNG','BNG','MUB','HYD','CHN','KOL'))
);

create table employees
(
    emp_id number primary key,
    emp_name varchar2(15),
    job_name varchar2(10) constraint JOB_Cons
        check(job_name in('MNGR','CLRK','CEO','SALES')),
    manager_id number,
    DATE_BIRTH DATE,
    hire_date DATE ,
    salary number(10,2),
    commission number(7,2),
    dep_id number references department(dep_id),
     FOREIGN KEY (manager_id) REFERENCES employees(emp_id),
    constraint hire_less_birth_cons check(hire_date>DATE_BIRTH)
);
create table salary_grade(
grade number primary key,
min_salary number,
max_salary number);

-- Inserting data into the "department" table
INSERT INTO department (dep_id, dep_name, dep_location)
VALUES (1001, 'FINANCE', 'MNG');

INSERT INTO department (dep_id, dep_name, dep_location)
VALUES (2001, 'AUDIT', 'MUB');

INSERT INTO department (dep_id, dep_name, dep_location)
VALUES (3001, 'MARKETING', 'KOL');

INSERT INTO department (dep_id, dep_name, dep_location)
VALUES (4001, 'PRODUCTION', 'BNG');

INSERT INTO employees (emp_id, emp_name, job_name, manager_id, hire_date, salary, commission, dep_id)
VALUES (68319, 'KAYLING', 'CLRK', NULL, TO_DATE('1991-11-18', 'YYYY-MM-DD'), 6000.00, NULL, 1001);

INSERT INTO employees (emp_id, emp_name, job_name, manager_id, hire_date, salary, commission, dep_id)
VALUES (66928, 'BLAZE', 'MNGR', 68319, TO_DATE('1991-05-01', 'YYYY-MM-DD'), 2750.00, NULL, 3001);

-- Inserting data into the "employees" table
-- Employee 67832
INSERT INTO employees (emp_id, emp_name, job_name, manager_id, hire_date, salary, commission, dep_id)
VALUES (67832, 'CLARE', 'MNGR', 68319, TO_DATE('1991-06-09', 'YYYY-MM-DD'), 2550.00, NULL, 1001);

-- Employee 65646
INSERT INTO employees (emp_id, emp_name, job_name, manager_id, hire_date, salary, commission, dep_id)
VALUES (65646, 'JONAS', 'MNGR', 68319, TO_DATE('1991-04-02', 'YYYY-MM-DD'), 2957.00, NULL, 2001);

-- Employee 67858
INSERT INTO employees (emp_id, emp_name, job_name, manager_id, hire_date, salary, commission, dep_id)
VALUES (67858, 'SCARLET', 'SALES', 65646, TO_DATE('1997-04-19', 'YYYY-MM-DD'), 3100.00, NULL, 2001);

-- Employee 69062
INSERT INTO employees (emp_id, emp_name, job_name, manager_id, hire_date, salary, commission, dep_id)
VALUES (69062, 'FRANK', 'SALES', 65646, TO_DATE('1991-12-03', 'YYYY-MM-DD'), 3100.00, NULL, 2001);

-- Employee 63679
INSERT INTO employees (emp_id, emp_name, job_name, manager_id, hire_date, salary, commission, dep_id)
VALUES (63679, 'SANDRINE', 'CLRK', 69062, TO_DATE('1990-12-18', 'YYYY-MM-DD'), 900.00, NULL, 2001);

-- Employee 64989
INSERT INTO employees (emp_id, emp_name, job_name, manager_id, hire_date, salary, commission, dep_id)
VALUES (64989, 'ADELYN', 'SALES', 66928, TO_DATE('1991-02-20', 'YYYY-MM-DD'), 1700.00, 400.00, 3001);

-- Employee 65271
INSERT INTO employees (emp_id, emp_name, job_name, manager_id, hire_date, salary, commission, dep_id)
VALUES (65271, 'WADE', 'SALES', 66928, TO_DATE('1991-02-22', 'YYYY-MM-DD'), 1350.00, 600.00, 3001);

-- Employee 66564
INSERT INTO employees (emp_id, emp_name, job_name, manager_id, hire_date, salary, commission, dep_id)
VALUES (66564, 'MADDEN', 'SALES', 66928, TO_DATE('1991-09-28', 'YYYY-MM-DD'), 1350.00, 1500.00, 3001);

-- Employee 68454
INSERT INTO employees (emp_id, emp_name, job_name, manager_id, hire_date, salary, commission, dep_id)
VALUES (68454, 'TUCKER', 'CEO', 66928, TO_DATE('1991-09-08', 'YYYY-MM-DD'), 1600.00, 0.00, 3001);

-- Employee 68736
INSERT INTO employees (emp_id, emp_name, job_name, manager_id, hire_date, salary, commission, dep_id)
VALUES (68736, 'ADNRES', 'CLRK', 67858, TO_DATE('1997-05-23', 'YYYY-MM-DD'), 1200.00, NULL, 2001);

-- Employee 69000
INSERT INTO employees (emp_id, emp_name, job_name, manager_id, hire_date, salary, commission, dep_id)
VALUES (69000, 'JULIUS', 'CLRK', 66928, TO_DATE('1991-12-03', 'YYYY-MM-DD'), 1050.00, NULL, 3001);

-- Employee 69324
INSERT INTO employees (emp_id, emp_name, job_name, manager_id, hire_date, salary, commission, dep_id)
VALUES (69324, 'MARKER', 'CLRK', 67832, TO_DATE('1992-01-23', 'YYYY-MM-DD'), 1400.00, NULL, 1001);


1. From the following table, write a SQL query to find the managers. Return complete information about the managers.

select * from employees e where emp_id IN (select emp_id from employees where e.emp_id=manager_id);

select * from employees where manager_id IN (SELECT emp_id from employees);


Pizza_house(HouseCode, StreetNo, City) 
Pizza_flavours(Itemcode, ItemName, Price) 
Pizza_Flavours_Avaialble(HouseCode, Itemcode) 
Pizza_Cust(Custid, CustName, Phone, StreetNo, City, Bonus_points) 
Pizza_Order(Orderid, Custid, Itemcode, Order date, Qty, Amount) 
i. Find the HouseCodes at which pizza items with price more than 500 available. 
ii. Add 10 bonus points to the customers who placed order for amount more than 1000 during Jan-2019 to May-2019. 
iii. Find all the Pizza Houses and available Item Names in the location where customer with name 'Ajay' lives. 
iv. List the name of customers who have placed highest total ordered amount during month of February 2021. 
v. Find the Item names for which total sales quantity is more than 1000 during the year 2018. 

CREATE TABLE Pizza_house (
    HouseCode VARCHAR(10) PRIMARY KEY,
    StreetNo VARCHAR(50),
    City VARCHAR(50)
);
CREATE TABLE Pizza_flavours (
    Itemcode VARCHAR(10) PRIMARY KEY,
    ItemName VARCHAR(100),
    Price DECIMAL(10, 2)
);
CREATE TABLE Pizza_Cust (
    Custid INT PRIMARY KEY,
    CustName VARCHAR(100),
    Phone VARCHAR(20),
    StreetNo VARCHAR(50),
    City VARCHAR(50),
    Bonus_points INT
);
CREATE TABLE Pizza_Order (
    Orderid INT PRIMARY KEY,
    Custid INT,
    Itemcode VARCHAR(10),
    Order_date DATE,
    Qty INT,
    Amount DECIMAL(10, 2),
    FOREIGN KEY (Custid) REFERENCES Pizza_Cust(Custid),
    FOREIGN KEY (Itemcode) REFERENCES Pizza_flavours(Itemcode)
);
