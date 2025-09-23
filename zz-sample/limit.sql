-- Active: 1758102693767@@127.0.0.1@3306@etchat
select * FROM borrowings;
where language= 'english' and role= "admin" or role = "user" 
ORDER BY  language DESC,email ASC
limit 4 OFFSET 4


select title,user_id
from users as u
JOIN borrowings as br on u.id = br.user_id
join books as b on br.book_id = b.id
GROUP BY title