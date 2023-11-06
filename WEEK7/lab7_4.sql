-- Create a Table EMPSAL with fields-Empno, Empname, Sal, HRA, DA, Gross Salary,
-- PF, Net Salary (assume appropriate datatype and size).
-- Write a PL/SQL block to accept an employee number existing in EMP table and
-- calculate HRA, DA, Gross Salary, PF, Net_Salary of that employee. Insert the empno,
-- empname, Sal, HRA, DA, Gross Salary, PF, Net Salary into the table EMPSAL:
-- Use the following formula to calculate salary componentsHRA=50% of Sal
-- DA=20% of Sal
-- PF=12% of Sal.
-- Gross_sal= Sal+ HRA+DA
-- Net_Sal= Gross_sal-PF
create table empsal
(
    empno number(4) not null,
    ename varchar2(10),
    sal number(7,2), 
    hra number(8,2),
    da  number(8,2) ,
    pf   number(8,2),
    gross number(8,2),
    net number(8,2)
);
set serveroutput on;
declare
    v_emp emp%rowtype;
    v_empno emp.empno%type;
    v_empsal empsal%rowtype;
BEGIN
    select * into v_emp from emp where empno=&v_empno;
    v_empsal.hra:=v_emp.sal*0.5;
    v_empsal.da:=v_emp.sal*0.2;
    v_empsal.gross:=v_emp.sal+v_empsal.hra+v_empsal.da;
    v_empsal.pf:=v_emp.sal*0.12;
    v_empsal.net:=v_empsal.gross-v_empsal.pf;
    INSERT into empsal VALUES(v_emp.empno,v_emp.ename,v_emp.sal,v_empsal.hra,v_empsal.da,v_empsal.pf,v_empsal.gross,v_empsal.net);
    Dbms_output.put_line('Record inserted successfully');
END;
/