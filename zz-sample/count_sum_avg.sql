-- Active: 1758102693767@@127.0.0.1@3306@etchat
SELECT COUNT(b.book_id) AS borrow_count
FROM borrowings AS b
JOIN users AS u ON u.id = b.user_id
WHERE u.first_name = 'carter';


SELECT * from users;


SELECT u.id,
       u.first_name,
       u.last_name,
       COUNT(b.borrowing_id) AS total_borrowed
FROM users AS u
JOIN borrowings AS b ON u.id = b.user_id
GROUP BY u.id, u.first_name, u.last_name
ORDER BY total_borrowed DESC

