order_limit.sql  -- 1. Attendees alphabetically

SELECT *
FROM attendees
ORDER BY first_name ASC;



-- 2. Artists ordered by genre

SELECT *
FROM artists
ORDER BY genre ASC;



-- 3. Vendors highest rating first

SELECT *
FROM vendors
ORDER BY rating DESC;



-- 4. Five most expensive tickets

SELECT *
FROM tickets
ORDER BY price DESC
LIMIT 5;



-- 5. First ten attendees

SELECT *
FROM attendees
LIMIT 10;



-- 6. Latest ticket purchases

SELECT *
FROM tickets
ORDER BY purchase_date DESC;



-- 7. Top three vendors

SELECT *
FROM vendors
ORDER BY rating DESC
LIMIT 3;