-- Active: 1758102693767@@127.0.0.1@3306@etchat
INSERT INTO borrowings(id,user_id,book_id,borrow_date,return_date)
VALUES(UUID(),'7c8871ec-93ad-11f0-b644-4656f895fe2c','828e386c-93ad-11f0-b644-4656f895fe2c',NOW(),null)


INSERT INTO borrowings (borrowing_id, user_id, book_id, borrow_date, return_date) VALUES
('880e8400-e29b-41d4-a716-446655440001', '550e8400-e29b-41d4-a716-446655440001', '770e8400-e29b-41d4-a716-446655440001', NOW(), NULL), -- Fiona borrows Deep Learning
('880e8400-e29b-41d4-a716-446655440002', '550e8400-e29b-41d4-a716-446655440002', '770e8400-e29b-41d4-a716-446655440002', NOW(), NULL), -- George borrows Clean Architecture
('880e8400-e29b-41d4-a716-446655440003', '550e8400-e29b-41d4-a716-446655440003', '770e8400-e29b-41d4-a716-446655440003', NOW(), NULL), -- Hannah borrows Database System Concepts
('880e8400-e29b-41d4-a716-446655440004', '550e8400-e29b-41d4-a716-446655440004', '770e8400-e29b-41d4-a716-446655440004', NOW(), NULL), -- Ivan borrows Computer Networks
('880e8400-e29b-41d4-a716-446655440005', '550e8400-e29b-41d4-a716-446655440005', '770e8400-e29b-41d4-a716-446655440005', NOW(), NULL); -- Julia borrows PRML
