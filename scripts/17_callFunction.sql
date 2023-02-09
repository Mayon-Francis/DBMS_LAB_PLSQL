DECLARE
    totCount number;
BEGIN
    totCount := TOTAL_IDS();
    dbms_output.put_line('Total count: ' || totCount);
END;
/