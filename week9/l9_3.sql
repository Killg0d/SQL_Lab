set serveroutput on;
set verify off;

DECLARE
    emp_rec emp%rowtype;
    sal_error exception;
BEGIN
    emp_rec.empno:=&empno;
    select * into emp_rec from emp where empno=emp_rec.empno;
    if emp_rec.sal>25000 THEN RAISE sal_error;
    ELSE
        dbms_output.put_line('Employee salary before update: '||emp_rec.sal);
        update emp set sal=25000 where empno=emp_rec.empno;
    end if;
    dbms_output.put_line('--------Employee Details---------');
    dbms_output.put_line('Empno: '||emp_rec.empno||'  Name: '||emp_rec.ename||' Updated salary: 25000');
EXCEPTION
    when sal_error THEN dbms_output.put_line('Employee salary is more than 25000');
    when no_data_found then dbms_output.put_line('Employee id not found');
end;
/