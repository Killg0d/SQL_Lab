-- Write a PL/SQL block to calculate the area of a circle for a value of radius varying
-- from 3 to 7. Store the Radius and the corresponding values of calculated Area in an
-- empty table named CIRCLE, consisting of two columns radius & area.
create table circle(
    radius number(4),
    area number(4)
);
set serveroutput on;
declare
    v_radius circle.radius%type;
    v_area circle.area%type;
BEGIN
    LOOP
        v_radius := &v_radius;

        -- Check if the radius is within the desired range
        EXIT WHEN v_radius BETWEEN 3 AND 7;

        -- Provide a message if the input is outside the range
        DBMS_OUTPUT.PUT_LINE('Invalid radius. Please enter a value between 3 and 7.');
    END LOOP;
end;
/