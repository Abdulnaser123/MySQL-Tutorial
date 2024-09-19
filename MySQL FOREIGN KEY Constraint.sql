-- The FOREIGN KEY constraint is used to prevent actions that would destroy links between tables.

-- A FOREIGN KEY is a field (or collection of fields) in one table, that refers to the PRIMARY KEY in another table.

-- The table with the foreign key is called the child table, and the table with the primary key is called the referenced or parent table.

-- Look at the following two tables:


-- FOREIGN KEY on CREATE TABLE

CREATE TABLE Authors
(
    AuthorID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Country VARCHAR(50) NOT NULL
);

CREATE TABLE Books
(
    BookID INT PRIMARY KEY,
    Title VARCHAR(100) NOT NULL,
    AuthorID INT,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
    -- This line creates a foreign key named "AuthorID" that references the "AuthorID" column in the Authors table.
    -- If the referenced AuthorID in Authors does not exist, the insertion will fail.
    -- If the referenced AuthorID in Authors does exist, the insertion will succeed.
    -- This is a one-to-many relationship, where each book can have multiple authors, and each author can have multiple books.
    -- The foreign key constraint ensures data integrity by preventing actions that would destroy links between tables.
    -- It also helps prevent duplicate entries by ensuring that the referenced AuthorID in Authors exists.

);

-- FOREIGN KEY on ALTER TABLE

ALTER TABLE Books
ADD CONSTRAINT fk_Books_Authors
FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID);


