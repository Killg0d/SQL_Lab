set serveroutput on;
set verify off;

DECLARE
    e_rec emp%rowtype;
    numeric_error Exception;
    pragma exception_init(numeric_error,-06502);
BEGIN

    select * into e_rec from emp where empno=&empno;
    dbms_output.put_line('Empno: '||e_rec.empno||'Ename: '||e_rec.ename||'Salary: '||e_rec.sal);
    dbms_output.put_line('Ename to number'||to_number(e_rec.ename));
EXCEPTION
    when numeric_error THEN dbms_output.put_line('Invalid number format exception');
    -- when INVALID_NUMBER then dbms_output.put_line('Invalid number format exception');
    when no_data_found then
        dbms_output.put_line('no employee with given empno found');
    when too_many_rows then
        dbms_output.put_line('there are redundacy of empno');
end;
/
