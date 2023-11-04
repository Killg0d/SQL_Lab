-- Write a PL/SQL trigger to fire when there is an updation of salary of any employee and
-- record the Empno, Dept. Name and Old Salary, date on which salary is modified and
-- user who modified information in the table SAL_MOD (Empno, Dname, Old_Sal,
-- Mod_Date, Modifier).
CREATE OR REPLACE TRIGGER Salary_Update_Trigger
AFTER UPDATE OF Sal ON emp
FOR EACH ROW
DECLARE
  v_Dname VARCHAR2(50);
BEGIN
  SELECT Dname INTO v_Dname
  FROM DEPT
  WHERE DNO= :old.DEPTNO;
  if updating('sal') then 
	dbms_output.put_line('Updating');
  end if;
  INSERT INTO SAL_MOD VALUES (:NEW.Empno, v_Dname, :OLD.Sal, SYSDATE, USER);
END;
/