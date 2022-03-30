SELECT d.dept_name AS Department_Name, CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager
FROM employees AS e
        JOIN dept_manager AS dm using(emp_no)
        JOIN departments AS d using(dept_no)
WHERE dm.to_date > NOW()
ORDER BY Department_Name;

SELECT d.dept_name AS Department_Name, CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager
FROM employees AS e
        JOIN dept_manager AS dm using(emp_no)
        JOIN departments AS d using(dept_no)
WHERE dm.to_date > NOW() and e.gender = 'f'
ORDER BY Department_Name;

SELECT t.title AS Title, COUNT(*) AS Count
FROM titles AS t
        JOIN dept_emp AS de using(emp_no)
        JOIN departments AS d using(dept_no)
WHERE t.to_date > NOW() AND de.to_date > NOW() AND d.dept_no = 'd009'
GROUP BY Title
ORDER BY Count DESC;

SELECT d.dept_name AS Department_Name, CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager, s.salary AS Salary
FROM employees AS e
         JOIN salaries AS s using(emp_no)
         JOIN dept_manager AS dm using(emp_no)
         JOIN departments AS d using(dept_no)
WHERE dm.to_date > NOW() AND s.to_date > NOW()
ORDER BY Department_Name;


SELECT CONCAT(a.first_name, ' ', a.last_name) AS EMPLOYEE, d.dept_name AS DEPARTMENT,
       CONCAT(b.first_name, ' ', b.last_name) AS MANAGER
FROM departments AS d
         JOIN dept_manager ON d.dept_no = dept_manager.dept_no
         JOIN dept_emp ON d.dept_no = dept_emp.dept_no
         JOIN employees a ON a.emp_no = dept_emp.emp_no
         JOIN employees b ON dept_manager.emp_no = b.emp_no
WHERE dept_manager.to_date > NOW() AND dept_emp.to_date > NOW()
ORDER BY DEPARTMENT, b.emp_no;

