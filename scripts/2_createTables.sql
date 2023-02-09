/*
    DDL Commands can be directly entered in the PL_SQL shell. TO run them via scripts,
    use the following format with 'EXECUTE IMMEDIATE'.
    Note: there should not be a semicolon (;) after the DDL statement inside quotes 
    in the variable
*/

DECLARE
    sampleTable varchar(50) := 'CREATE TABLE SAMPLE (ID INT)';
BEGIN
    EXECUTE IMMEDIATE sampleTable;
END;
/