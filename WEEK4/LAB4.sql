SELECT * FROM DEPT;
DNO DNAME      LOCATION  DEPT_BUDGET                                                                                                                                                                    
--- ---------- --------- -----------                                                                                                                                                                    
D7  FINANCE    BNG             70000                                                                                                                                                                    
D1  MARKETING  CHN            500000                                                                                                                                                                    
D2  RESEARCH   MNG            300000                                                                                                                                                                    
D3  IT         BNG            400000                                                                                                                                                                    
D5  ACCOUNTS   BNG            500000                                                                                                                                                                    
    CORPORATE  HYD            700000                                                                                                                                                                    
D4  HR         BNG            200000                                                                                                                                                                    
D6  SALES      HYD            400000                                                                                                                                                                    

8 rows selected.
SELECT * FROM EMP;
     EMPNO ENAME      JOB            MGRID DATE_BIRT        SAL       COMM DEP DATE_JOIN PRJ_ID                                                                                                         
---------- ---------- --------- ---------- --------- ---------- ---------- --- --------- --------                                                                                                       
       101 RAVI       MGR              111 10-OCT-85      32000            D1  02-OCT-01 P1                                                                                                             
       102 RAVIRAJ    CLRK             106 10-DEC-80      24000       1000 D1  12-NOV-00 P3                                                                                                             
       111 RAGHU      GM               150 10-DEC-74      45000      15000     03-DEC-85                                                                                                                
       150            CEO                  10-DEC-70      60000      30000     03-DEC-90                                                                                                                
       170 RAJ        CLRK             111 10-DEC-80                  1000 D1  03-DEC-85 P1                                                                                                             
       171 RAJ        CLRK             111 02-OCT-80                  1000 D1  02-OCT-02 P3                                                                                                             
       125 MANU       A.MGR            150 10-DEC-80      50000      16000 D4  02-OCT-02 P2                                                                                                             
       104 MANOJ      CLRK             125 02-OCT-80      65000      23000 D2  02-OCT-05 P1                                                                                                             
       106 VISHWAS    MGR              111 02-OCT-86      30000      10000 D2  02-OCT-89                                                                                                                
       123 MAHESH     MGR              111 10-DEC-74      35000      10000 D3  02-OCT-02 P2                                                                                                             
       103 VIJAY      CLRK             111 10-DEC-70      40000          0 D1  02-OCT-01 P3                                                                                                             

     EMPNO ENAME      JOB            MGRID DATE_BIRT        SAL       COMM DEP DATE_JOIN PRJ_ID                                                                                                         
---------- ---------- --------- ---------- --------- ---------- ---------- --- --------- --------                                                                                                       
       142 PUSHPA     CLRK                 10-DEC-80      28000          0 D5  11-DEC-80 P3                                                                                                             
       108 KISHORE    CLRK                 10-DEC-70      23000          0 D7  02-OCT-85                                                                                                                

13 rows selected.
SELECT * FROM PROJ;

DNO PRJ_N PRJ_NAME   PRJ_CREDIT STRT_DATE END_DATE    PRJ_FUND                                                                                                                                          
--- ----- ---------- ---------- --------- --------- ----------                                                                                                                                          
D1  P1                        4                         400000                                                                                                                                          
D2  P1    BIG DATA            2 21-SEP-01 20-SEP-40     200000                                                                                                                                          
D3  P2    W3                  3 21-SEP-90 20-AUG-25     300000                                                                                                                                          
D1  P3    APP_DEV             5 21-SEP-15 20-SEP-24     500000                                                                                                                                          
D4  P2    ML                  7 21-SEP-01 20-SEP-40     700000                                                                                                                                          
D5  P3    DATA_SCI            4 21-SEP-21 20-SEP-22     200000                                                                                                                                          
D6  P1    THEORY              4 21-SEP-00 21-JAN-27     100000                                                                                                                                          

7 rows selected.
SELECT * FROM EMP WHERE SAL>25000 OR DEPTNO='D1';
     EMPNO ENAME      JOB            MGRID DATE_BIRT        SAL       COMM DEP DATE_JOIN PRJ_ID                                                                                                         
---------- ---------- --------- ---------- --------- ---------- ---------- --- --------- --------                                                                                                       
       101 RAVI       MGR              111 10-OCT-85      32000            D1  02-OCT-01 P1                                                                                                             
       102 RAVIRAJ    CLRK             106 10-DEC-80      24000       1000 D1  12-NOV-00 P3                                                                                                             
       111 RAGHU      GM               150 10-DEC-74      45000      15000     03-DEC-85                                                                                                                
       150            CEO                  10-DEC-70      60000      30000     03-DEC-90                                                                                                                
       170 RAJ        CLRK             111 10-DEC-80                  1000 D1  03-DEC-85 P1                                                                                                             
       171 RAJ        CLRK             111 02-OCT-80                  1000 D1  02-OCT-02 P3                                                                                                             
       125 MANU       A.MGR            150 10-DEC-80      50000      16000 D4  02-OCT-02 P2                                                                                                             
       104 MANOJ      CLRK             125 02-OCT-80      65000      23000 D2  02-OCT-05 P1                                                                                                             
       106 VISHWAS    MGR              111 02-OCT-86      30000      10000 D2  02-OCT-89                                                                                                                
       123 MAHESH     MGR              111 10-DEC-74      35000      10000 D3  02-OCT-02 P2                                                                                                             
       103 VIJAY      CLRK             111 10-DEC-70      40000          0 D1  02-OCT-01 P3                                                                                                             

     EMPNO ENAME      JOB            MGRID DATE_BIRT        SAL       COMM DEP DATE_JOIN PRJ_ID                                                                                                         
---------- ---------- --------- ---------- --------- ---------- ---------- --- --------- --------                                                                                                       
       142 PUSHPA     CLRK                 10-DEC-80      28000          0 D5  11-DEC-80 P3                                                                                                             


 SELECT ENAME AS EMPLOYEE_NAME, SAL SALARY FROM EMP WHERE SAL BETWEEN 25200 AND 35200;
 
EMPLOYEE_N     SALARY                                                                                                                                                                                   
---------- ----------                                                                                                                                                                                   
RAVI            32000                                                                                                                                                                                   
VISHWAS         30000                                                                                                                                                                                   
MAHESH          35000                                                                                                                                                                                   
PUSHPA          28000                                                                                                                                                                                   

                                                                                                                                                                                       

 SELECT ENAME,LOCATION FROM EMP,DEPT 
 WHERE DEPTNO=DNO AND
  (LOCATION='BNG' OR LOCATION='MUB' OR  LOCATION='HYD');
   ENAME      LOCATION                                                                                                                                                                                     
---------- ---------                                                                                                                                                                                    
MANU       BNG                                                                                                                                                                                          
MAHESH     BNG                                                                                                                                                                                          
PUSHPA     BNG                                                                                                                                                                                          
KISHORE    BNG  
  SELECT ENAME,location FROM EMP,DEPT
   WHERE DEPTNO=DNO AND
    LOCATION IN('BNG','MUB','HYD');
                                                                                                                                                                                              
ENAME      LOCATION
---------- ---------
MANU       BNG
MAHESH     BNG
KISHORE    BNG
PUSHPA     BNG                                                                                                                                                                                              

  SELECT DISTINCT(DEPTNO) FROM EMP;
  DEP                                                                                                                                                                                                     
---                                                                                                                                                                                                     
D1                                                                                                                                                                                                      
D4                                                                                                                                                                                                      
D3                                                                                                                                                                                                      
                                                                                                                                                                                                        
D7                                                                                                                                                                                                      
D2                                                                                                                                                                                                      
D5                                                                                                                                                                                                      

7 rows selected.
 SELECT * FROM EMP ORDER BY DEPTNO ASC,SAL DESC;
      EMPNO ENAME      JOB            MGRID DATE_BIRT        SAL       COMM DEP DATE_JOIN PRJ_ID                                                                                                         
---------- ---------- --------- ---------- --------- ---------- ---------- --- --------- --------                                                                                                       
       170 RAJ        CLRK             111 10-DEC-80                  1000 D1  03-DEC-85 P1                                                                                                             
       171 RAJ        CLRK             111 02-OCT-80                  1000 D1  02-OCT-02 P3                                                                                                             
       103 VIJAY      CLRK             111 10-DEC-70      40000          0 D1  02-OCT-01 P3                                                                                                             
       101 RAVI       MGR              111 10-OCT-85      32000            D1  02-OCT-01 P1                                                                                                             
       102 RAVIRAJ    CLRK             106 10-DEC-80      24000       1000 D1  12-NOV-00 P3                                                                                                             
       104 MANOJ      CLRK             125 02-OCT-80      65000      23000 D2  02-OCT-05 P1                                                                                                             
       106 VISHWAS    MGR              111 02-OCT-86      30000      10000 D2  02-OCT-89                                                                                                                
       123 MAHESH     MGR              111 10-DEC-74      35000      10000 D3  02-OCT-02 P2                                                                                                             
       125 MANU       A.MGR            150 10-DEC-80      50000      16000 D4  02-OCT-02 P2                                                                                                             
       142 PUSHPA     CLRK                 10-DEC-80      28000          0 D5  11-DEC-80 P3                                                                                                             
       108 KISHORE    CLRK                 10-DEC-70      23000          0 D7  02-OCT-85                                                                                                                

     EMPNO ENAME      JOB            MGRID DATE_BIRT        SAL       COMM DEP DATE_JOIN PRJ_ID                                                                                                         
---------- ---------- --------- ---------- --------- ---------- ---------- --- --------- --------                                                                                                       
       150            CEO                  10-DEC-70      60000      30000     03-DEC-90                                                                                                                
       111 RAGHU      GM               150 10-DEC-74      45000      15000     03-DEC-85                                                                                                                

13 rows selected.

 CREATE TABLE MANAGER AS SELECT EMPNO,ENAME,JOB,DEPTNO,SAL FROM EMP;
 SELECT * FROM MANAGER;
      EMPNO ENAME      JOB       DEP        SAL                                                                                                                                                          
---------- ---------- --------- --- ----------                                                                                                                                                          
       101 RAVI       MGR       D1       32000                                                                                                                                                          
       102 RAVIRAJ    CLRK      D1       24000                                                                                                                                                          
       111 RAGHU      GM                 45000                                                                                                                                                          
       150            CEO                60000                                                                                                                                                          
       170 RAJ        CLRK      D1                                                                                                                                                                      
       171 RAJ        CLRK      D1                                                                                                                                                                      
       125 MANU       A.MGR     D4       50000                                                                                                                                                          
       104 MANOJ      CLRK      D2       65000                                                                                                                                                          
       106 VISHWAS    MGR       D2       30000                                                                                                                                                          
       123 MAHESH     MGR       D3       35000                                                                                                                                                          
       103 VIJAY      CLRK      D1       40000                                                                                                                                                          

     EMPNO ENAME      JOB       DEP        SAL                                                                                                                                                          
---------- ---------- --------- --- ----------                                                                                                                                                          
       142 PUSHPA     CLRK      D5       28000                                                                                                                                                          
       108 KISHORE    CLRK      D7       23000                                                                                                                                                          

13 rows selected.


 SELECT PRJ_NO,PRJ_NAME FROM PROJ WHERE DNO='D2' AND PRJ_CREDIT>5;
 PRJ_N PRJ_NAME
----- ----------
P3    DSE
 SELECT * FROM  EMP WHERE MGRID=111;
      EMPNO ENAME      JOB            MGRID DATE_BIRT        SAL       COMM DEP DATE_JOIN PRJ_ID                                                                                                         
---------- ---------- --------- ---------- --------- ---------- ---------- --- --------- --------                                                                                                       
       101 RAVI       MGR              111 10-OCT-85      32000            D1  02-OCT-01 P1                                                                                                             
       170 RAJ        CLRK             111 10-DEC-80                  1000 D1  03-DEC-85 P1                                                                                                             
       171 RAJ        CLRK             111 02-OCT-80                  1000 D1  02-OCT-02 P3                                                                                                             
       106 VISHWAS    MGR              111 02-OCT-86      30000      10000 D2  02-OCT-89                                                                                                                
       123 MAHESH     MGR              111 10-DEC-74      35000      10000 D3  02-OCT-02 P2                                                                                                             
       103 VIJAY      CLRK             111 10-DEC-70      40000          0 D1  02-OCT-01 P3                                                                                                             


 SELECT * FROM EMP WHERE ENAME LIKE 'M_____' OR ENAME LIKE 'R_____';

     EMPNO ENAME      JOB            MGRID DATE_BIRT        SAL       COMM DEP DATE_JOIN PRJ_ID                                                                                                         
---------- ---------- --------- ---------- --------- ---------- ---------- --- --------- --------                                                                                                       
       123 MAHESH     MGR              111 10-DEC-74      35000      10000 D3  02-OCT-02 P2                                                                                                             


 SELECT ENAME FROM EMP WHERE ENAME NOT LIKE 'S%';
 ENAME                                                                                                                                                                                                   
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
PUSHPA                                                                                                                                                                                                  
ENAME                                                                                                                                                                                                   
----------                                                                                                                                                                                              
KISHORE                                                                                                                                                                                                 



 SELECT ENAME FROM EMP WHERE ENAME LIKE '_AV%J';
ENAME                                                                                                                                                                                                   
----------                                                                                                                                                                                              
RAVIRAJ                                                                                                                                                                                                 

 SELECT * FROM EMP WHERE COMM IS NULL;
      EMPNO ENAME      JOB            MGRID DATE_BIRT        SAL       COMM DEP DATE_JOIN PRJ_ID                                                                                                         
---------- ---------- --------- ---------- --------- ---------- ---------- --- --------- --------                                                                                                       
       101 RAVI       MGR              111 10-OCT-85      32000            D1  02-OCT-01 P1                                                                                                             
