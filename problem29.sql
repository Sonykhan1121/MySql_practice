SELECT 
CEIL(
    (SELECT 
        AVG(SALARY) 
        FROM EMPLOYEES)-
        
    (SELECT 
        AVG(
            CAST(
                REPLACE(CAST(SALARY AS CHAR),'0','') AS UNSIGNED)) 
                FROM EMPLOYEES)) 
                AS RES;