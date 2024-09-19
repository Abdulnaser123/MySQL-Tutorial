-- The CREATE TABLE statement is used to create a new table in a database.
-- Syntax

CREATE TABLE Students
(
    -- The 'StudentID' column is defined as an INTEGER data type with a primary key constraint (unique and not null).
    StudentID INTEGER PRIMARY KEY,

    -- The 'FirstName' column is defined as a VARCHAR data type with a maximum length of 50 characters.
    FirstName VARCHAR(50) NOT NULL,

    -- The 'LastName' column is defined as a VARCHAR data type with a maximum length of 50 characters.
    LastName VARCHAR(50) NOT NULL,

    -- The 'Age' column is defined as an INTEGER data type.
    Age INTEGER,

    -- The 'Grade' column is defined as a VARCHAR data type with a maximum length of 2 characters.
    Grade VARCHAR(2),

    -- The 'GPA' column is defined as a DECIMAL data type with a precision of 3 digits and a scale of 2 decimal places.
    GPA DECIMAL(3, 2)

    -- Additional columns can be added as needed.
    -- For example:
    -- 'Address' VARCHAR(100),
    -- 'Email' VARCHAR(100),
    -- 'PhoneNumber' VARCHAR(20)
    -- ...
);

-- Sample data can be inserted into the table using the INSERT INTO statement.

INSERT INTO Students
    (StudentID, FirstName, LastName, Age, Grade, GPA)
VALUES
    (1, 'John', 'Doe', 18, 'A', 3.85),
    (2, 'Jane', 'Smith', 19, 'B', 3.70),
    (3, 'Michael', 'Johnson', 20, 'C', 3.65),
    (4, 'Emily', 'Williams', 21, 'D', 3.50),
    (5, 'David', 'Brown', 22, 'E', 3.45);


-- Create Table Using Another Table

CREATE TABLE Students2 AS
SELECT *
FROM Students;

