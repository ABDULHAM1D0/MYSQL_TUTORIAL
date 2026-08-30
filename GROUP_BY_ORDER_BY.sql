-- GROUP BY

SELECT *
FROM parks_and_recreation.employee_demographics;

SELECT gender
FROM parks_and_recreation.employee_demographics
GROUP BY gender;


SELECT gender, AVG(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender;


SELECT occupation, salary
FROM parks_and_recreation.employee_salary
GROUP BY occupation, salary;


SELECT gender, AVG(age), MAX(age), MIN(age), STD(age), COUNT(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender;

SELECT gender, AVG(salary)
FROM parks_and_recreation.employee_salary
GROUP BY gender;


-- ORDER BY

SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY first_name DESC;

SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY gender, age DESC;


SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY 5, 4;
