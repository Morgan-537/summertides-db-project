PRAGMA foreign_keys = ON;


-- ATTENDEES TABLE

CREATE TABLE attendees(

    attendee_id INTEGER PRIMARY KEY AUTOINCREMENT,

    first_name TEXT NOT NULL,

    last_name TEXT NOT NULL,

    email TEXT UNIQUE NOT NULL,

    phone TEXT,

    age INTEGER CHECK(age > 0),

    city TEXT NOT NULL

);



-- TICKETS TABLE

CREATE TABLE tickets(

    ticket_id INTEGER PRIMARY KEY AUTOINCREMENT,

    attendee_id INTEGER NOT NULL,

    ticket_type TEXT NOT NULL,

    price REAL CHECK(price > 0),

    purchase_date TEXT DEFAULT CURRENT_DATE,


    FOREIGN KEY(attendee_id)
    REFERENCES attendees(attendee_id)

);

-- ARTISTS TABLE

CREATE TABLE artists(

    artist_id INTEGER PRIMARY KEY AUTOINCREMENT,

    artist_name TEXT NOT NULL,

    genre TEXT,

    country TEXT NOT NULL

);


-- STAGES TABLE

CREATE TABLE stages(

    stage_id INTEGER PRIMARY KEY AUTOINCREMENT,

    stage_name TEXT NOT NULL UNIQUE,

    location TEXT NOT NULL

);

-- PERFORMANCES TABLE

CREATE TABLE performances(

    performance_id INTEGER PRIMARY KEY AUTOINCREMENT,

    artist_id INTEGER NOT NULL,

    stage_id INTEGER NOT NULL,

    performance_date TEXT NOT NULL,

    start_time TEXT NOT NULL,

    end_time TEXT NOT NULL,


    FOREIGN KEY(artist_id)
    REFERENCES artists(artist_id),


    FOREIGN KEY(stage_id)
    REFERENCES stages(stage_id)

);

-- VENDORS TABLE

CREATE TABLE vendors(

    vendor_id INTEGER PRIMARY KEY AUTOINCREMENT,

    vendor_name TEXT NOT NULL,

    category TEXT,

    rating REAL CHECK(rating BETWEEN 1 AND 5)

);



-- SALES TABLE

CREATE TABLE sales(

    sale_id INTEGER PRIMARY KEY AUTOINCREMENT,

    vendor_id INTEGER,

    attendee_id INTEGER,

    amount REAL CHECK(amount > 0),

    sale_date TEXT DEFAULT CURRENT_DATE,


    FOREIGN KEY(vendor_id)
    REFERENCES vendors(vendor_id),


    FOREIGN KEY(attendee_id)
    REFERENCES attendees(attendee_id)

);


-- SPONSORS TABLE

CREATE TABLE sponsors(

    sponsor_id INTEGER PRIMARY KEY AUTOINCREMENT,

    sponsor_name TEXT NOT NULL,

    contribution REAL

);



-- STAGE SPONSORS TABLE

CREATE TABLE stage_sponsors(

    stage_sponsor_id INTEGER PRIMARY KEY AUTOINCREMENT,

    stage_id INTEGER,

    sponsor_id INTEGER,


    FOREIGN KEY(stage_id)
    REFERENCES stages(stage_id),


    FOREIGN KEY(sponsor_id)
    REFERENCES sponsors(sponsor_id)

);



