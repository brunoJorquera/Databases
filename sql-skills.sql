INSERT INTO artist(
  name
)
Values
(
	'Slim Pancake'
),(
	'500 Cents'
),(
	'ThreePack'
);

SELECT * FROM artist
ORDER BY name
limit 5;

-- -----------------------------------------------------------------------------------

SELECT first_name, last_name FROM employee
WHERE city = 'Calgary';

SELECT * FROM employee
WHERE reports_to = 2;

SELECT count(*) FROM employee
WHERE city = 'Lethbridge';

-- -----------------------------------------------------------------------------------

SELECT count(*) FROM invoice
WHERE billing_country = 'USA'

SELECT * FROM invoice
ORDER BY total DESC
LIMIT 1;

SELECT * FROM invoice
ORDER BY total ASC
LIMIT 1;

SELECT * FROM invoice
WHERE total > 5;

SELECT count(*) FROM invoice
WHERE total < 5;

SELECT sum(total) FROM invoice;

-- -----------------------------------------------------------------------------------

SELECT *
FROM invoice i
JOIN invoice_line il
On i.invoice_id = il.invoice_id
WHERE unit_price > 0.99;

SELECT i.invoice_date, c.first_name, c.last_name, i.total
FROM invoice i
JOIN customer c
ON i.customer_id = c.customer_id

SELECT c.first_name, c.last_name, e.first_name, e.last_name
FROM customer c
JOIN employee e
On c.support_rep_id = e.employee_id;

SELECT al.title, ar.name
FROM album al
JOIN artist ar
ON al.artist_id = ar.artist_id;

-- EXTRA CREDIT

SELECT * FROM artist
ORDER BY name DESC
LIMIT 10;

SELECT * FROM artist
WHERE name LIKE 'Black%';

SELECT * FROM artist
WHERE name LIKE '%Black%'

SELECT * FROM employee
ORDER BY birth_date DESC
LIMIT 1;

SELECT * FROM employee
ORDER BY birth_date
LIMIT 1

