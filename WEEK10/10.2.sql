-- Write a trigger to be invoked when a department on a project updates Prj_fund by
-- adding additional fund. Depending on project duration lapsed, display the message for
-- additional fund for which department is eligible on that project. The project duration
-- lapsed is calculated as difference between current_date (user entered) and start_date.
-- Additional fund eligible is calculated according to the following criteria:
-- If project duration lapsed is less than 50% then display- You are eligible for Rs.
-- xxxx(xxxx is 70% of additional fund requested) else display- You are eligible for
-- Rs.xxxx (xxxx is40% of additional fund requested).
set serveroutput on;

create or replace trigger trig_prj_update after update on proj for each row

declare
	proj_duration number(10);
	lapsed_duration number(10);
	fund number(10);
begin
	proj_duration := :old.end_date - :old.strt_date;
	lapsed_duration := sysdate - :old.strt_date;
	if lapsed_duration < (0.5 * proj_duration) then
		fund := (:new.prj_fund - :old.prj_fund ) * 0.7;
		dbms_output.put_line('you are eligible for Rs.' || fund );
	else
		fund := (:new.prj_fund - :old.prj_fund ) * 0.4;
		dbms_output.put_line('you are eligible for Rs.' || fund );
	end if;
end;
/
