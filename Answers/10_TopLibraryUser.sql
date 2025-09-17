SELECT u.id,
       CONCAT(u.first_name, ' ', u.last_name) AS user_name,
       COUNT(bi.borrowing_id) AS total_borrowed
FROM users u
JOIN borrowings bi ON bi.user_id = u.id
GROUP BY u.id, u.first_name, u.last_name
ORDER BY total_borrowed DESC
LIMIT 1;
