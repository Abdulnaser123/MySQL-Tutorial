
-- The CHECK constraint is used to limit the value range that can be placed in a column.

-- If you define a CHECK constraint on a column it will allow only certain values for this column.

-- If you define a CHECK constraint on a table it can limit the values in certain columns based on values in other columns in the row.

-- CHECK on CREATE TABLE

CREATE TABLE Customers
(
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE CHECK (Email LIKE '%_@_%._%'),
    PhoneNumber VARCHAR(15) UNIQUE CHECK (PhoneNumber LIKE '___________'),
    RegistrationDate DATE CHECK (RegistrationDate >= DATE_SUB(CURDATE(), INTERVAL
    1 YEAR))
);

    -- CHECK on ALTER TABLE

    ALTER TABLE Customers
    ADD CONSTRAINT chk_email_format
    CHECK (Email LIKE '%_@_%._%')
    ,
    ADD CONSTRAINT chk_phone_number_format
    CHECK
    (PhoneNumber LIKE '___________');

    -- CHECK on UPDATE CASCADE

    CREATE TABLE Orders
    (
        OrderID INT PRIMARY KEY,
        CustomerID INT,
        OrderDate DATE,
        FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
        ON UPDATE CASCADE
    );

    -- CHECK on DELETE CASCADE

    CREATE TABLE OrderItems
    (
        ItemID INT PRIMARY KEY,
        OrderID INT,
        FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
        ON DELETE CASCADE

    );
