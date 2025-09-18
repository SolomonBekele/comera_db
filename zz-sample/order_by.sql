-- Active: 1758102693767@@127.0.0.1@3306@etchat
select * FROM users
where language= 'english' and role= "admin" or role = "user" 
ORDER BY  language DESC,email ASC

/*
left to right precedence


Without ORDER BY, SQL does not guarantee any specific order of rows.

Rows may come back in the order they were inserted,

Or in the order they are stored on disk (depends on storage engine),

Or in whatever order the query optimizer decides is fastest.

⚠️ The order can change:

After updates or deletes,

After adding indexes,

After restarting the server,

Between different database systems (MySQL, PostgreSQL, SQL Server, etc.).
*/