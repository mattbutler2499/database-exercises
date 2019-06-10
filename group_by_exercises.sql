use employees;

-- In your script, use DISTINCT to find the unique titles in the titles table. Your results should look like:

select distinct title from titles;

-- Find your query for employees whose last names start and end with 'E'. Update the query find just the unique last names that start and end with 'E' using GROUP BY. The results should be:

select distinct last_name
from employees
where last_name like 'E%' and last_name like '%E'
group by last_name

-- Update your previous query to now find unique combinations of first and last name where the last name starts and ends with 'E'. You should get 846 rows.

select distinct first_name, last_name
from employees
where last_name like '%E' and last_name like 'E%'

-- Find the unique last names with a 'q' but not 'qu'. Your results should be:

select distinct last_name, count(*)
from employees
where last_name like '%q%' and last_name  not like '%qu%'
group by last_name
order by count(*) desc;


-- Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*) and GROUP BY to find the number of employees for each gender with those names. Your results should be:

select gender, count(*)
from employees
where first_name in ('Irena', 'Vidya', 'Maya')
group by gender;


SELECT hire_date, COUNT(*) as number_hired
FROM employees
GROUP BY hire_date
ORDER BY number_hired DESC
LIMIT 10;
