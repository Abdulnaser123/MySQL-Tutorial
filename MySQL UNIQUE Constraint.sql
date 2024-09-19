-- The UNIQUE constraint ensures that all values in a column are different.

-- Both the UNIQUE and PRIMARY KEY constraints provide a guarantee for uniqueness for a column or set of columns.

-- A PRIMARY KEY constraint automatically has a UNIQUE constraint.

-- However, you can have many UNIQUE constraints per table, but only one PRIMARY KEY constraint per table

-- UNIQUE Constraint on CREATE TABLE

CREATE TABLE Customers
(
    CustomerID INT PRIMARY KEY,
    -- Unique identifier for each customer
    CustomerName VARCHAR(255) NOT NULL,
    -- Customer's full name
    Email VARCHAR(255) UNIQUE,
    -- Customer's email address, unique constraint ensures no two customers have the same email
    PhoneNumber VARCHAR(20),
    -- Customer's phone number
    Address VARCHAR(255)
    -- Customer's address
);

-- PRIMARY KEY Constraint on ALTER TABLE

ALTER TABLE Customers
  ADD CONSTRAINT PK_Customers_CustomerID -- Unique identifier for each customer
  PRIMARY KEY (CustomerID);

-- UNIQUE Constraint on ALTER TABLE

ALTER TABLE Customers
  ADD CONSTRAINT UK_Customers_Email -- Customer's email address, unique constraint ensures no two customers have the same email
  UNIQUE (Email);

-- Both UNIQUE and PRIMARY KEY constraints can be defined on multiple columns

CREATE TABLE Products
(
    ProductID INT PRIMARY KEY,
    -- Unique identifier for each product
    ProductName VARCHAR(255) NOT NULL,
    -- Product's name
    Price DECIMAL(10, 2) NOT NULL,
    -- Product's price
    Quantity INT NOT NULL CHECK (Quantity > 0),
    -- Product's quantity, must be greater than 0
    CategoryID INT,
    -- Foreign key referencing the Category table
    CONSTRAINT FK_Products_CategoryID -- Foreign key constraint
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);

-- UNIQUE Constraint on ALTER TABLE

ALTER TABLE Products
  ADD CONSTRAINT UK_Products_ProductName -- Product's name, unique constraint ensures no two products have the same name
  UNIQUE (ProductName);

-- Both UNIQUE and PRIMARY KEY constraints can be defined on multiple columns

CREATE TABLE Categories
(
    CategoryID INT PRIMARY KEY,
    -- Unique identifier for each category
    CategoryName VARCHAR(255) NOT NULL,
    -- Category's name
    Description VARCHAR(255)
    -- Category's description
);
