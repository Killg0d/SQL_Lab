-- Write a parameterized cursor to display first two highest paid employees details (Name, 
-- Salary, Department Name) working on a project. The Prj_Id is the user given 
-- parameter.
set serveroutput on;
DECLARE
    cursor cur_emp(pid varchar2) is select ename,sal,dname from emp,dept where deptno=dno and prj_id=upper(pid) 
    and rownum<3 order by sal desc ;
BEGIN
    for i in cur_emp(upper('&pid')) loop
        dbms_output.put_line(i.ename||'     '||i.sal||'     '||i.dname);
    end loop;
end;
/