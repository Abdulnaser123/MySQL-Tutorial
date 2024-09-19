

-- The PRIMARY KEY constraint uniquely identifies each record in a table.

-- Primary keys must contain UNIQUE values, and cannot contain NULL values.

-- A table can have only ONE primary key; and in the table, this primary key can consist of single or multiple columns (fields).

-- PRIMARY KEY on CREATE TABLE

CREATE TABLE Employees
(
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    Salary DECIMAL(10, 2)
);

-- ALTER TABLE to ADD a PRIMARY KEY

ALTER TABLE Employees
ADD PRIMARY KEY (EmployeeID);

-- ALTER TABLE to MODIFY a column to make it a PRIMARY KEY

ALTER TABLE Employees
ALTER COLUMN EmployeeID INT
PRIMARY KEY;

-- ALTER TABLE to DROP a PRIMARY KEY

ALTER TABLE Employees
DROP PRIMARY KEY;

-- ALTER TABLE to ADD a UNIQUE constraint

ALTER TABLE Employees
    ADD CONSTRAINT Unique_EmployeeID UNIQUE (EmployeeID);

-- ALTER TABLE to MODIFY a column to make it UNIQUE

ALTER TABLE Employees
    ALTER COLUMN EmployeeID INT
UNIQUE;

-- ALTER TABLE to DROP a UNIQUE constraint

ALTER TABLE Employees
    DROP CONSTRAINT Unique_EmployeeID;

-- ALTER TABLE to ADD a FOREIGN KEY constraint

CREATE TABLE Departments
(
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)

);

CREATE TABLE Employees
(
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    Salary DECIMAL(10, 2),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);


