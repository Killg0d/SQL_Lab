-- Write a PL/SQL block trigger to do INSERT/UPDATE/DELETE operation only during
-- week days. Raise an exception if the day is SAT or SUN and also display user who
-- initiated operation
set serveroutput on;
create or replace trigger trig before insert or update or delete on emp for each row
begin
	if inserting or updating or deleting then
		if to_char(sysdate,'DY') = 'SUN' or to_char(sysdate,'DY') = 'SAT' then
			raise_application_error(-20111,'No changes can be made');
		end if;
	end if;
end;
/