--Create departments table
Create table departments (
	dept_no VARCHAR(50) PRIMARY KEY NOT NULL,
	dept_name VARCHAR(50) NOT NULL
);

--Create titles table
Create table titles (
	title_id VARCHAR(50) PRIMARY KEY NOT NULL,
	title VARCHAR(50) NOT NULL
);

--Create employees table
Create table employees (
	emp_no INT PRIMARY KEY NOT NULL,
	emp_title_id VARCHAR(50) NOT NULL,
	birth_date Date NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	sex VARCHAR(50) NOT NULL,
	hire_date Date NOT NULL,
	FOREIGN KEY(emp_title_id) 
    REFERENCES titles(title_id)
);

--Create salaries table
Create table salaries (
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) 
	REFERENCES employees(emp_no),
	salary INT NOT NULL	
);

--Create dept_emp table
Create table dept_emp (
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) 
	REFERENCES employees(emp_no),
	dept_no VARCHAR(50) NOT NULL,
	FOREIGN KEY (dept_no) 
	REFERENCES departments(dept_no)	
);
--Create dept_manager table
Create table dept_manager (
	dept_no VARCHAR(50) NOT NULL,
	FOREIGN KEY (dept_no) 
	REFERENCES departments(dept_no),
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) 
	REFERENCES employees(emp_no)	
);