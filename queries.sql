--Query1_employee number, last name, first name, sex, and salary for each employee
SELECT
	employees.emp_no,	
	last_name,
	first_name,
	sex,
	salary
FROM
	employees
INNER JOIN salaries 
    ON employees.emp_no = salaries.emp_no
	ORDER BY employees.emp_no;
	
--Query2_first name, last name, and hire date for employees who were hired in 1986	
SELECT
	first_name,
	last_name,
	hire_date
FROM
	employees
WHERE
	hire_date BETWEEN '1986-01-01' AND '1986-12-31';
	
--Query3_department number, department name, employee number, last name, first name of each department manager	
SELECT
	dept_manager.dept_no,
	departments.dept_name,
	dept_manager.emp_no,	
	employees.last_name,
	employees.first_name	
FROM
	dept_manager
INNER JOIN employees 
    ON dept_manager.emp_no=employees.emp_no 
INNER JOIN departments 
    ON dept_manager.dept_no = departments.dept_no
	ORDER BY dept_no;
	
--Query4_employee number, last name, first name, and department name of each employee	
SELECT
	dept_emp.emp_no,	
	employees.last_name,
	employees.first_name,
	departments.dept_name
FROM
    dept_emp
INNER JOIN employees 
    ON dept_emp.emp_no = employees.emp_no
INNER JOIN departments
    ON dept_emp.dept_no = departments.dept_no
ORDER BY emp_no;	

--Query5_first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT	
	first_name,
	last_name,
	sex
FROM
	employees
WHERE
	first_name = 'Hercules' AND 
        last_name LIKE 'B%';
		
--Query6_all employees in the Sales department, including their employee number, last name, first name, and department name		
SELECT
	dept_emp.emp_no,	
	employees.last_name,
	employees.first_name,
	departments.dept_name
FROM
    dept_emp
INNER JOIN employees 
    ON dept_emp.emp_no = employees.emp_no
INNER JOIN departments
    ON dept_emp.dept_no = departments.dept_no
WHERE dept_name='Sales'	
ORDER BY emp_no;	

--Query7_all employees in the Sales and Development departments, including their employee number, last name, first name, and department name
SELECT
	dept_emp.emp_no,	
	employees.last_name,
	employees.first_name,
	departments.dept_name
FROM
    dept_emp
INNER JOIN employees 
    ON dept_emp.emp_no = employees.emp_no
INNER JOIN departments
    ON dept_emp.dept_no = departments.dept_no
WHERE 
	dept_name IN ('Sales','Development')
ORDER BY emp_no;

--Query 8_In descending order, frequency count of employee last names, i.e., how many employees share each last name
SELECT
	last_name,
	COUNT (last_name)
FROM
	employees
GROUP BY
	last_name
ORDER BY
       count DESC;	