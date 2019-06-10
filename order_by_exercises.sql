use employees;


-- Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).

select * from employees
where (first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya')
and gender = 'M'
order by last_name, first_name;

-- Find all employees whose last name starts with 'E' — 7,330 rows.

select * from employees
where last_name like 'E%';

-- Find all employees hired in the 90s — 135,214 rows.

select * from employees
where hire_date like '199%';

-- Find all employees born on Christmas — 842 rows.

select * from employees
where birth_date like '%%%%-12-25';

-- Find all employees with a 'q' in their last name — 1,873 rows.

select * from employees
where last_name like '%q%';

-- Find all employees whose last name starts or ends with 'E' — 30,723 rows.

select * from employees
where last_name like 'E%' or last_name like '%E';

-- Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.

select * from employees
where last_name like 'E%' and last_name like '%E';

-- Find all employees hired in the 90s and born on Christmas — 362 rows.

select * from employees
where hire_date like '199%' and birth_date like '%%%%-12-25'
order by birth_date, hire_date DESC
limit 5 offset 45;

-- Find all employees with a 'q' in their last name but not 'qu' — 547 rows.

select * from employees
where last_name like '%q%' and last_name not like '%qu%';

