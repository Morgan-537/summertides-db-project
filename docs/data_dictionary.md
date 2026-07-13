# 1. Attendees

Stores details of people attending the festival.

Main fields:
- attendee_id (Primary Key) - unique attendee identifier
- first_name, last_name - attendee names
- email - attendee contact email (unique)
- phone - phone number
- age - attendee age
- city - attendee location


# 2. Artists

Stores information about festival performers.

Main fields:
- artist_id (Primary Key) - unique artist identifier
- artist_name - performer or group name
- genre - music category
- country - artist origin


# 3. Stages

Stores information about festival performance locations.

Main fields:
- stage_id (Primary Key) - unique stage identifier
- stage_name - name of the stage
- location - stage location


# 4. Performances

Stores the schedule of artist performances.

Main fields:
- performance_id (Primary Key) - unique performance identifier
- artist_id (Foreign Key) - links performance to an artist
- stage_id (Foreign Key) - links performance to a stage
- performance_date - date of performance
- start_time and end_time - performance duration

# 5. Tickets

Stores ticket information for attendees.

Main fields:
- ticket_id (Primary Key) - unique ticket identifier
- attendee_id (Foreign Key) - links ticket to attendee
- ticket_type - ticket category (VIP or regular)
- price - ticket cost
- purchase_date - date purchased


# 6. Vendors

Stores festival vendors and their details.

Main fields:
- vendor_id (Primary Key) - unique vendor identifier
- vendor_name - vendor business name
- category - type of goods/services provided
- rating - vendor rating


# 7. Sales

Stores sales made by vendors.

Main fields:
- sale_id (Primary Key) - unique sale identifier
- vendor_id (Foreign Key) - links sales to vendors
- amount - sale value
- sale_date - date of transaction


# 8. Sponsors

Stores festival sponsors.

Main fields:
- sponsor_id (Primary Key) - unique sponsor identifier
- sponsor_name - sponsor company name
- contribution - sponsorship amount


# 9. Stage Sponsors

Connects sponsors with festival stages.

Main fields:
- stage_sponsor_id (Primary Key)
- stage_id (Foreign Key) - sponsored stage
- sponsor_id (Foreign Key) - linked sponsor



# Database Relationships

- One attendee can have many tickets.
- One artist can have many performances.
- One stage can host many performances.
- One vendor can have many sales.
- Sponsors and stages have a many-to-many relationship through the stage_sponsors table.