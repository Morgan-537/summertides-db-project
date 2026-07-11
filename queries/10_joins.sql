-- 1. Attendees with ticket information

SELECT

attendees.first_name,
attendees.last_name,
tickets.ticket_type,
tickets.price

FROM attendees

INNER JOIN tickets

ON attendees.attendee_id=tickets.attendee_id;



-- 2. Artists and stages

SELECT

artists.artist_name,
stages.stage_name

FROM performances

JOIN artists

ON performances.artist_id=artists.artist_id

JOIN stages

ON performances.stage_id=stages.stage_id;



-- 3. Performance schedule

SELECT

artists.artist_name,
stages.stage_name,
performances.performance_date,
performances.start_time

FROM performances

JOIN artists
ON performances.artist_id=artists.artist_id

JOIN stages
ON performances.stage_id=stages.stage_id;



-- 4. Vendors and buyers

SELECT

vendors.vendor_name,

attendees.first_name

FROM sales

JOIN vendors

ON sales.vendor_id=vendors.vendor_id

JOIN attendees

ON sales.attendee_id=attendees.attendee_id;



-- 5. Sponsors and stages

SELECT

sponsors.sponsor_name,

stages.stage_name

FROM stage_sponsors

JOIN sponsors

ON stage_sponsors.sponsor_id=sponsors.sponsor_id

JOIN stages

ON stage_sponsors.stage_id=stages.stage_id;



-- 6. Artists without performances

SELECT

artists.artist_name

FROM artists

LEFT JOIN performances

ON artists.artist_id=performances.artist_id

WHERE performances.artist_id IS NULL;



-- 7. Performances on selected day

SELECT *

FROM performances

WHERE performance_date='2026-08-01';