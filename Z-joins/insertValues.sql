-- Active: 1757943568716@@127.0.0.1@3306@mydb
INSERT INTO department (dep_id, emp_name) VALUES
(UUID(), 'Human Resources'),
(UUID(), 'Finance'),
(UUID(), 'IT'),
(UUID(), 'Marketing');

INSERT INTO manager (manager_id, manager_name, dep_id) VALUES
(UUID(), 'Alice Smith', (SELECT dep_id FROM department WHERE emp_name = 'Human Resources')),
(UUID(), 'Bob Johnson', (SELECT dep_id FROM department WHERE emp_name = 'Finance')),
(UUID(), 'Charlie Brown', (SELECT dep_id FROM department WHERE emp_name = 'IT')),
(UUID(), 'David Wilson', (SELECT dep_id FROM department WHERE emp_name = 'Marketing'));

INSERT INTO employees (emp_id, emp_name, salary, dep_id, manager_id) VALUES
(UUID(), 'Eve Davis', 60000, (SELECT dep_id FROM department WHERE emp_name = 'Human Resources'), (SELECT manager_Id FROM manager WHERE manager_name = 'Alice Smith')),  -- Example values for dep_id and manager_id
(UUID(), 'Frank Moore', 70000,(SELECT dep_id FROM department WHERE emp_name = 'Finance'), (SELECT manager_Id FROM manager WHERE manager_name = 'Bob Johnson')),
(UUID(), 'Grace Lee', 80000, (SELECT dep_id FROM department WHERE emp_name = 'Finance'), (SELECT manager_Id FROM manager WHERE manager_name = 'Bob Johnson')),
(UUID(), 'Hank Green', 75000,(SELECT dep_id FROM department WHERE emp_name = 'IT'), (SELECT manager_Id FROM manager WHERE manager_name = 'Charlie Brown')),
(UUID(), 'Ivy Black', 65000, (SELECT dep_id FROM department WHERE emp_name = 'Marketing'), (SELECT manager_Id FROM manager WHERE manager_name = 'David Wilson')),
(UUID(), 'Jack White', 72000, (SELECT dep_id FROM department WHERE emp_name = 'Human Resources'), (SELECT manager_Id FROM manager WHERE manager_name = 'Alice Smith'));

INSERT INTO project (project_id, project_name, team_member_id) VALUES
(UUID(), 'comera', (SELECT emp_id FROM employees WHERE emp_name = 'Frank Moore')),
(UUID(), 'etchat', (SELECT emp_id FROM employees WHERE emp_name = 'Grace Lee')),
(UUID(), 'Gaming', (SELECT emp_id FROM employees WHERE emp_name = 'Hank Green')),
(UUID(), 'data science', (SELECT emp_id FROM employees WHERE emp_name = 'Jack White'));