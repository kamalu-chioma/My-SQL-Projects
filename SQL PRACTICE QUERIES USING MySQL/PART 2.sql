SHOW DATABASES;
USE ORG;
CREATE TABLE PayBonus (
	WORKER_REF_ID INT,
	BONUS_AMOUNT INT(10),
	BONUS_DATE DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Staff(WORKER_ID)
        ON DELETE CASCADE
);

INSERT INTO PayBonus 
	(WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES
		(001, 5000, '16-02-20'),
		(002, 3000, '16-06-11'),
		(003, 4000, '16-02-20'),
		(001, 4500, '16-02-20'),
		(002, 3500, '16-06-11');
        
CREATE TABLE StaffTitle (
	WORKER_REF_ID INT,
	WORKER_TITLE CHAR(25),
	AFFECTED_FROM DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Staff(WORKER_ID)
        ON DELETE CASCADE
);


INSERT INTO StaffTitle 
	(WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
 (001, 'Manager', '2023-02-20 00:00:00'),
 (002, 'Executive', '2023-06-11 00:00:00'),
 (008, 'Executive', '2023-06-11 00:00:00'),
 (005, 'Manager', '2023-06-11 00:00:00'),
 (004, 'Asst. Manager', '2023-06-11 00:00:00'),
 (007, 'Executive', '2023-06-11 00:00:00'),
 (006, 'Lead', '2023-06-11 00:00:00'),
 (003, 'Lead', '2023-06-11 00:00:00');
 
 /*Queries*/
/*Query Question 1:
 Write an SQL query to fetch intersecting records of two tables. jjgjjjjjjcutffftyfykfkftteyi56edy
 */
SELECT * FROM Staff
INTERSECT
SELECT * FROM StaffClone;
 
/*Query Question 2:
Write an SQL query to show the current date and time.
 */
SELECT CURDATE();
  
/*Query Question 3:
Write an SQL query to show the top n (say 7) records of a table
*/
SELECT * FROM Staff ORDER BY Salary DESC LIMIT 7;

/*Query Question 4:
Write an SQL query to determine the nth (say n=5) highest salary from a table
*/
SELECT Salary FROM Staff ORDER BY Salary DESC LIMIT n-1) , 5;

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



