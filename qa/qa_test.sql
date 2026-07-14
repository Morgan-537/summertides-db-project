
-- TEST 1: CHECK TABLES EXIST

SELECT name AS table_name
FROM sqlite_master
WHERE type = 'table';


-- TEST 2: CHECK TABLE STRUCTURE

PRAGMA table_info(attendees);

PRAGMA table_info(artists);

PRAGMA table_info(tickets);

PRAGMA table_info(performances);


-- TEST 3: CHECK DATA WAS INSERTED

SELECT COUNT(*) AS total_attendees
FROM attendees;

SELECT COUNT(*) AS total_artists
FROM artists;

SELECT COUNT(*) AS total_performances
FROM performances;

SELECT COUNT(*) AS total_tickets
FROM tickets;


-- TEST 4: CHECK FOREIGN KEY RELATIONSHIP

-- Tickets should have valid attendees
SELECT *
FROM tickets
WHERE attendee_id NOT IN (
    SELECT attendee_id
    FROM attendees
);


-- Performances should have valid artists
SELECT *
FROM performances
WHERE artist_id NOT IN (
    SELECT artist_id
    FROM artists
);


-- Performances should have valid stages
SELECT *
FROM performances
WHERE stage_id NOT IN (
    SELECT stage_id
    FROM stages
);


-- TEST 5: CHECK CONSTRAINTS

SELECT email, COUNT(*) AS duplicates
FROM attendees
GROUP BY email
HAVING COUNT(*) > 1;


-- Ticket prices should be positive
SELECT *
FROM tickets
WHERE price <= 0;


-- Vendor ratings should be between 1 and 5
SELECT *
FROM vendors
WHERE rating < 1
OR rating > 5;


-- TEST 6: VERIFY VIEWS

SELECT *
FROM vip_attendees;


SELECT *
FROM artist_schedule;


SELECT *
FROM vendor_sales_summary;


-- TEST 7: BUSINESS QUERY EXAMPLE

SELECT 
    artists.artist_name,
    stages.stage_name
FROM performances
JOIN artists
ON performances.artist_id = artists.artist_id
JOIN stages
ON performances.stage_id = stages.stage_id;


-- Display VIP ticket holders

SELECT
    attendees.first_name,
    attendees.last_name
FROM attendees
JOIN tickets
ON attendees.attendee_id = tickets.attendee_id
WHERE tickets.ticket_type = 'VIP';