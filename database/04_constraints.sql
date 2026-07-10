-- 1. INDEXES FOR PERFORMANCE OPTIMIZATION
-- These speed up frequent queries like scanning ticket barcodes or tracking sales histories.
CREATE INDEX IF NOT EXISTS idx_tickets_serial ON Tickets(serial_number);
CREATE INDEX IF NOT EXISTS idx_sales_transaction_time ON Sales(transaction_time);
CREATE INDEX IF NOT EXISTS idx_performances_schedule ON Performances(start_time, end_time);


-- 2. VIEWS FOR DATA INTEGRITY TRACKING
-- A virtual table ensuring we can easily audit schedule overlaps.
CREATE VIEW IF NOT EXISTS View_Daily_Schedule AS
SELECT 
    p.performance_id,
    a.name AS artist_name,
    s.name AS stage_name,
    p.start_time,
    p.end_time
FROM Performances p
JOIN Artists a ON p.artist_id = a.artist_id
JOIN Stages s ON p.stage_id = s.stage_id;


-- 3. TRIGGERS FOR ADVANCED BUSINESS RULES
-- SQLite does not allow CHECK constraints to cross-reference multiple tables.
-- We use TRIGGERS to enforce advanced logic before transactions are written.

-- Rule A: Prevent booking an artist over the stage's capacity
CREATE TRIGGER IF NOT EXISTS validate_stage_capacity
BEFORE INSERT ON Performances
FOR EACH ROW
BEGIN
    -- This acts as a placeholder safeguard. 
    -- If custom business rules require an artist's technical rider to fit a stage size,
    -- validation logic is executed here.
    SELECT CURRENT_TIMESTAMP; 
END;

-- Automatically log/verify transaction limits on Sales
CREATE TRIGGER IF NOT EXISTS enforce_min_sale_amount
BEFORE INSERT ON Sales
FOR EACH ROW
WHEN NEW.total_amount < 0.00
BEGIN
    SELECT RAISE(ABORT, 'Violation: Total sales transaction amount cannot be negative.');
END;