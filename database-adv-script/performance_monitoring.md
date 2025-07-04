SELECT * FROM Booking WHERE user_id = 101;

SELECT * FROM Property WHERE city = 'Nairobi';

SELECT COUNT(*) FROM Booking
WHERE start_date BETWEEN '2024-01-01' AND '2024-12-31';

EXPLAIN ANALYZE
SELECT * FROM Booking WHERE user_id = 101;

Seq Scan on Booking  (cost=0.00..1342.00 rows=1 width=72)
  Filter: (user_id = 101)

CREATE INDEX idx_booking_user_id ON Booking(user_id);

CREATE INDEX idx_booking_start_date ON Booking(start_date);

CREATE INDEX idx_property_city ON Property(city);

Index Scan using idx_booking_user_id on Booking ...

# Database Performance Monitoring Report

## Objective
Monitor frequently used SQL queries and improve their performance using `EXPLAIN ANALYZE` and indexing.

---

## 1. Booking by User ID

**Query:**
```sql
SELECT * FROM Booking WHERE user_id = 101;

Seq Scan on Booking
(cost=0.00..1342.00 rows=1 width=72)
Filter: (user_id = 101)

CREATE INDEX idx_booking_user_id ON Booking(user_id);

Index Scan using idx_booking_user_id on Booking

SELECT COUNT(*) FROM Booking
WHERE start_date BETWEEN '2024-01-01' AND '2024-12-31';

Seq Scan on Booking
Filter: (start_date BETWEEN ...)

CREATE INDEX idx_booking_start_date ON Booking(start_date);

SELECT * FROM Property WHERE city = 'Nairobi';

CREATE INDEX idx_property_city ON Property(city);
