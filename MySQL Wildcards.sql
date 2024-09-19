-- A wildcard character is used to substitute one or more characters in a string.

-- The following SQL statement selects all customers with a City starting with "L", followed by any character, followed by "n", followed by any character, followed by "on":


SELECT *
FROM Customers
WHERE City LIKE 'L%n%on';

-- The '%' character is a wildcard that matches any sequence of characters.

-- The following SQL statement selects all customers whose City ends with "on":

SELECT *
FROM Customers
WHERE City LIKE '%on';

-- The '%' character is a wildcard that matches any sequence of characters.

-- The following SQL statement selects all customers whose City contains the substring "on":

SELECT *
FROM Customers
WHERE City LIKE '%on%';

-- The '%' character is a wildcard that matches any sequence of characters.

-- The following SQL statement selects all customers whose City starts with a vowel and ends with a consonant:

SELECT *
FROM Customers
WHERE City LIKE '[AEIOU]%[^AEIOU]';

-- The '^' character is a negation operator that matches any character that is not specified in the brackets.

-- The following SQL statement selects all customers whose City starts with a vowel and ends with a consonant, while also ensuring that the middle character is a vowel:

SELECT *
FROM Customers
WHERE City LIKE '[AEIOU]%[AEIOU]%[^AEIOU]';

-- The '%' character is a wildcard that matches any sequence of characters. The '^' character is a negation operator that matches any character that is not specified in the brackets.

-- The following SQL statement selects all customers whose City starts with a vowel, ends with a consonant, and contains at least one vowel in the middle:

SELECT *
FROM Customers
WHERE City LIKE '[AEIOU]%[AEIOU]%[AEIOU]';

    
    