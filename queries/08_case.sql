-- 1. Ticket price categories

SELECT

ticket_type,
price,

CASE

WHEN price < 3000 THEN 'Budget'

WHEN price BETWEEN 3000 AND 6000 THEN 'Standard'

ELSE 'VIP'

END AS category


FROM tickets;



-- 2. Classify attendees by age

SELECT

first_name,
age,

CASE

WHEN age < 25 THEN 'Youth'

WHEN age BETWEEN 25 AND 40 THEN 'Adult'

ELSE 'Senior'

END AS age_group


FROM attendees;



-- 3. Vendor rating categories

SELECT

vendor_name,
rating,

CASE

WHEN rating >= 4.5 THEN 'Excellent'

WHEN rating >= 3 THEN 'Good'

ELSE 'Needs Improvement'

END AS rating_category


FROM vendors;



-- 4. Local or international artists

SELECT

artist_name,
country,

CASE

WHEN country='Kenya'
THEN 'Local'

ELSE 'International'

END AS artist_type


FROM artists;