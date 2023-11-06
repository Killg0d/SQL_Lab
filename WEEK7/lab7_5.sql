-- Write a PL/SQL block to calculate the area of a circle for a value of radius varying
-- from 3 to 7. Store the Radius and the corresponding values of calculated Area in an
-- empty table named CIRCLE, consisting of two columns radius & area.
create table circle(
    radius number(4),
    area number(4)
);
Set serveroutput on;
DECLARE
  v_radius NUMBER;
  v_area NUMBER;
BEGIN
  FOR v_Radius IN 3..7 LOOP
    v_Area := 3.14 * v_radius * v_radius; 

    INSERT INTO CIRCLE VALUES (v_radius, v_area);
  END LOOP;

  COMMIT; 
  DBMS_OUTPUT.PUT_LINE('Records inserted.');
  
END;
/
