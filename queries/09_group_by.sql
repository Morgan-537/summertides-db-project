-- 1. Count attendees

SELECT COUNT(*) AS total_attendees
FROM attendees;



-- 2. Average ticket price

SELECT AVG(price) AS average_ticket_price
FROM tickets;



-- 3. Highest and lowest ticket prices

SELECT

MAX(price) AS highest_price,

MIN(price) AS lowest_price

FROM tickets;



-- 4. Attendees per city

SELECT

city,

COUNT(*) AS number_of_attendees

FROM attendees

GROUP BY city;



-- 5. Artists per genre

SELECT

genre,

COUNT(*) AS total_artists

FROM artists

GROUP BY genre;



-- 6. Total sales per vendor

SELECT

vendors.vendor_name,

SUM(sales.amount) AS total_sales

FROM vendors

JOIN sales

ON vendors.vendor_id=sales.vendor_id

GROUP BY vendors.vendor_name;



-- 7. Ticket sales by date

SELECT

purchase_date,

COUNT(*) AS tickets_sold

FROM tickets

GROUP BY purchase_date;



-- 8. Vendors earning above 5000

SELECT

vendors.vendor_name,

SUM(sales.amount) AS revenue

FROM vendors

JOIN sales

ON vendors.vendor_id=sales.vendor_id

GROUP BY vendors.vendor_name

HAVING revenue > 5000;