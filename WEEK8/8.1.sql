-- Write a cursor to display ENAME and SAL of all employees drawing salary more than
-- 30000/-.
SET SERVEROUTPUT ON;
DECLARE 
    cursor sal_gt30000 is select ename,sal from emp where sal>30000;
    v_ename emp.ename%type;
    v_sal emp.sal%type;
BEGIN
    open sal_gt30000;
    --Dbms_output.put_line('Total Records:'||sal_gt30000%rowcount);
    loop
        Fetch sal_gt30000 into v_ename,v_sal;
        exit when sal_gt30000%NOTFOUND;
        --Dbms_output.put_line('No of Records:'||sal_gt30000%rowcount);
        dbms_output.put_line(v_ename||' draws '||v_sal||' as salary'); 
    end loop;
    --Dbms_output.put_line('Total Records:'||sal_gt30000%rowcount);
    close sal_gt30000;
End;
/