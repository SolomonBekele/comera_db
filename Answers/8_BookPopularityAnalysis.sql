-- Active: 1758102693767@@127.0.0.1@3306@etchat
SELECT MIN(book_count) AS min_times_borrowed,
       MAX(book_count) AS max_times_borrowed
FROM (
    SELECT bo.id, COUNT(bi.borrowing_id) AS book_count
    FROM books bo
    LEFT JOIN borrowings bi ON bi.book_id = bo.id
    GROUP BY bo.id
) x;
