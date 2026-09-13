-- Unions
SELECT * 
FROM parks_and_recreation.employee_demographics AS dem
JOIN parks_and_recreation.employee_salary AS sal
	ON dem.first_name = sal.first_name;


SELECT first_name, last_name
FROM parks_and_recreation.employee_demographics
UNION ALL
SELECT first_name, last_name
FROM parks_and_recreation.employee_salary
;
	
SELECT first_name, last_name, "OLD MAN" AS Label
FROM parks_and_recreation.employee_demographics
WHERE age > 40 AND gender = 'Male'
UNION
SELECT first_name, last_name, 'OLD LADY' AS  Label
FROM parks_and_recreation.employee_demographics
WHERE age > 40 AND gender = "Female"

UNION
SELECT first_name, last_name, 'HIGHLY PAID EMPLOYEE' AS Label
FROM parks_and_recreation.employee_salary
WHERE salary > 70000
ORDER BY first_name, last_name;

