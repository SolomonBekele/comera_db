SELECT MIN(user_total) AS min_total_borrowed,
       MAX(user_total) AS max_total_borrowed
FROM (
    SELECT u.id, COUNT(bi.borrowing_id) AS user_total
    FROM users u
    LEFT JOIN borrowings bi ON bi.user_id = u.id
    GROUP BY u.id
) x;
