CREATE DATABASE ORG;
SHOW DATABASES;
USE ORG;


CREATE TABLE Worker (
	WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	FIRST_NAME CHAR(30),
	LAST_NAME CHAR(30),
	SALARY INT(15),
	JOINING_DATE DATETIME,
	DEPARTMENT CHAR(30)
);
INSERT INTO Worker(
WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
(001, 'Chioma', 'Kamalu', 500000, '2022-01-20 08:00:00', 'IT'),
(002, 'Kelechi', 'Kamalu', 600000, '2022-10-01 09:00:00', 'Law'),
(003, 'Chinaza', 'Kamalu', 600000, '2022-10-02 08:00:00', 'HR'),
(004, 'Vishal', 'Kalu', 1780000, '2020-02-03 08:00:00', 'Management'),
(005, 'Chimere', 'Stanley', 120000, '2020-07-02 08:00:00',  'IT'),
(006, 'Prince', 'Megar', 300000, '2020-05-01 08:00:00', 'HR'),
(007, 'Vivek', 'Kalu', 500000, '2020-05-05 08:00:00', 'Admin'),
(008, 'Jasmine', 'Chauhan', 400000, '2021-05-09 09:00:00', 'HR'),
(009, 'Vipul', 'Chauhan', 400000, '2021-07-21 09:00:00', 'HR'),
(010, 'Jasmine', 'Briggs', 550000, '2021-04-09 09:00:00', 'Admin');


/*Queries*/
/*Query Question 1:
 Write an SQL query to fetch “FIRST_NAME” from Staff table using the alias name as <WORKER_NAME>
 */
 SELECT FIRST_NAME AS WORKER_NAME FROM Staff;
 
/*Query Question 2:
Write an SQL query to fetch “FIRST_NAME” from Worker table in upper case
 */
  Select UPPER(FIRST_NAME) FROM Staff;
  
/*Query Question 3:
Write an SQL query to fetch unique values of DEPARTMENT from Staff table
*/
SELECT DISTINCT DEPARTMENT FROM Staff;

/*Query Question 4:
Write an SQL query to print the first three characters of  FIRST_NAME from Staff table
*/
SELECT SUBSTRING(FIRST_NAME, 1, 3) FROM Staff;

/*Query Question 5:
Write an SQL query to find the position of the alphabet (‘a’) in the first name column ‘Chinaza’ from Staff table
*/
SELECT INSTR(FIRST_NAME, BINARY'a') FROM Staff WHERE FIRST_NAME = 'Chinaza';

/*Query Question 6:
Write an SQL query to print the FIRST_NAME from Staff table after removing white spaces from the right side
*/
SELECT RTRIM(FIRST_NAME) FROM Staff;

/*Query Question 7:
Write an SQL query to print the DEPARTMENT from Staff table after removing white spaces from the left side
*/
SELECT LTRIM(FIRST_NAME) FROM Staff;

/*Query Question 8:
Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length
*/
SELECT DISTINCT LENGTH (DEPARTMENT) FROM Staff;

/*Query Question 9:
Write an SQL query to print the FIRST_NAME from Staff table after replacing ‘a’ with ‘A’
*/
SELECT REPLACE(FIRST_NAME,'a','A') FROM Staff;

/*Query Question 10:
Write an SQL query to print the FIRST_NAME and LAST_NAME from Staff table into a single column COMPLETE_NAME. A space char should separate them
*/
SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) AS 'COMPLETE_NAME' FROM Staff;

/*Query Question 11:
Write an SQL query to print all Worker details from the Staff table order by FIRST_NAME Ascending
*/
SELECT * FROM Staff ORDER BY FIRST_NAME ASC;

/*Query Question 12:
Write an SQL query to print all Worker details from the Staff table order by FIRST_NAME Ascending and DEPARTMENT Descending
*/
SELECT * FROM Staff ORDER BY FIRST_NAME ASC, DEPARTMENT DESC;

/*Query Question 13:
Write an SQL query to print details for Workers with the first name as “Jasmine” and “Vipul” from Staff table
*/
SELECT * FROM Staff WHERE FIRST_NAME in ('Vipul','Jasmine');

/*Query Question 14:
Write an SQL query to print details of workers excluding first names “Jasmine” and “Vipul” from Staff table
*/
SELECT  * FROM Staff WHERE FIRST_NAME NOT in ('Vipul','Jasmine');

/*Query Question 15:
Write an SQL query to print details of Workers with DEPARTMENT name as “Admin”
*/
SELECT * FROM Staff WHERE DEPARTMENT LIKE 'Admin%';

/*Query Question 16:
Write an SQL query to print details of the Workers whose FIRST_NAME contains ‘a’
*/
SELECT * FROM Staff WHERE FIRST_NAME LIKE '%a%';

/*Query Question 17:
Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘a’
*/
SELECT * FROM Staff WHERE FIRST_NAME like '%a';

/*Query Question 18:
Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘a’ and contains six alphabets
*/
SELECT * FROM Staff WHERE FIRST_NAME LIKE '_____a';

/*Query Question 19:
Write an SQL query to print details of the Workers whose SALARY lies between 100000 and 500000
*/
SELECT * FROM Staff WHERE SALARY BETWEEN 100000 AND 500000;

/*Query Question 20:
Write an SQL query to print details of the Workers who have joined in NOV’2021
*/
SELECT * FROM Staff WHERE YEAR(JOINING_DATE) = 2021 AND MONTH(JOINING_DATE) = 11;

/*Query Question 21:
Write an SQL query to fetch the count of employees working in the department ‘Admin’
*/
SELECT COUNT(*) FROM worker WHERE DEPARTMENT = 'Admin';

/*Query Question 22:
Write an SQL query to fetch the no. of workers for each department in the descending order
*/
SELECT DEPARTMENT, count(WORKER_ID) AS No_Of_Workers 
FROM Staff 
GROUP BY DEPARTMENT 
ORDER BY No_Of_Workers DESC;

/*Query Question 23:
Write an SQL query to show only odd rows from a table
*/
SELECT * FROM Staff WHERE MOD (WORKER_ID, 2) <> 0;

/*Query Question 24:
Write an SQL query to show only even rows from a table
*/
SELECT * FROM Staff WHERE MOD (WORKER_ID, 2) = 0;

/*Query Question 25:
Write an SQL query to clone a new table from another table
*/
CREATE TABLE StaffClone LIKE Staff;
SELECT * FROM StaffClone;
