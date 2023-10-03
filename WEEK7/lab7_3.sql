--Write a PL/SQL block to accept employee number and display Employee Name,--
--Department name, salary of employees in the format – ‘RAVI works in Marketing--
--department and draws 32000/- as salary’.--
set severoutput on;
DECLARE
    v_emp emp%rowtype;
    v_dept dept%rowtype;
    v_empno emp.empno%type;
BEGIN
    v_empno := &v_empno;
    SELECT * INTO v_emp FROM emp WHERE empno = v_empno;
     SELECT dname INTO v_dept.dname FROM dept WHERE dno = v_emp.deptno;
    dbms_output.put_line(v_emp.ename||' works in '||v_dept.dname||' department and draws '||v_emp.sal||'/- as salary.');
END;
/