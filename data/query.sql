SELECT employee_id,first_name,last_name,sex,birth_date 
FROM employee;

--Employees hired in 1986
SELECT first_name,last_name,hire_date
FROM employee
WHERE (EXTRACT(YEAR FROM hire_date)) = 1986;

SELECT dept_managers.department_id,dept_managers.manager_id,depts.department_name,employee.last_name,employee.first_name
FROM dept_managers
JOIN departments AS depts
  ON dept_managers.department_id = depts.department_id
JOIN employee AS employee
  ON dept_managers.manager_id = employee.employee_id
  
SELECT dept_employees.employee_id,employee.last_name,employee.first_name,dept.department_name
FROM dept_employees
JOIN employee AS employee
  ON dept_employees.employee_id = employee.employee_id
JOIN departments AS dept
  ON dept_employees.department_id = dept.department_id
  
SELECT first_name,last_name,sex
FROM employee
WHERE first_name = 'Hercules' 
AND last_name LIKE 'B%'

SELECT employee_id AS id, department_id
FROM dept_employees



--Count of employees with same last name in descending order
SELECT last_name, COUNT(last_name) AS "last name count"
FROM employee
GROUP BY last_name
ORDER BY "last name count" DESC;