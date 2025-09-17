-- Active: 1757943568716@@127.0.0.1@3306@etchat
INSERT INTO books (
    title, author, isbn, publication_date, publisher, genre, language, updated_at
) VALUES
('Clean Code', 'Robert C. Martin', '9780132350884', '2008-08-01', 'Prentice Hall', 'Software Engineering', 'English', NOW()),
('The Pragmatic Programmer', 'Andrew Hunt, David Thomas', '9780201616224', '1999-10-30', 'Addison-Wesley', 'Programming', 'English', NOW()),
('Introduction to Algorithms', 'Thomas H. Cormen', '9780262033848', '2009-07-31', 'MIT Press', 'Algorithms', 'English', NOW()),
('Design Patterns', 'Erich Gamma, Richard Helm, Ralph Johnson, John Vlissides', '9780201633610', '1994-10-21', 'Addison-Wesley', 'Software Design', 'English', NOW()),
('Artificial Intelligence: A Modern Approach', 'Stuart Russell, Peter Norvig', '9780136042594', '2010-12-11', 'Pearson', 'Artificial Intelligence', 'English', NOW());
