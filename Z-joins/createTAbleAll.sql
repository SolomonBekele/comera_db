-- Active: 1757943568716@@127.0.0.1@3306@mydb
create TABLE employees (
    emp_id CHAR(36) PRIMARY KEY DEFAULT (UUID()),
    emp_name VARCHAR(20),
    salary INT,
    dep_Id CHAR(36),
    manager_Id CHAR(36),
    FOREIGN KEY (dep_id) REFERENCES department(dep_id) ON DELETE CASCADE,
    FOREIGN KEY (manager_id) REFERENCES manager(manager_id) ON DELETE CASCADE
)

create Table department(
    dep_id CHAR(36) PRIMARY KEY DEFAULT (UUID()),
    emp_name VARCHAR(20)
)

CREATE TABLE manager (
    manager_id CHAR(36) PRIMARY KEY DEFAULT (UUID()),
    manager_name VARCHAR(20),
    dep_id CHAR(36),
    FOREIGN KEY (dep_id) REFERENCES department(dep_id) ON DELETE CASCADE
);
CREATE TABLE project (
    project_id CHAR(36) PRIMARY KEY DEFAULT (UUID()),
    project_name VARCHAR(20),
    team_member_id CHAR(36),
    FOREIGN KEY (team_member_id) REFERENCES employees(emp_id) ON DELETE CASCADE
);

ALTER TABLE department
CHANGE COLUMN emp_name dep_name VARCHAR(20);

show TABLEs;