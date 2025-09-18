-- Active: 1758102693767@@127.0.0.1@3306@etchat
select * FROM users
where language= 'english' and role= "admin" or role = "user" 
ORDER BY  language DESC,email ASC
limit 4 OFFSET 4
