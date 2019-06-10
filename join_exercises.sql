use employees;

select * from dept_manager;

select * from departments;

select * from employees;

select * from salaries;
select * from titles;
select * from dept_emp;


# current department managers
select departments.dept_name, concat(employees.first_name, ' ', employees.last_name) as name
from employees
join dept_manager on dept_manager.emp_no = employees.emp_no
join departments on departments.dept_no = dept_manager.dept_no
where dept_manager.to_date like '9999%';


# female department managers
select departments.dept_name, concat(employees.first_name, ' ', employees.last_name) as name
from employees
       join dept_manager on dept_manager.emp_no = employees.emp_no
       join departments on departments.dept_no = dept_manager.dept_no
where dept_manager.to_date like '9999%'
and employees.gender = 'F';


# custmer service titles count
select titles.title, count(titles.title)
from titles
join dept_emp on dept_emp.emp_no = titles.emp_no
join departments on dept_emp.dept_no = departments.dept_no
where departments.dept_name = 'customer service'
and titles.to_date like '999%'
group by titles.title;

#  current salary of all managers

select departments.dept_name, concat(employees.first_name, ' ', employees.last_name) as name, salaries.salary
from employees
join salaries on employees.emp_no = salaries.emp_no
join dept_manager on dept_manager.emp_no = employees.emp_no
join departments on departments.dept_no = dept_manager.dept_no
where dept_manager.to_date like '9999%'
and salaries.to_date like '9999%';


# all employees with their department name and department manager

SELECT CONCAT(employees.first_name,', ',employees.last_name) Full_Name, departments.dept_name Department, CONCAT(man.first_name,', ',man.last_name) Manager
FROM employees
JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
JOIN departments ON departments.dept_no = dept_emp.dept_no
JOIN dept_manager ON dept_manager.dept_no = departments.dept_no
JOIN employees man ON man.emp_no = dept_manager.emp_no
where dept_emp.to_date like '999%'
and dept_manager.to_date like '999%'
ORDER BY Full_Name;

select * from employees;


# select concat(employees.first_name, ' ', employees.last_name) as Employee_name, departments.dept_name as department_name/* concat(employees.first_name, ' ', employees.last_name) as Manager_name*/
# from employees
# join dept_manager on dept_manager.emp_no = employees.emp_no
# join departments on departments.dept_no = dept_manager.dept_no;


select birth_date, count(birth_date)
from employees
group by birth_date
order by count(birth_date) desc;


select departments.dept_name, avg(salaries.salary)
from employees
join salaries on employees.emp_no = salaries.emp_no
join dept_manager on dept_manager.emp_no = employees.emp_no
join departments on departments.dept_no = dept_manager.dept_no
group by dept_name;


select employees.last_name, t.title
from employees