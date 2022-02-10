SELECT properties.*, reservations.*, avg(rating) as average_rating
FROM reservations
JOIN properties ON reservations.property_id = properties.id
JOIN property_reviews ON properties.id = property_reviews.property_id
WHERE reservations.guest_id = 1
AND reservations.end_date < now()::date
GROUP BY properties.id, reservations.id
ORDER BY reservations.start_date
LIMIT 10;




-- I`m totally lost

-- SELECT reservations.*, properties.*, avg(property_reviews.rating) as average_rating

-- FROM reservations
-- JOIN properties ON  properties.id = property_id
-- JOIN property_reviews ON property_id = properties.id

-- WHERE guest_id = 1
-- GROUP BY start_date
-- HAVING  start_date <  now()::date
-- ORDER BY total_reservations DESC
-- LIMIT 10;