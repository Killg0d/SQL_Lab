-- Write a cursor to display ENAME and SAL of all employees drawing salary more than
-- 30000/-.
Declare 
    cursor sal_gt30000 is select ename,sal from emp where sal>30000;
    v_ename emp.ename%type;
    v_sal emp.sal%type;