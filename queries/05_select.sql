-- 1. Display all attendees

SELECT *
FROM attendees;



-- 2. Display all artists

SELECT *
FROM artists;



-- 3. Display attendee names and emails only

SELECT 
first_name,
last_name,
email
FROM attendees;



-- 4. Display unique cities

SELECT DISTINCT city
FROM attendees;



-- 5. Rename columns using aliases

SELECT

first_name AS "First Name",
last_name AS "Last Name",
email AS "Email Address"
FROM attendees;



-- 6. Retrieve all ticket types

SELECT DISTINCT ticket_type
FROM tickets;



-- 7. Display all vendors

SELECT *
FROM vendors;



-- 8. Display all stages

SELECT *
FROM stages;