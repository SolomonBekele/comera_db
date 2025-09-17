-- Active: 1758102693767@@127.0.0.1@3306@etchat
SELECT u.id,
       CONCAT(u.first_name, ' ', u.last_name) AS user_name,
       COUNT(bi.borrowing_id) AS times_borrowed
FROM users u
LEFT JOIN borrowings bi ON bi.user_id = u.id
GROUP BY u.id, u.first_name, u.last_name
ORDER BY times_borrowed DESC;
