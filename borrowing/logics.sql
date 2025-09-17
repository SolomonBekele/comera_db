-- Active: 1758102693767@@127.0.0.1@3306@etchat

-- Temporary (until MySQL restarts)
SET GLOBAL log_bin_trust_function_creators = 1;

-- Permanent (edit my.cnf or my.ini)
[mysqld]
log_bin_trust_function_creators = 1

-- Trigger that prevents creating a new active borrowing for a book that is already borrowed (i.e., has a row with return_date IS NULL)
DELIMITER $$
CREATE TRIGGER trg_before_insert_borrowing
BEFORE INSERT ON borrowings
FOR EACH ROW
BEGIN
    IF EXISTS (
        SELECT 1 FROM borrowings
        WHERE book_id = NEW.book_id
          AND return_date IS NULL
        LIMIT 1
    ) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Book is already borrowed (not yet returned).';
    END IF;
END$$
DELIMITER ;

-- (Optional) Trigger to prevent updating a borrowing to remove its return_date if that would create a conflict:
DELIMITER $$
CREATE TRIGGER trg_before_update_borrowing
BEFORE UPDATE ON borrowings
FOR EACH ROW
BEGIN
    -- If trying to set return_date to NULL (make it active) and another active borrowing exists, block it
    IF NEW.return_date IS NULL AND (OLD.return_date IS NOT NULL OR OLD.return_date <> NEW.return_date) THEN
        IF EXISTS (
            SELECT 1 FROM borrowings
            WHERE book_id = NEW.book_id
              AND return_date IS NULL
              AND borrowing_id <> OLD.borrowing_id
            LIMIT 1
        ) THEN
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Another active borrowing exists for this book.';
        END IF;
    END IF;
END$$
DELIMITER ;



-- 2a) Check if a book is currently available:
SELECT CASE
         WHEN EXISTS (
             SELECT 1 FROM borrowings
             WHERE book_id = 'BOOK_ID_HERE' AND return_date IS NULL
         ) THEN 'NOT_AVAILABLE'
         ELSE 'AVAILABLE'
       END AS availability;

-- 2b) Insert a borrowing (do this in a transaction in application code):
START TRANSACTION;
-- Optional: double-check (to avoid race conditions at app level, trigger also protects)
SELECT 1 FROM borrowings WHERE book_id = 'BOOK_ID_HERE' AND return_date IS NULL FOR UPDATE;

INSERT INTO borrowings (user_id, book_id)
VALUES ('USER_ID_HERE', 'BOOK_ID_HERE');

COMMIT;
