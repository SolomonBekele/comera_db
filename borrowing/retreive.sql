-- Active: 1758102693767@@127.0.0.1@3306@etchat
INSERT INTO borrowings (borrowing_id, user_id, book_id, borrow_date, return_date) VALUES
('880e8400-e29b-41d4-a716-446655440032', '550e8400-e29b-41d4-a716-446655440001', '770e8400-e29b-41d4-a716-446655440001', NOW(), NULL);

-- borrowed books
SELECT b.id, b.title
FROM books b
WHERE EXISTS (
    SELECT 1
    FROM borrowings br
    WHERE br.book_id = b.id
      AND br.return_date IS NULL
);

select
    

select * FROM borrowings where book_id = '770e8400-e29b-41d4-a716-446655440001';

update borrowings 
set return_date = NOW() 
where book_id = '770e8400-e29b-41d4-a716-446655440001' and return_date IS NULL

select CONCAT(u.first_name,' ',u.last_name) as user_name, br.borrow_date
from users as u
join borrowings as br on br.user_id = u.id
where br.book_id = '770e8400-e29b-41d4-a716-446655440001' and return_date IS not NULL




SELECT title,publication_date,COUNT(title) as total_books
from books
GROUP BY publication_date,title


SELECT publication_date, COUNT(publication_date) AS total_books,u.first_name
FROM books b
JOIN borrowings br on br.book_id = b.id
JOIN users u on br.user_id = u.id
where YEAR(b.publication_date) < 2016
GROUP BY b.publication_date,u.first_name
HAVING COUNT(publication_date) >= 1;


SELECT u.first_name, COUNT(br.user_id) AS total_borrowings
FROM users u
JOIN borrowings br ON u.id = br.user_id
GROUP BY u.first_name;
