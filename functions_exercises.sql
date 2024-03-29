select concat(first_name,' ', last_name)
from employees
where last_name like 'e%' and last_name like '%e'
order by emp_no;

select * from employees
where month(birth_date) = 12
  and day(birth_date) = 25;

select * from employees
where year(hire_date) between 1990 and 1999
  and day(birth_date) = 25
  and month(birth_date) = 12
order by birth_date asc, hire_date desc;

select concat(first_name,' ', last_name), datediff(now(), hire_date) from employees
where year(hire_date) between 1990 and 1999
  and day(birth_date) = 25
  and month(birth_date) = 12
