SELECT (SELECT MAX(POPULATION) FROM CITY) - (SELECT MIN(POPULATION) FROM CITY) AS RES;