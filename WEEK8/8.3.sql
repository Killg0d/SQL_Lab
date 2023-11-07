-- Write a parameterized cursor to display employee with the user given parameters- job
-- and deptno ( Using Cursor for loop)


set serveroutput on;
set verify off;

DECLARE
    cursor cur_emp(j varchar2,dno varchar2) is select ename from emp where deptno=dno and job=j;
    count_rec int:=0;
BEGIN
    for i in cur_emp(upper('&job'),upper('&dno')) 
    loop
        count_rec:=cur_emp%rowcount;
        dbms_output.put_line(i.ename);
    end loop;
    if count_rec=0 then
    dbms_output.put_line('no record found');
    end if;
END;
/