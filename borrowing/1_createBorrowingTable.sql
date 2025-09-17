-- Active: 1758102693767@@127.0.0.1@3306@etchat
CREATE TABLE borrowings (
    borrowing_id CHAR(36) PRIMARY KEY DEFAULT (UUID()),
    user_id CHAR(36),
    book_id CHAR(36),
    borrow_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    return_date TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (book_id) REFERENCES books(id)
);