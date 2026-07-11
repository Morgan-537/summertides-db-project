-- =====================================================
-- Reusable Views
-- =====================================================



-- VIEW 1: VIP attendees

CREATE VIEW vip_attendees AS


SELECT

attendees.first_name,
attendees.last_name,
tickets.ticket_type

FROM attendees

JOIN tickets

ON attendees.attendee_id=tickets.attendee_id

WHERE tickets.ticket_type='VIP';



-- Test view

SELECT *
FROM vip_attendees;




-- VIEW 2: Artist schedule

CREATE VIEW artist_schedule AS


SELECT

artists.artist_name,

stages.stage_name,

performances.performance_date,

performances.start_time,

performances.end_time


FROM performances

JOIN artists

ON performances.artist_id=artists.artist_id

JOIN stages

ON performances.stage_id=stages.stage_id;




-- Test view

SELECT *
FROM artist_schedule;




-- VIEW 3: Vendor sales summary

CREATE VIEW vendor_sales_summary AS


SELECT

vendors.vendor_name,

SUM(sales.amount) AS total_sales,

AVG(sales.amount) AS average_sale,

COUNT(sales.sale_id) AS transactions


FROM vendors

JOIN sales

ON vendors.vendor_id=sales.vendor_id


GROUP BY vendors.vendor_name;



-- Test view

SELECT *
FROM vendor_sales_summary;