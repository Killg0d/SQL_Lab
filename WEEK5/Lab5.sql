5.1)
SELECT MIN(SAL) MIN_SAL,MAX(SAL) AS MAX_SAL, AVG(SAL) AS AVG_SAL,SUM(SAL) AS TOTAL_SAL FROM EMP;


   MIN_SAL    MAX_SAL    AVG_SAL  TOTAL_SAL
---------- ---------- ---------- ----------
     23000      65000 39272.7273     432000

5.2)	 
SELECT PRJ_NAME FROM PROJ, DEPT WHERE DNAME='MARKETING' AND PROJ.DNO=DEPT.DNO;

PRJ_NAME
----------

APP_DEV
5.3)
SELECT UPPER(ENAME) FROM EMP;

UPPER(ENAM
----------
RAVI
RAVIRAJ
RAGHU

RAJ
RAJ
MANU
MANOJ
VISHWAS
MAHESH
VIJAY

UPPER(ENAM
----------
PUSHPA
KISHORE

13 rows selected.

SELECT LOWER(ENAME) FROM EMP;

LOWER(ENAM
----------
ravi
raviraj
raghu

raj
raj
manu
manoj
vishwas
mahesh
vijay

LOWER(ENAM
----------
pushpa
kishore

13 rows selected.

SELECT INITCAP(ENAME) FROM EMP;
INITCAP(EN
----------
Ravi
Raviraj
Raghu

Raj
Raj
Manu
Manoj
Vishwas
Mahesh
Vijay

INITCAP(EN
----------
Pushpa
Kishore

13 rows selected.

SELECT LENGTH(ENAME) FROM EMP;
LENGTH(ENAME)
-------------
            4
            7
            5

            3
            3
            4
            5
            7
            6
            5

LENGTH(ENAME)
-------------
            6
            7

13 rows selected.

SELECT SUBSTR(ENAME,2,3) FROM EMP;

SUBSTR(ENAME
------------
AVI
AVI
AGH

AJ
AJ
ANU
ANO
ISH
AHE
IJA

SUBSTR(ENAME
------------
USH
ISH

13 rows selected.

5.4)
SELECT ENAME FROM EMP WHERE MGRID=(SELECT EMPNO FROM EMP WHERE ENAME='RAGHU');
ENAME
----------
RAVI
RAJ
RAJ
VISHWAS
MAHESH
VIJAY

6 rows selected.


5.5)

SELECT DNAME,MIN(SAL) FROM EMP,DEPT WHERE EMP.DEPTNO=DEPT.DNO GROUP BY DNAME ;


DNAME        MIN(SAL)
---------- ----------
RESEARCH        30000
FINANCE         23000
ACCOUNTS        28000
HR              50000
MARKETING       24000
IT              35000

6 rows selected.


5.6)
SELECT COUNT(EMPNO),DNAME FROM EMP,DEPT WHERE EMP.DEPTNO=DEPT.DNO GROUP BY DNAME;

COUNT(EMPNO) DNAME
------------ ----------
           2 RESEARCH
           1 FINANCE
           1 ACCOUNTS
           1 HR
           5 MARKETING
           1 IT

6 rows selected.


5.7)
SELECT * FROM EMP WHERE CURRENT_DATE-DATE_JOIN>5;

     EMPNO ENAME      JOB            MGRID DATE_BIRT        SAL       COMM DEP
---------- ---------- --------- ---------- --------- ---------- ---------- ---
DATE_JOIN PRJ_ID
--------- --------
       101 RAVI       MGR              111 10-OCT-85      32000
  D1
02-OCT-01 P1

       102 RAVIRAJ    CLRK             106 10-DEC-80      24000       1000 D1
12-NOV-00 P3

       111 RAGHU      GM               150 10-DEC-74      45000      15000
03-DEC-85


     EMPNO ENAME      JOB            MGRID DATE_BIRT        SAL       COMM DEP
---------- ---------- --------- ---------- --------- ---------- ---------- ---
DATE_JOIN PRJ_ID
--------- --------
       150            CEO                  10-DEC-70      60000      30000
03-DEC-90

       170 RAJ        CLRK             111 10-DEC-80                  1000 D1
03-DEC-85 P1

       171 RAJ        CLRK             111 02-OCT-80                  1000 D1
02-OCT-02 P3


     EMPNO ENAME      JOB            MGRID DATE_BIRT        SAL       COMM DEP
---------- ---------- --------- ---------- --------- ---------- ---------- ---
DATE_JOIN PRJ_ID
--------- --------
       125 MANU       A.MGR            150 10-DEC-80      50000      16000 D4
02-OCT-02 P2

       104 MANOJ      CLRK             125 02-OCT-80      65000      23000 D2
02-OCT-05 P1

       106 VISHWAS    MGR              111 02-OCT-86      30000      10000 D2
02-OCT-89


     EMPNO ENAME      JOB            MGRID DATE_BIRT        SAL       COMM DEP
---------- ---------- --------- ---------- --------- ---------- ---------- ---
DATE_JOIN PRJ_ID
--------- --------
       123 MAHESH     MGR              111 10-DEC-74      35000      10000 D3
02-OCT-02 P2

       103 VIJAY      CLRK             111 10-DEC-70      40000
0 D1
02-OCT-01 P3

       142 PUSHPA     CLRK                 10-DEC-80      28000
0 D5
11-DEC-80 P3


     EMPNO ENAME      JOB            MGRID DATE_BIRT        SAL       COMM DEP
---------- ---------- --------- ---------- --------- ---------- ---------- ---
DATE_JOIN PRJ_ID
--------- --------
       108 KISHORE    CLRK                 10-DEC-70      23000
0 D7
02-OCT-85


13 rows selected.


5.8)
SELECT * FROM EMP WHERE EXTRACT (MONTH FROM DATE_BIRTH)=12;



     EMPNO ENAME      JOB            MGRID DATE_BIRT        SAL       COMM DEP
---------- ---------- --------- ---------- --------- ---------- ---------- ---
DATE_JOIN PRJ_ID
--------- --------
       102 RAVIRAJ    CLRK             106 10-DEC-80      24000       1000 D1
12-NOV-00 P3

       111 RAGHU      GM               150 10-DEC-74      45000      15000
03-DEC-85

       150            CEO                  10-DEC-70      60000      30000
03-DEC-90


     EMPNO ENAME      JOB            MGRID DATE_BIRT        SAL       COMM DEP
---------- ---------- --------- ---------- --------- ---------- ---------- ---
DATE_JOIN PRJ_ID
--------- --------
       170 RAJ        CLRK             111 10-DEC-80                  1000 D1
03-DEC-85 P1

       125 MANU       A.MGR            150 10-DEC-80      50000      16000 D4
02-OCT-02 P2

       123 MAHESH     MGR              111 10-DEC-74      35000      10000 D3
02-OCT-02 P2


     EMPNO ENAME      JOB            MGRID DATE_BIRT        SAL       COMM DEP
---------- ---------- --------- ---------- --------- ---------- ---------- ---
DATE_JOIN PRJ_ID
--------- --------
       103 VIJAY      CLRK             111 10-DEC-70      40000          0 D1
02-OCT-01 P3

       142 PUSHPA     CLRK                 10-DEC-80      28000          0 D5
11-DEC-80 P3

       108 KISHORE    CLRK                 10-DEC-70      23000          0 D7
02-OCT-85


9 rows selected.

5.9)
SELECT * FROM EMP WHERE EXTRACT (YEAR FROM DATE_BIRTH)=2000;


     EMPNO ENAME      JOB            MGRID DATE_BIRT        SAL       COMM DEP
---------- ---------- --------- ---------- --------- ---------- ---------- ---
DATE_JOIN PRJ_ID
--------- --------
       123 MAHESH     MGR              111 01-JAN-00      35000      10000 D3
02-OCT-02 P2

5.10)
SELECT EMPNO,TO_DATE(DATE_BIRTH,'DD-MM-YY') FROM EMP;

     EMPNO TO_DATE(D
---------- ---------
       101 10-OCT-85
       102 10-DEC-80
       111 10-DEC-74
       150 10-DEC-70
       170 10-DEC-80
       171 02-OCT-80
       125 10-DEC-80
       104 02-OCT-80
       106 02-OCT-86
       123 01-JAN-00
       103 10-DEC-70

     EMPNO TO_DATE(D
---------- ---------
       142 10-DEC-80
       108 10-DEC-70

13 rows selected.

5.11) 

select ceil(2.83),TRUNC(2.83),FLOOR(2.83),ROUND(2.83) from dual;
CEIL(2.83) TRUNC(2.83) FLOOR(2.83) ROUND(2.83)
---------- ----------- ----------- -----------
         3           2           2           3


5.12)
SELECT * FROM PROJ WHERE (END_DATE-STRT_DATE)>365;

DNO PRJ_N PRJ_NAME   PRJ_CREDIT STRT_DATE END_DATE    PRJ_FUND
--- ----- ---------- ---------- --------- --------- ----------
D4  P2    ML                  7 21-SEP-01 20-SEP-40     700000
D2  P1    BIG DATA            2 21-SEP-01 20-SEP-40     200000
D3  P2    W3                  3 21-SEP-90 20-AUG-25     300000
D1  P3    APP_DEV             5 21-SEP-15 20-SEP-24     500000
D1  P2    ML                  7 21-SEP-01 20-SEP-40     700000
D6  P1    THEORY              4 21-SEP-00 21-JAN-27     100000

6 rows selected.

5.13)

UPDATE EMP SET COMM=(COMM+SAL*10/100);

BEFORE 
SQL> SELECT COMM FROM EMP;

      COMM
----------
     16000
     23000
      1000
     15000
     30000
     10000
     10000
         0

      1000
      1000

      COMM
----------
         0
         0

13 rows selected.

AFTER

 SELECT COMM FROM EMP;

      COMM
----------
     21000
     29500
      3400
     19500
     36000
     13000
     13500
      4000
      COMM
----------
      2300
      2800

13 rows selected.