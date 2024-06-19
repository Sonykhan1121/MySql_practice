use hackerrank_mysql;
create table CITY(
	ID INT,
    NAME VARCHAR(17),
    COUNTRYCODE VARCHAR(3),
    DISTRICT VARCHAR(20),
    POPULATION INT
    
);


insert into CITY VALUES(101,"SONYKHAN","BD","CHANDPUR",102094);

SELECT * FROM CITY;

select * from CITY where POPULATION > 100000 and CountryCode = 'USA';