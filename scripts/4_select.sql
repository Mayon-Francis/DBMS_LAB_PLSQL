DECLARE
    id SAMPLE.ID%TYPE;
BEGIN
    -- we use ROWNUM to limit result to one row, for multiple rows, refer loops,cursors etc.
    SELECT ID INTO id FROM SAMPLE WHERE ROWNUM = 1;
    dbms_output.put_line('Id: ' || id);
END;
/