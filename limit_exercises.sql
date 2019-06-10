use employees;

select * from employees;

-- List the first 10 distinct last name sorted in descending order. Your result should look like this:

Select distinct last_name from employees
order by last_name desc
limit 10;