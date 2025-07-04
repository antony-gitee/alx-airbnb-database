-- Step 1: Rename the original Booking table
ALTER TABLE Booking RENAME TO Booking_original;

-- Step 2: Create partitioned parent table
CREATE TABLE Booking (
    id SERIAL PRIMARY KEY,
    user_id INT,
    property_id INT,
    start_date DATE,
    end_date DATE,
    total_price NUMERIC
) PARTITION BY RANGE (start_date);

-- Step 3: Create partitions (year-based)
CREATE TABLE Booking_2023 PARTITION OF Booking
    FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

CREATE TABLE Booking_2024 PARTITION OF Booking
    FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

CREATE TABLE Booking_2025 PARTITION OF Booking
    FOR VALUES FROM ('2025-01-01') TO ('2026-01-01');

-- Step 4: Migrate data from old table
INSERT INTO Booking (id, user_id, property_id, start_date, end_date, total_price)
SELECT id, user_id, property_id, start_date, end_date, total_price
FROM Booking_original;

-- Example query to test performance
EXPLAIN ANALYZE
SELECT * FROM Booking
WHERE start_date BETWEEN '2024-03-01' AND '2024-03-31';
