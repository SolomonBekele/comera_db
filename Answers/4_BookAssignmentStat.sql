-- Active: 1758102693767@@127.0.0.1@3306@etchat
SELECT bo.id,
       bo.title,
       COUNT(bi.borrowing_id) AS times_borrowed
FROM books bo
LEFT JOIN borrowings bi ON bi.book_id = bo.id
GROUP BY bo.id, bo.title
ORDER BY times_borrowed DESC;
