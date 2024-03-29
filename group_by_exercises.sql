select distinct title from titles;

select last_name from employees
where last_name like 'e%' and last_name like '%e'
group by last_name;

select last_name, first_name from employees
where last_name like 'e%' and last_name like '%e'
group by last_name, first_name;

select count(last_name), last_name  from employees
where last_name like '%q%' and employees.last_name not like '%qu%'
group by last_name
order by last_name;

select count(gender), gender
from employees
where first_name in ('Irena', 'Vidya', 'Maya')
group by gender;
