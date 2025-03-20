-- Basic SELECTs
SELECT * FROM Users;
SELECT email, id, country FROM Users WHERE country = 'US' AND email LIKE 'hello%';

-- JOIN Examples
SELECT * FROM Users INNER JOIN Rooms ON Rooms.owner_id = Users.id;
SELECT * FROM Users LEFT JOIN Rooms ON Rooms.owner_id = Users.id;

-- Advanced JOINs
SELECT 
    Users.id AS user_id,
    Rooms.id AS room_id,
    email,
    street
FROM Users
INNER JOIN Rooms ON Rooms.owner_id = Users.id;

-- Bookings Queries
SELECT
    guest_id,
    street,
    check_in
FROM Bookings
INNER JOIN Rooms ON Rooms.id = Bookings.room_id
WHERE guest_id = 1;

SELECT
    room_id,
    guest_id,
    email,
    bio 
FROM Bookings
INNER JOIN Users ON Users.id = guest_id
WHERE room_id = 2;
