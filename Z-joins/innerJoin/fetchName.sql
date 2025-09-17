-- Active: 1757943568716@@127.0.0.1@3306@mydb
-- fetch the employee name and department name they belong to
select * from employees;
select e.emp_name,d.dep_name
from employees as e OUTER join department as d on e.dep_Id = d.dep_id