-- Index on user_id in Booking table
CREATE INDEX idx_booking_user_id ON Booking(user_id);

-- Index on property_id in Booking table
CREATE INDEX idx_booking_property_id ON Booking(property_id);

-- Index on email in User table
CREATE INDEX idx_user_email ON User(email);
EXPLAIN SELECT * FROM Booking WHERE user_id = 3;
