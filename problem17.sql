use hackerrank_mysql;

CREATE TABLE STUDENTS (
    ID INT,
    Name VARCHAR(20),
    Marks INT
);
SELECT Name FROM STUDENTS WHERE Marks>75 ORDER BY SUBSTRING(Name,-3),ID;