6.1)List Job category and total salary paid for the each jobs category by the company.

SELECT JOB,SUM(SAL) FROM EMP GROUP BY JOB;
JOB         SUM(SAL)
--------- ----------
CEO            60000
GM             45000
A.MGR          50000
CLRK          180000
MGR            97000

6.2)Display name of the department from which maximum number of employees are 
working on project P1.


SELECT DNAME FROM DEPT INNER JOIN (SELECT DEPTNO FROM EMP GROUP BY DEPTNO HAVING COUNT(*)=(SELECT MAX(COUNT(EMPNO)) FROM EMP WHERE PRJ_ID='P1' GROUP BY DEPTNO)) ON DNO=DEPTNO;
DNAME
----------
RESEARCH


SELECT COUNT(D.DNAME),D.DNAME FROM DEPT D JOIN EMP E ON D.DNO=E.DEPTNO WHERE PRJ_ID='P1' GROUP BY D.DNAME;


6.3)Select name and job of employees working either in ‘Marketing’ or ‘Research’ 
department.


SELECT ENAME,JOB FROM EMP WHERE DEPTNO IN (SELECT DNO FROM DEPT WHERE DNAME IN('MARKETING','RESEARCH'));

ENAME      JOB
---------- ---------
MANOJ      CLRK
RAVIRAJ    CLRK
VISHWAS    MGR
VIJAY      CLRK
RAVI       MGR
RAJ        CLRK
RAJ        CLRK

7 rows selected.

6.4)Display name and salary of employees whose salary is greater than minimum salary of 
the company.

SELECT ENAME,SAL FROM EMP WHERE SAL>(SELECT MIN(SAL) FROM EMP);

ENAME             SAL
---------- ----------
RAVI            32000
RAVIRAJ         24000
RAGHU           45000
                60000
MANU            50000
MANOJ           65000
VISHWAS         30000
MAHESH          35000
VIJAY           40000
PUSHPA          28000


6.5)List all the departments having at least three employees.

SELECT DNO,DNAME FROM DEPT WHERE DNO=(SELECT DEPTNO FROM EMP GROUP BY DEPTNO HAVING COUNT(*)>3);
DNO DNAME
--- ----------
D1  MARKETING

6.6)Display the Deptno of the department that has highest average salary of the company.

SELECT DEPTNO FROM EMP WHERE SAL=(SELECT MAX(AVG(SAL)) FROM EMP GROUP BY DEPTNO);

DEP
---
D7

6.7)List the name of departments which are working on more than 1 project.

SELECT DISTINCT(D.DNAME)
FROM DEPT D INNER JOIN PROJ P on D.DNO = P.DNO
WHERE D.DNO IN (SELECT DNO from PROJ GROUP BY DNO HAVING COUNT(PRJ_NO) > 1);

SELECT DNAME FROM DEPT WHERE DNO IN (SELECT DNO FROM PROJ GROUP BY DNO HAVING COUNT(PRJ_NO)>1);

UPDATE EMP SET DATE_JOIN='16-OCT-02' WHERE EMPNO=125;

1 row updated.

SQL> UPDATE EMP SET DATE_JOIN='29-OCT-89' WHERE EMPNO=106;

1 row updated.

6.8) Display how many employees joined after 15th of all months.

SQL> SELECT COUNT(EMPNO) FROM EMP WHERE EXTRACT(DAY FROM DATE_JOIN) BETWEEN 15 AND 31;

COUNT(EMPNO)
------------
           2

6.9)Write a query to list Employee number, name and Job of the employees who work in 
the same job as ‘Mahesh’.

SELECT EMPNO,ENAME,JOB FROM EMP WHERE JOB=(SELECT JOB FROM EMP WHERE ENAME='MAHESH');

     EMPNO ENAME      JOB
---------- ---------- ---------
       106 VISHWAS    MGR
       123 MAHESH     MGR
       101 RAVI       MGR

6.10) Create a View EMP_PRJ_VW to display records of employees of ‘marketing’ 
department and project in which they are working.

CREATE VIEW EMP_PRJ_VW AS SELECT EMPNO,ENAME,JOB,SAL FROM EMP WHERE DEPTNO=(SELECT DNO FROM DEPT WHERE DNAME='MARKETING')

6.11) Display employee names and projects in which they are working using View 
EMP_PRJ_VW .

SELECT ENAME, PRJ_ID FROM EMP_PRJ_VW;

ENAME      PRJ_ID
---------- --------
RAVI       P1
RAVIRAJ    P3
RAJ        P1
RAJ        P3
VIJAY      P3

6.12) List out the number of employees joined in every month in ascending order

SELECT COUNT(EMPNO) FROM EMP GROUP BY EXTRACT(MONTH FROM DATE_JOIN);

COUNT(EMPNO)
------------
           1
           4
           8

6.13) Create an index on the columns (name and job) on EMP table.

CREATE INDEX ENAME_JOB_IDX ON EMP (ENAME,JOB);

