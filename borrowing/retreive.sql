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