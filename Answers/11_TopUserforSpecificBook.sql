-- Active: 1758102693767@@127.0.0.1@3306@etchat

SELECT u.id,
       CONCAT(u.first_name, ' ', u.last_name) AS user_name,
       COUNT(bi.borrowing_id) AS times_borrowed_for_this_book
FROM users u
JOIN borrowings bi ON bi.user_id = u.id
WHERE bi.book_id = '770e8400-e29b-41d4-a716-446655440002'
GROUP BY u.id, u.first_name, u.last_name
ORDER BY times_borrowed_for_this_book DESC
LIMIT 1;
