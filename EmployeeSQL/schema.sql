CREATE TABLE titles (
	title_id VARCHAR(6) NOT NULL,
	title_name VARCHAR(30) NOT NULL,
    PRIMARY KEY (title_id)
);

CREATE TABLE employee (
    employee_id INTEGER NOT NULL,
	title_id VARCHAR(6) NOT NULL,
	birth_date DATE NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date DATE NOT NULL,
    PRIMARY KEY (employee_id),
	FOREIGN KEY (title_id) REFERENCES titles(title_id)
);

CREATE TABLE employee_salary (
    employee_id INTEGER NOT NULL,
    salary INTEGER NOT NULL,
    PRIMARY KEY (employee_id),
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id)
);

CREATE TABLE departments (
    department_id VARCHAR(6) NOT NULL,
    department_name VARCHAR(30) NOT NULL,
    PRIMARY KEY (department_id)
);

CREATE TABLE dept_managers (
	id SERIAL,
	department_id VARCHAR(6) NOT NULL,
    manager_id INTEGER NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (department_id) REFERENCES departments(department_id),
	FOREIGN KEY (manager_id) REFERENCES employee(employee_id)
);

CREATE TABLE dept_employees (
	id SERIAL,
	employee_id INTEGER NOT NULL,
    department_id VARCHAR(6) NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (employee_id) REFERENCES employee(employee_id),
	FOREIGN KEY (department_id) REFERENCES departments(department_id)
);