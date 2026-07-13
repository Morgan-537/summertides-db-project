-- =====================================================
-- Bonus business questions
-- =====================================================


-- 1. Artist with most performances

SELECT

artists.artist_name,

COUNT(*) AS performances

FROM performances

JOIN artists

ON performances.artist_id=artists.artist_id

GROUP BY artists.artist_name

ORDER BY performances DESC

LIMIT 1;



-- 2. Stage with most performances

SELECT

stages.stage_name,

COUNT(*) AS total

FROM performances

JOIN stages

ON performances.stage_id=stages.stage_id

GROUP BY stages.stage_name

ORDER BY total DESC

LIMIT 1;



-- 3. Highest earning vendor

SELECT

vendors.vendor_name,

SUM(sales.amount) AS revenue

FROM vendors

JOIN sales

ON vendors.vendor_id=sales.vendor_id

GROUP BY vendors.vendor_name

ORDER BY revenue DESC

LIMIT 1;



-- 4. Biggest spender

SELECT

attendees.first_name,

SUM(sales.amount) AS spending

FROM sales

JOIN attendees

ON sales.attendee_id=attendees.attendee_id

GROUP BY attendees.attendee_id

ORDER BY spending DESC

LIMIT 1;



-- 5. Most popular ticket type

SELECT

ticket_type,

COUNT(*) AS total

FROM tickets

GROUP BY ticket_type

ORDER BY total DESC

LIMIT 1;