-- INNER JOIN: Get bookings with their users
SELECT b.id AS booking_id, u.id AS user_id, u.name, b.date
FROM bookings b
INNER JOIN users u ON b.user_id = u.id;

-- LEFT JOIN: Get properties with reviews, including those without reviews
SELECT p.id AS property_id, p.name, r.rating, r.comment
FROM properties p
LEFT JOIN reviews r ON p.id = r.property_id;

-- FULL OUTER JOIN: Get all users and bookings, even unmatched ones
SELECT u.id AS user_id, u.name, b.id AS booking_id, b.date
FROM users u
LEFT JOIN bookings b ON u.id = b.user_id
UNION
SELECT u.id AS user_id, u.name, b.id AS booking_id, b.date
FROM users u
RIGHT JOIN bookings b ON u.id = b.user_id;

