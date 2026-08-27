-- WHERE CLAUSE

SELECT *
FROM parks_and_recreation.employee_salary
WHERE first_name = 'Leslie';

SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary < 50000;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE gender != 'MALE';

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01';

-- AND OR NOT -- LOGICAL OPERATIONS
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01'
AND gender = 'male';


SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01'
OR NOT gender = 'male';


SELECT *
FROM parks_and_recreation.employee_demographics
WHERE (first_name = 'Leslie' and age = 44) or age > 55;



-- LIKE STATEMENT
-- % AND _
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date LIKE '1985%';


SELECT *
FROM parks_and_recreation.parks_departments
WHERE department_id >= 2;

SELECT *
FROM parks_and_recreation.employee_salary
WHERE last_name LIKE '%A__%';