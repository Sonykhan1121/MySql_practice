WITH NEWTABLE AS (
    SELECT LAT_N,ROW_NUMBER() OVER (ORDER BY LAT_N) AS RN
    FROM STATION
),
CNTS AS (
    SELECT COUNT(*)  AS TOTAL
    FROM STATION
)

SELECT 
       ROUND( CASE 
            WHEN TOTAL%2=1 THEN (SELECT LAT_N FROM NEWTABLE WHERE RN =(TOTAL+1)/2)
            ELSE (SELECT AVG(LAT_N) FROM NEWTABLE WHERE RN IN (TOTAL/2,TOTAL/2+1))
        END
            ,4)    
FROM CNTS;