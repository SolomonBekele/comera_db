-- Active: 1758102693767@@127.0.0.1@3306@etchat
select * FROM users
where language= 'english' and role= "admin" or role = "user" 
/*
SQL Logical Operator Precedence (Highest → Lowest)
1.NOT

2.AND

3.OR

*/
