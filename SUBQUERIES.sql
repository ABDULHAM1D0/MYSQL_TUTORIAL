-- SUBQUERIES

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE employee_id IN (
	SELECT employee_id
    FROM parks_and_recreation.employee_salary
    WHERE dept_id = 1
    );

SELECT first_name, salary, 
(SELECT AVG(salary) from parks_and_recreation.employee_salary)
FROM parks_and_recreation.employee_salary;

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender;



SELECT AVG(`MAX(age)`)
FROM (SELECT gender, AVG(age) AS avg_age,
MAX(age), 
MIN(age), 
COUNT(age) 
FROM parks_and_recreation.employee_demographics
GROUP BY gender) as AGG_TABLE;



SELECT AVG(max_age)
FROM (SELECT gender, AVG(age) AS avg_age,
MAX(age) as max_age, 
MIN(age) as min_age, 
COUNT(age) as count_age
FROM parks_and_recreation.employee_demographics
GROUP BY gender) as AGG_TABLE;


