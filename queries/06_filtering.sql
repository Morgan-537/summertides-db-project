-- 1. Attendees older than 25

SELECT *
FROM attendees
WHERE age > 25;



-- 2. Attendees from Nairobi

SELECT *
FROM attendees
WHERE city = 'Nairobi';



-- 3. Display VIP tickets

SELECT *
FROM tickets
WHERE ticket_type = 'VIP';



-- 4. Tickets costing more than 5000

SELECT *
FROM tickets
WHERE price > 5000;



-- 5. Artists from Kenya

SELECT *
FROM artists
WHERE country = 'Kenya';



-- 6. Vendors rating above 4

SELECT *
FROM vendors
WHERE rating > 4;



-- 7. Names starting with A

SELECT *
FROM attendees
WHERE first_name LIKE 'A%';



-- 8. Performances between 6PM and 10PM

SELECT *
FROM performances
WHERE start_time BETWEEN '18:00'
AND '22:00';



-- 9. Tickets purchased on a specific date

SELECT *
FROM tickets
WHERE purchase_date = '2026-01-01';



-- 10. Attendees with missing phone numbers

SELECT *
FROM attendees
WHERE phone IS NULL;

-- 11. Attendees older than 25 AND from Nairobi

SELECT *
FROM attendees
WHERE age > 25
AND city = 'Nairobi';



-- 12. Artists from Kenya OR Tanzania

SELECT *
FROM artists
WHERE country = 'Kenya'
OR country = 'Tanzania';



-- 13. Tickets that are NOT Student tickets

SELECT *
FROM tickets
WHERE NOT ticket_type = 'Student';



-- 14. Attendees from Nairobi, Kisumu, or Mombasa

SELECT *
FROM attendees
WHERE city IN ('Nairobi', 'Kisumu', 'Mombasa');