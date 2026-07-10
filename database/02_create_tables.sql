CREATE TABLE IF NOT EXISTS Stages (
    stage_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL UNIQUE,
    capacity INTEGER NOT NULL CHECK(capacity > 0),
    location_description TEXT
);

CREATE TABLE IF NOT EXISTS Artists (
    artist_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    genre TEXT,
    contact_email TEXT UNIQUE
);

CREATE TABLE IF NOT EXISTS Performances (
    performance_id INTEGER PRIMARY KEY AUTOINCREMENT,
    stage_id INTEGER NOT NULL,
    artist_id INTEGER NOT NULL,
    start_time TEXT NOT NULL, 
    end_time TEXT NOT NULL,
    FOREIGN KEY (stage_id) REFERENCES Stages(stage_id) ON DELETE CASCADE,
    FOREIGN KEY (artist_id) REFERENCES Artists(artist_id) ON DELETE CASCADE,
    CHECK (end_time > start_time),
    UNIQUE (stage_id, start_time),
    UNIQUE (artist_id, start_time)
);

CREATE TABLE IF NOT EXISTS Attendees (
    attendee_id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    phone TEXT,
    date_of_birth TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS Tickets (
    ticket_id INTEGER PRIMARY KEY AUTOINCREMENT,
    attendee_id INTEGER,
    ticket_type TEXT NOT NULL CHECK(ticket_type IN ('GA_General', 'VIP', 'Single_Day', 'Early_Bird')),
    price REAL NOT NULL CHECK(price >= 0.00),
    purchase_datetime TEXT NOT NULL,
    serial_number TEXT NOT NULL UNIQUE,
    FOREIGN KEY (attendee_id) REFERENCES Attendees(attendee_id) ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS Vendors (
    vendor_id INTEGER PRIMARY KEY AUTOINCREMENT,
    business_name TEXT NOT NULL,
    vendor_type TEXT NOT NULL CHECK(vendor_type IN ('Food', 'Beverage', 'Merchandise', 'Services')),
    booth_number TEXT NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS Sales (
    sale_id INTEGER PRIMARY KEY AUTOINCREMENT,
    vendor_id INTEGER NOT NULL,
    attendee_id INTEGER,
    transaction_time TEXT NOT NULL,
    total_amount REAL NOT NULL CHECK(total_amount >= 0.00),
    FOREIGN KEY (vendor_id) REFERENCES Vendors(vendor_id) ON DELETE CASCADE,
    FOREIGN KEY (attendee_id) REFERENCES Attendees(attendee_id) ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS Sponsors (
    sponsor_id INTEGER PRIMARY KEY AUTOINCREMENT,
    company_name TEXT NOT NULL UNIQUE,
    tier TEXT NOT NULL CHECK(tier IN ('Headline', 'Platinum', 'Gold', 'Silver')),
    funding_amount REAL NOT NULL CHECK(funding_amount > 0.00)
);

CREATE TABLE IF NOT EXISTS Stage_Sponsors (
    stage_sponsor_id INTEGER PRIMARY KEY AUTOINCREMENT,
    stage_id INTEGER NOT NULL,
    sponsor_id INTEGER NOT NULL,
    branding_type TEXT,
    FOREIGN KEY (stage_id) REFERENCES Stages(stage_id) ON DELETE CASCADE,
    FOREIGN KEY (sponsor_id) REFERENCES Sponsors(sponsor_id) ON DELETE CASCADE,
    UNIQUE (stage_id, sponsor_id)
);