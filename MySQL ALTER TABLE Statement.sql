-- The ALTER TABLE statement is used to add, delete, or modify columns in an existing table.

-- The ALTER TABLE statement is also used to add and drop various constraints on an existing table.

-- ALTER TABLE - ADD Column

-- Add a new column called 'age' to the 'employees' table with the data type 'integer'.
ALTER TABLE employees ADD age INTEGER;

-- ALTER TABLE - MODIFY Column

-- Modify the 'age' column to be a 'float' data type.
ALTER TABLE employees MODIFY age FLOAT;

-- ALTER TABLE - DROP Column

-- Drop the 'age' column from the 'employees' table.
ALTER TABLE employees DROP COLUMN age;

-- ALTER TABLE - ADD Constraint

-- Add a constraint to the 'employees' table to ensure that the 'salary' column is not null.

ALTER TABLE employees ADD CONSTRAINT salary_not_null CHECK (salary IS NOT NULL);

-- ALTER TABLE - DROP Constraint

-- Drop the constraint from the 'employees' table that ensures that the 'salary' column is not null.

ALTER TABLE employees DROP CONSTRAINT salary_not_null;

-- ALTER TABLE - Add Foreign Key

-- Add a foreign key constraint to the 'employees' table referencing the 'departments' table.

ALTER TABLE employees ADD CONSTRAINT department_id_fk FOREIGN KEY (department_id) REFERENCES departments(department_id);

-- ALTER TABLE - Drop Foreign Key

-- Drop the foreign key constraint from the 'employees' table referencing the 'departments' table.

ALTER TABLE employees DROP CONSTRAINT department_id_fk;

-- ALTER TABLE - Add Unique Constraint

-- Add a unique constraint to the 'employees' table on the 'employee_id' column.

ALTER TABLE employees ADD CONSTRAINT employee_id_unique UNIQUE (employee_id);

-- ALTER TABLE - Drop Unique Constraint

-- Drop the unique constraint from the 'employees' table on the 'employee_id' column.

ALTER TABLE employees DROP CONSTRAINT employee_id_unique;

-- ALTER TABLE - Add Check Constraint

-- Add a check constraint to the 'employees' table to ensure that the 'salary' column is greater than or equal to 0.

ALTER TABLE employees ADD CONSTRAINT salary_check CHECK (salary >= 0);

-- ALTER TABLE - Drop Check Constraint

-- Drop the check constraint from the 'employees' table that ensures that the 'salary' column is greater than or equal to 0.

ALTER TABLE employees DROP CONSTRAINT salary_check;

-- ALTER TABLE - Add Default Value

-- Add a default value of 0 to the 'salary' column in the 'employees' table.

ALTER TABLE employees ALTER COLUMN salary
SET
DEFAULT 0;

-- ALTER TABLE - Drop Default Value

-- Drop the default value from the 'salary' column in the 'employees' table.

ALTER TABLE employees ALTER COLUMN salary DROP DEFAULT;

