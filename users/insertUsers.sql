-- Active: 1757943568716@@127.0.0.1@3306@etchat
INSERT INTO users (id, first_name, last_name, email, password, role, language, status) VALUES
    (UUID(), 'Alice', 'Johnson', 'alice.johnson@example.com', 'password123', 'ADMIN', 'English', 'ACTIVE'),
    (UUID(), 'Bob', 'Smith', 'bob.smith@example.com', 'password123', 'USER', 'English', 'ACTIVE'),
    (UUID(), 'Charlie', 'Brown', 'charlie.brown@example.com', 'password123', 'USER', 'Spanish', 'ACTIVE'),
    (UUID(), 'Diana', 'Prince', 'diana.prince@example.com', 'password123', 'USER', 'English', 'ACTIVE'),
    (UUID(), 'Ethan', 'Hunt', 'ethan.hunt@example.com', 'password123', 'LIBRARIAN', 'French', 'INACTIVE');