drop table  if exists books;
create table books(book_id serial primary key,
title varchar(50),
author varchar(100),
genre varchar(50),
published_year INT,
price numeric(10,2),
stock INT
);

Select * from books;

drop table if exists customers;
create table customers (customer_id serial primary key,
name varchar(50),
email varchar(50),
phone varchar(15),
city varchar(50),
country varchar(50)
);

create table orders(order_id serial primary key,
customer_id INT references customers(customer_id),
book_id INT references books(book_id),
order_date date ,
quantity INT,
Total_amount numeric(10,2)
);

Select * from books;
Select * from customers;
Select * from orders;


INSERT INTO books (title, author, genre, published_year, price, stock) VALUES
('The Silent River', 'Ava Thompson', 'Mystery', 2018, 399.99, 12),
('Echoes of Tomorrow', 'Liam Carter', 'Science Fiction', 2020, 499.50, 9),
('Whispers in the Wind', 'Sophia Bennett', 'Romance', 2016, 299.00, 20),
('Beneath the Crimson Sky', 'Noah Brooks', 'Historical Fiction', 2019, 450.25, 14),
('Shadows of Eternity', 'Emma Clark', 'Fantasy', 2021, 520.75, 10),
('Fragments of Light', 'Ethan Hughes', 'Drama', 2015, 280.40, 8),
('The Iron Code', 'Olivia Cooper', 'Thriller', 2022, 610.00, 7),
('Wings of Glass', 'Isabella Reed', 'Fantasy', 2017, 470.10, 18),
('The Forgotten Realm', 'Mason Adams', 'Adventure', 2019, 540.00, 15),
('Chronicles of Dawn', 'Charlotte Evans', 'Fantasy', 2018, 320.75, 25),
('City of Broken Dreams', 'James Lewis', 'Drama', 2020, 350.00, 11),
('The Stolen Horizon', 'Mia Turner', 'Adventure', 2021, 499.99, 9),
('Through the Last Gate', 'Benjamin Price', 'Science Fiction', 2019, 420.30, 16),
('The Violet Garden', 'Amelia Green', 'Romance', 2014, 250.50, 30),
('The Painted Mirror', 'Logan Ward', 'Fantasy', 2022, 620.75, 6),
('Edge of Nowhere', 'Ella Mitchell', 'Thriller', 2017, 380.90, 19),
('Secrets of the Labyrinth', 'Lucas Hill', 'Mystery', 2021, 510.45, 8),
('Ashes of the Empire', 'Harper Scott', 'Historical Fiction', 2016, 450.00, 14),
('Dreamcatcher’s Oath', 'Henry Morgan', 'Fantasy', 2019, 560.50, 10),
('Voices from the Deep', 'Evelyn James', 'Horror', 2018, 390.00, 12),
('Tides of Destiny', 'Michael Gray', 'Adventure', 2020, 470.20, 7),
('A Winter’s Promise', 'Grace Collins', 'Romance', 2019, 320.00, 22),
('The Quantum Paradox', 'Jack Richardson', 'Science Fiction', 2021, 650.75, 5),
('Beneath the Ice', 'Scarlett Ward', 'Thriller', 2018, 410.90, 13),
('Fires of Redemption', 'Daniel Perry', 'Drama', 2017, 360.00, 18),
('The Golden Compass', 'Ella Foster', 'Fantasy', 2019, 490.25, 10),
('House of Secrets', 'Matthew Reed', 'Mystery', 2015, 340.00, 20),
('Shattered Reflections', 'Abigail Gray', 'Psychological Fiction', 2020, 420.00, 15),
('The Neon Horizon', 'Joseph Adams', 'Cyberpunk', 2021, 550.90, 6),
('The Winter’s Crown', 'Victoria Hall', 'Historical Fiction', 2016, 460.25, 13),
('The Lost City', 'Samuel Harris', 'Adventure', 2018, 480.60, 17),
('Echoes of the Past', 'Lily Campbell', 'Drama', 2019, 310.00, 25),
('Beyond the Stars', 'Owen Stewart', 'Science Fiction', 2022, 720.00, 8),
('The Silent Guardian', 'Chloe Phillips', 'Thriller', 2021, 590.50, 11),
('River of Dreams', 'Aiden Morris', 'Romance', 2017, 330.75, 19),
('The Broken Spell', 'Sofia Jenkins', 'Fantasy', 2018, 470.10, 14),
('Cursed by Fire', 'Jacob Carter', 'Fantasy', 2019, 530.20, 10),
('The Haunting of Willow Lake', 'Layla Rogers', 'Horror', 2016, 400.00, 8),
('The Infinite Circle', 'Ethan Howard', 'Science Fiction', 2020, 640.00, 7),
('When the Stars Fade', 'Natalie Allen', 'Romance', 2018, 290.00, 23),
('Darkness Rising', 'Isaac Turner', 'Horror', 2019, 520.75, 9),
('The Red Horizon', 'Madison Young', 'Adventure', 2020, 410.00, 11),
('Whispers of the Forest', 'Andrew Morris', 'Fantasy', 2022, 590.25, 8),
('The Glass Tower', 'Avery Kelly', 'Thriller', 2017, 360.90, 17),
('Into the Abyss', 'Ella Stewart', 'Horror', 2019, 420.00, 15),
('Rise of the Fallen', 'David Morgan', 'Fantasy', 2020, 550.30, 10),
('Ocean of Time', 'Amelia Hill', 'Science Fiction', 2021, 680.75, 6),
('Winds of the West', 'Grace Adams', 'Historical Fiction', 2018, 490.20, 13),
('The Night Circus', 'Arthur Hayes', 'Fantasy', 2016, 440.00, 19),
('The Edge of Shadows', 'Mila Ross', 'Thriller', 2022, 610.50, 7),
('Falling Skies', 'Carter Wright', 'Science Fiction', 2018, 570.90, 10),
('Echo Valley', 'Zoe Campbell', 'Drama', 2019, 310.25, 22),
('The Wandering Soul', 'Nathan Mitchell', 'Fantasy', 2020, 460.50, 12),
('Blood and Ashes', 'Sienna Reed', 'Historical Fiction', 2021, 490.75, 8),
('Voices in the Dark', 'Eli Parker', 'Horror', 2019, 410.10, 16),
('Broken Chains', 'Ava Richardson', 'Drama', 2020, 330.00, 20),
('The Hidden Fortress', 'Mason Bennett', 'Adventure', 2017, 470.60, 18),
('City of Smoke', 'Ella Morris', 'Fantasy', 2021, 590.00, 10),
('Firestorm', 'Daniel Collins', 'Thriller', 2020, 550.90, 9),
('The Last Odyssey', 'Olivia Gray', 'Adventure', 2019, 500.30, 14),
('Beneath the Moon', 'Liam Thompson', 'Romance', 2018, 290.00, 25),
('Dreams of Tomorrow', 'Harper Adams', 'Science Fiction', 2022, 690.00, 7),
('The Secret Heir', 'Sophia Carter', 'Fantasy', 2020, 540.20, 12),
('Crimson Winter', 'Noah Scott', 'Thriller', 2021, 610.50, 8),
('Under the Scarlet Sky', 'Mia Walker', 'Historical Fiction', 2018, 480.25, 13),
('Shattered Skies', 'Benjamin Lewis', 'Science Fiction', 2019, 670.10, 6),
('The Emerald Flame', 'Isabella Turner', 'Fantasy', 2017, 450.90, 18),
('Heart of Shadows', 'Charlotte Morgan', 'Romance', 2021, 320.00, 21),
('Echo Chamber', 'Ethan Evans', 'Drama', 2019, 310.50, 17),
('Rise of the Machines', 'Jacob Perry', 'Science Fiction', 2020, 720.00, 8),
('The Forgotten Path', 'Ava Gray', 'Adventure', 2022, 510.40, 9),
('The Hollow Crown', 'Henry Bennett', 'Historical Fiction', 2016, 460.25, 15),
('Dark Waters', 'Emma Scott', 'Thriller', 2018, 380.75, 10),
('The Crystal Kingdom', 'Liam Cooper', 'Fantasy', 2019, 490.10, 13),
('A Song of Fireflies', 'Grace Hughes', 'Romance', 2017, 310.00, 19),
('The Hidden Truth', 'Lucas Allen', 'Mystery', 2020, 420.00, 11),
('The Burning Sky', 'Mason Ross', 'Adventure', 2018, 480.50, 16),
('The Silver Wolf', 'Sofia Jenkins', 'Fantasy', 2019, 530.25, 10),
('Echoes of Silence', 'Nathan Turner', 'Drama', 2020, 310.90, 22),
('The Clockwork Heart', 'Amelia Adams', 'Steampunk', 2021, 610.00, 8),
('Under the Midnight Sun', 'Michael Brown', 'Historical Fiction', 2018, 470.25, 14),
('Whispering Shadows', 'Avery Lewis', 'Thriller', 2019, 400.00, 12),
('The Eternal Flame', 'Olivia Moore', 'Fantasy', 2020, 520.10, 9),
('City of Illusions', 'James Ross', 'Science Fiction', 2021, 680.90, 7),
('Ashes and Embers', 'Lily Thompson', 'Drama', 2019, 320.25, 17),
('The Scarlet Blade', 'Benjamin Hughes', 'Historical Fiction', 2022, 490.00, 11),
('Dawn of the Phoenix', 'Chloe Ward', 'Fantasy', 2018, 560.75, 9),
('Fallen Kingdom', 'Logan Parker', 'Adventure', 2020, 500.30, 14),
('The Darkened Path', 'Ella Mitchell', 'Thriller', 2021, 610.40, 10),
('Winds of Time', 'Ava Scott', 'Fantasy', 2019, 520.00, 12),
('The Vanishing Point', 'Daniel Ross', 'Mystery', 2020, 440.75, 16),
('Ocean’s Whisper', 'Mia Adams', 'Romance', 2022, 310.00, 18),
('Echo of the Storm', 'Henry Carter', 'Adventure', 2020, 470.25, 11),
('The Lost Horizon', 'Sophia Green', 'Fantasy', 2017, 530.10, 13),
('The Iron Throne', 'Noah Brooks', 'Historical Fiction', 2018, 480.25, 9),
('The Silver Compass', 'Emma Foster', 'Adventure', 2019, 510.00, 15),
('Shadows Over Avalon', 'Benjamin Hill', 'Fantasy', 2021, 620.00, 7),
('The Dark Sun', 'Aiden Lewis', 'Science Fiction', 2022, 700.25, 8),
('The Crimson Queen', 'Grace Evans', 'Fantasy', 2020, 540.00, 9),
('The Lost Empire', 'Liam Allen', 'Adventure', 2018, 490.25, 14),
('The Final Dawn', 'Olivia Scott', 'Science Fiction', 2019, 680.00, 7),
('Moonlight Sonata', 'Charlotte Adams', 'Romance', 2020, 320.50, 23),
('Journey to Oblivion', 'Ethan Perry', 'Adventure', 2021, 510.00, 9),
('The Glass Kingdom', 'Isabella Turner', 'Fantasy', 2022, 590.90, 8),
('Endless Sky', 'Jacob Gray', 'Science Fiction', 2020, 670.00, 7);
Select * from books;
Select * from customers;
select * from orders;

-- Direct Import of Order table and Customers Table from the desktop 
























