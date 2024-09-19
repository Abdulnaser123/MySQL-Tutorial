-- The COUNT() function returns the number of rows that matches a specified criterion.
-- COUNT syntax

-- In this case, COUNT() is used to count the number of students who have a GPA higher than 3.0.

SELECT COUNT(*) AS Number_of_Students
FROM Students
WHERE GPA > 3.0;

-- AVG syntax

-- In this case, AVG() is used to calculate the average GPA of all students.

SELECT AVG(GPA) AS Average_GPA

FROM Students;

-- SUM syntax

-- In this case, SUM() is used to calculate the total amount of money spent on books by all students.

SELECT SUM(Books_Spent) AS Total_Books_Spent

FROM Students;

-- An example to use count(), avg() and sum() methods

SELECT COUNT(*) AS Number_of_Students, AVG(GPA) AS Average_GPA, SUM(Books_Spent) AS Total_Books_Spent

FROM Students;

