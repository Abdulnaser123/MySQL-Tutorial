-- By default, a column can hold NULL values.

-- The NOT NULL constraint enforces a column to NOT accept NULL values.
-- This enforces a field to always contain a value, which means that you cannot insert a new record, or update a record without adding a value to this field.

CREATE TABLE Employees
(
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    DepartmentID INT NOT NULL,
    Salary DECIMAL(10, 2) CHECK (Salary > 0),
    HireDate DATE CHECK (HireDate <= CURDATE())
);

-- The FOREIGN KEY constraint establishes a relationship between two tables.

CREATE TABLE Departments
(
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL
);

ALTER TABLE Employees

-- Add a foreign key constraint referencing the DepartmentID column in the Departments table.
    ADD CONSTRAINT FK_DepartmentID
    FOREIGN KEY (DepartmentID)
    REFERENCES Departments(DepartmentID);


ALTER TABLE Persons MODIFY Age int NOT NULL;

ALTER TABLE Persons MODIFY Email VARCHAR
(100) UNIQUE NOT NULL;

ALTER TABLE Persons ADD CONSTRAINT Check_Age
    CHECK (Age >= 18 AND Age <= 99);

ALTER TABLE Persons ADD CONSTRAINT Check_Email
    CHECK (Email LIKE '%_@_%.__%');

ALTER TABLE Persons MODIFY Age int NOT NULL;

ALTER TABLE Persons MODIFY Email VARCHAR
(100) UNIQUE NOT NULL;

ALTER TABLE Persons ADD CONSTRAINT Check_Age
