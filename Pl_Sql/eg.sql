DECLARE
    input_number NUMBER := 12345; -- Replace with the number you want to find the sum of digits for
    num_str VARCHAR2(100);
    digit NUMBER;
    digit_sum NUMBER := 0;
BEGIN
    -- Convert the number to a string to iterate through its digits
    num_str := TO_CHAR(input_number);
    
    -- Loop through each character in the string
    FOR i IN 1..LENGTH(num_str) LOOP
        -- Extract the digit as a substring and convert it to a number
        digit := TO_NUMBER(SUBSTR(num_str, i, 1));
        
        -- Add the digit to the sum
        digit_sum := digit_sum + digit;
    END LOOP;
    
    -- Print the sum of digits
    DBMS_OUTPUT.PUT_LINE('Sum of digits: ' || digit_sum);
END;
/