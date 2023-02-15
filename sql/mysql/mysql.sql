-- GENERAL
SHOW DATABASES; -- Show all Databases
USE database_name; -- Use a database
SHOW TABLES; -- Show all Tables in a DB

-- SELECT
SELECT * FROM table_name;  -- select all rows from table
SELECT * FROM table_name WHERE column_name = value;  -- select all rows where a column equals a value
SELECT * FROM table_name WHERE column_name >= value;  -- select all rows where a column is greater than or equal to a value
SELECT * FROM table_name WHERE column_name BETWEEN value1 AND value2;  -- select all rows where a column value is between two values
SELECT * FROM table_name LIMIT number_of_rows;  -- limit the number of rows returned from a query
SELECT * FROM table_name ORDER BY column_name ASC;  -- sort the results of a query in ascending order
SELECT * FROM table_name ORDER BY column_name DESC;  -- sort the results of a query in descending order

-- BUILT-IN FUNCTIONS
COUNT(column_name) FROM table_name;  -- count the number of rows in a table
AVG(column_name) FROM table_name;  -- get the average value of a column
SUM(column_name) FROM table_name;  -- get the sum of values in a column

-- JOINING TABLES
SELECT * FROM table_name1 JOIN table_name2 ON table_name1.column_name = table_name2.column_name;  -- join two tables on a common column


-- INSERTING DATA
INSERT INTO table_name (column1, column2, column3) VALUES (value1, value2, value3);  -- insert a new row into a table

-- UPDATING DATA
UPDATE table_name SET column1 = value1 WHERE some_column = some_value;  -- update the value of a column in a table where a condition is met
