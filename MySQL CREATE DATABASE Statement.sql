-- The CREATE DATABASE statement is used to create a new SQL database.

-- Syntax

CREATE DATABASE database_name;

-- Example

CREATE DATABASE my_database;

-- After creating the database, you can use the USE statement to switch to that database.

-- Syntax

USE database_name;

-- Example

USE my_database;

-- To check the current database, you can use the SCHEMA() function.

-- Syntax

SELECT SCHEMA
();

-- Example

SELECT SCHEMA
(); -- Returns "my_database"

-- To list all the tables in the current database, you can use the SHOW TABLES statement.

-- Syntax

SHOW TABLES;

-- Example

SHOW TABLES; -- Returns a list of table names   