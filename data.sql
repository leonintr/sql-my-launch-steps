-- Insert Users
INSERT INTO Users (email, bio, country) VALUES
('hello@world.com', 'Hello, World!', 'US'),
('grillzwj@world.com', 'foo!', 'US'),
('elgallo@mundo.com', 'Que rollo mundo!', 'MX'),
('bonjour@monde.com', 'Bonjour, Monde!', 'FR');

-- Insert Rooms
INSERT INTO Rooms (owner_id, street) VALUES
(1, '123 Main St'),
(1, '456 Elm St'),
(1, '15 La Redonda Queretaro'),
(1, '102 Don Pollo House');

-- Insert Bookings (example)
INSERT INTO Bookings (guest_id, room_id, check_in) VALUES
(1, 1, NOW()),
(2, 2, NOW());
