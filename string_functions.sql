-- String Functions

SELECT LENGTH("skyfall");

SELECT first_name, LENGTH(first_name)
FROM parks_and_recreation.employee_demographics
ORDER BY 2;


SELECT UPPER('sky');
SELECT LOWER('SKY');

SELECT first_name, UPPER(first_name)
FROM parks_and_recreation.employee_demographics;



-- TRIM

SELECT TRIM('              SKY              ');
SELECT LTRIM('              SKY              ');
SELECT RTRIM('              SKY              ');




-- SUBSTRING

SELECT first_name,
LEFT(first_name, 4) as left_join,
RIGHT(first_name, 4) as right_join
FROM parks_and_recreation.employee_demographics;


SELECT first_name,
LEFT(first_name, 4) as left_join,
RIGHT(first_name, 4) as right_join,
SUBSTRING(first_name, 3, 2),
birth_date,
SUBSTRING(birth_date, 1, 4) as birth_year,
SUBSTRING(birth_date,6, 2) as birth_months,
SUBSTRING(birth_date,9, 2) as birth_day
FROM parks_and_recreation.employee_demographics;


-- REPLACE
SELECT first_name, REPLACE(first_name, 'a', 'b')
FROM parks_and_recreation.employee_demographics;

SELECT LOCATE("A", "ABDUHAMID");

SELECT first_name, LOCATE('An', first_name)
FROM parks_and_recreation.employee_demographics;


SELECT first_name, last_name,
CONCAT(first_name, ' ', last_name) as full_name
FROM parks_and_recreation.employee_demographics;