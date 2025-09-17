SELECT u.id AS user_id,
       CONCAT(u.first_name, ' ', u.last_name) AS user_name,
       bo.id AS book_id,
       bo.title AS book_title,
       COUNT(bi.borrowing_id) AS times_borrowed
FROM users u
JOIN borrowings bi ON bi.user_id = u.id
JOIN books bo ON bo.id = bi.book_id
GROUP BY u.id, u.first_name, u.last_name, bo.id, bo.title;
