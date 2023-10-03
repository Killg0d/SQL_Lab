--Write a PL/SQL block to find the sum of the digits of a given number.--
SET serveroutput ON;
DECLARE
    nos NUMBER := &no;
    sum_of_digits NUMBER(8) := 0;
BEGIN
    WHILE nos > 0 LOOP
        sum_of_digits := sum_of_digits + MOD(nos, 10);
        nos := nos / 10;
    END LOOP;
    DBMS_OUTPUT.put_line('Number =' || sum_of_digits);
END;
/
