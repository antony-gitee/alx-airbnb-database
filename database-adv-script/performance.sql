-- Original unoptimized query
SELECT 
  bookings.id AS booking_id,
  users.name AS user_name,
  properties.name AS property_name,
  payments.amount AS payment_amount
FROM bookings
JOIN users ON bookings.user_id = users.id
JOIN properties ON bookings.property_id = properties.id
JOIN payments ON bookings.id = payments.booking_id;
