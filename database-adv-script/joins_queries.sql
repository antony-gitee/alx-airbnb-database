-- INNER JOIN: Get all bookings and the users who made them
SELECT bookings.id AS booking_id, users.name AS user_name
FROM bookings
INNER JOIN users ON bookings.user_id = users.id;

-- LEFT JOIN: Properties and Reviews (including those with no reviews)
SELECT properties.name AS property_name, reviews.comment
FROM properties
LEFT JOIN reviews ON properties.id = reviews.property_id
ORDER BY properties.id;

-- FULL OUTER JOIN: Get all users and all bookings (even if not linked)
-- For MySQL (which lacks FULL OUTER JOIN), simulate using UNION
SELECT users.name, bookings.id
FROM users
LEFT JOIN bookings ON users.id = bookings.user_id
UNION
SELECT users.name, bookings.id
FROM users
RIGHT JOIN bookings ON users.id = bookings.user_id;
