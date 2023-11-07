-- Write a PL/SQL block to accept, Principle, Interest rate and duration (in years) to
-- calculate Interest to be paid. Handle the exceptions if Principle <=1000, interest rate
-- <5, year <1 and display proper error message for each.

set serveroutput on;
set verify off;

DECLARE
    p_amt number(10,2):=&amt;
    interest number(3,1):=&interest;
    dur number(3,1):=&duration_time;
    p_amt_error Exception;
    int_rate_error exception;
    dur_error exception;
BEGIN
    if p_amt<=1000 then RAISE p_amt_error;
    elsif interest<5 then RAISE int_rate_error;
    elsif dur<1 then RAISE dur_error;
    ELSE
        dbms_output.put_line('Compound Interest is '||(p_amt*interest*dur)/100);
    end if;
EXCEPTION
    when p_amt_error then dbms_output.put_line('Amount must be greater than 1000');
    when int_rate_error then dbms_output.put_line('Interest rate should be greater than 5');
    when dur_error then dbms_output.put_line('Duration should be greater than 1 year');
END;
/