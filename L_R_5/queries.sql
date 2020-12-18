
-- find all books which price is higher than 50 and category is Computer
SELECT b.title, b.price
FROM Book b
WHERE price > 50 AND category = 'Computer';

-- Show all info about customer with id = 9
SELECT * 
FROM Customer
WHERE id = 9;

-- find the titles and id for all books with less than 15 copies in stock
SELECT title, id
FROM Book 
WHERE quantity < 15;

-- calculate all the books category 'Horror'
SELECT COUNT(*) As amount
FROM Book
WHERE Category= 'Horror';



-- Show title and category of the cheapest book
SELECT  title, category 
FROM Book
WHERE price = (SELECT MIN(price) FROM Book);


--Show titles and categories of 5 the most expensive books
SELECT title, category
FROM Book
WHERE price IN (SELECT TOP (5) price FROM Book  GROUP BY price)
ORDER BY title;


--Show list of all book categories
SELECT DISTINCT category
FROM Book

--Show list of all books which were published in 2000
SELECT title
FROM Book
WHERE prod_year IN ( SELECT prod_year FROM Book WHERE prod_year = 1997)
ORDER BY title;

-- Show all books titles whic quantity is > 70
SELECT title
FROM Book
WHERE quantity IN ( SELECT quantity FROM Book WHERE quantity > 70)
ORDER BY title;

--SHow all customers which name star with J
SELECT c_name
FROM Customer
WHERE c_name LIKE 'J%'
ORDER BY c_name;

-- Show information about books which price is between 10 and 15
SELECT *
FROM Book
WHERE price BETWEEN 10 AND 15;
