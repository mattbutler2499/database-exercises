use employees;

select * from dept_manager;

select * from departments;

select * from employees;

select * from salaries;
select * from titles;
select * from dept_emp;

select concat(employees.first_name, ' ', employees.last_name) as `employee name`, hire_date
from employees
where hire_date =(
select hire_date
from employees
where emp_no = 101010);

select concat(employees.first_name, ' ', employees.last_name) as `employee name`, titles.title
from employees
join titles on employees.emp_no = titles.emp_no
where employees.first_name like 'aamod%';


select title as the_titles_for_all_the_various_aamods, count(title)
from titles
where emp_no in (
  select emp_no
  from employees
  where first_name  like 'aamod%'
  )
group by title;


select first_name, last_name
from employees
where emp_no in (
  select emp_no from dept_manager
  where to_date > curdate()
  ) and gender = 'f';

select dept_name
from departments
where dept_no in (
  select dept_no from dept_manager
  where emp_no in (
    select emp_no from employees
    where gender = 'f'
    )
  and to_date > curdate()
  );

select ad_id, category
from ads
join ad_cats on ads.ad_id = ad_cats.ad_id
join cats on ad_cats.category_id = cats.id
where ad_id = 'x';

select ads.title
from ads
join ad_cats on ads.ad_id = ad_cats.ad_id
join cats on ad_cats.category_id = cats.id
where cats.cat = 'x';

select users.username, ads.title
from users
join ads on ads.user_id = users.user_id
where users.username = 'x';

UPDATE students
SET conversation_access = 0
WHERE


# SELECT dept_name
# from departments
# where dept_no in (
#   select dept_no
#   from dept_emp
#   where emp_no in (
#     select emp_no
#     FROM employees
#     where emp_no in (
#       SELECT emp_no
#       FROM dept_manager
#       WHERE to_date > curdate()
#         AND gender = 'F'
#     )));

select first_name, last_name
from employees
where emp_no in (
  select emp_no
  from salaries
  where salary in (
    select max(salary)
    from salaries
  )
);