SummerTides Festival Database Project

## Group 5 Presentation

# 1: Title
**Database:** SQLite3

**Team Members:**

Brigid Mukami– Database Architect
Joy Mwongera – SQL Developer
Morgan Ombati – Data Engineer
Hashim Dixon– Query Specialist
James Kusimba – QA Tester
Brigid Mukami – Documentation Lead



# 2: Project Overview

## Problem

The SummerTides Festival managed its information using spreadsheets.

This resulted in:

- Duplicate records
- Missing ticket information
- Poor reporting
- Scheduling conflicts

Our solution was to design a relational database using SQLite.


# 3: Project Objectives

The database allows organizers to:

- Manage attendees
- Manage artists
- Manage ticket sales
- Schedule performances
- Track vendors
- Record sponsor information
- Generate reports



# 4: Database Tables

Our database contains the following tables:

- Attendees
- Tickets
- Artists
- Stages
- Performances
- Vendors
- Sales
- Sponsors
- Stage Sponsors

These tables are connected using Primary Keys and Foreign Keys.



# 5: Database Relationships

Examples of relationships include:

- One attendee can purchase tickets.
- One artist can perform many times.
- One stage hosts many performances.
- Vendors make many sales.
- Sponsors can sponsor multiple stages.

An ER Diagram is included in the project documentation.



# 6: Constraints Used

The project uses the following constraints:

- PRIMARY KEY
- FOREIGN KEY
- NOT NULL
- UNIQUE
- CHECK
- DEFAULT

These constraints help maintain data integrity.



# 7: Sample Data

The database contains realistic festival information including:

- 20 attendees
- 15 artists
- 6 stages
- 30 performances
- 40 tickets
- 10 vendors
- 50 sales
- 8 sponsors



#  8: SQL Queries

The project demonstrates:

- SELECT statements
- Filtering with WHERE
- Sorting using ORDER BY
- CASE statements
- Aggregate Functions
- GROUP BY
- HAVING
- INNER JOIN
- LEFT JOIN


# 9: Business Reports

The database can answer questions such as:

- Which artist performs the most?
- Which stage hosts the most performances?
- Which vendor generated the highest revenue?
- Which attendee spent the most?
- Which ticket type is the most popular?



# 10: Technologies Used

- SQLite3
- SQL
- Visual Studio Code
- Git
- GitHub




# 11: Conclusion

The SummerTides Festival Database successfully replaces spreadsheet management with a structured relational database.

The system improves:

- Data accuracy
- Data consistency
- Reporting
- Festival management
- Decision making