CREATE DATABASE Movie_reviews;

CREATE TABLE movies (
    id INT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    release_year INT,
    genre VARCHAR(255),
    director VARCHAR(255),
    description TEXT
);

CREATE TABLE users (
    id INT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE reviews (
    id INT PRIMARY KEY,
    movie_id INT,
    user_id INT,
    rating DECIMAL(2,1),
    comment TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (movie_id) REFERENCES movies(id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

INSERT INTO users (id, username, email, password) VALUES
(1, 'John123', 'john@example.com', 'pass123'),
(2, 'MaryJaneJK', 'mary@example.com', 'abc456'),
(3, 'CharlesLOL', 'james@example.com', 'qwerty1'),
(4, 'Cheese_123_Cheese', 'sarah@example.com', 'password123'),
(5, 'HEE_HEE', 'michael@example.com', 'hello123'),
(6, 'ReviewMaster', 'emily@example.com', 'test456'),
(7, 'ManOfTheSheep', 'david@example.com', 'securepass'),
(8, 'Lorane_xXx_Jen', 'jennifer@example.com', 'pass1234'),
(9, 'Robot_maham', 'robert@example.com', 'abcd1234'),
(10, 'TheMol', 'linda@example.com', 'password456');

INSERT INTO movies (id, title, release_year, genre, director, description) VALUES
(1, 'The Shawshank Redemption', 1994, 'Drama', 'Frank Darabont', 'Two imprisoned men bond over several years, finding solace and eventual redemption through acts of common decency.'),
(2, 'The Godfather', 1972, 'Crime, Drama', 'Francis Ford Coppola', 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.'),
(3, 'Pulp Fiction', 1994, 'Crime, Drama', 'Quentin Tarantino', 'The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.'),
(4, 'The Dark Knight', 2008, 'Action, Crime, Drama', 'Christopher Nolan', 'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.'),
(5, 'Fight Club', 1999, 'Drama', 'David Fincher', 'An insomniac office worker and a devil-may-care soapmaker form an underground fight club that evolves into something much, much more.'),
(6, 'Goodfellas', 1990, 'Biography, Crime, Drama', 'Martin Scorsese', 'The story of Henry Hill and his life in the mob, covering his relationship with his wife Karen Hill and his mob partners Jimmy Conway and Tommy DeVito in the Italian-American crime syndicate.'),
(7, 'Inception', 2010, 'Action, Adventure, Sci-Fi', 'Christopher Nolan', 'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.'),
(8, 'The Matrix', 1999, 'Action, Sci-Fi', 'Lana Wachowski, Lilly Wachowski', 'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.'),
(9, 'The Lord of the Rings: The Fellowship of the Ring', 2001, 'Action, Adventure, Drama', 'Peter Jackson', 'A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron.'),
(10, 'Forrest Gump', 1994, 'Drama, Romance', 'Robert Zemeckis', 'The presidencies of Kennedy and Johnson, the events of Vietnam, Watergate, and other historical events unfold through the perspective of an Alabama man with an IQ of 75.');

INSERT INTO reviews (id, movie_id, user_id, rating, comment, created_at) VALUES
(1, 1, 1, 4.5, 'An absolute masterpiece! The Shawshank Redemption is a powerful and deeply moving film that will stay with you long after it ends.', '2001-05-12'),
(2, 2, 1, 5, 'One of the greatest movies ever made. The performances, storytelling, and themes are simply outstanding.', '2001-05-12'),
(3, 5, 2, 4, 'The Godfather is a cinematic masterpiece. The performances are top-notch, and the story is gripping from start to finish.', '2001-05-12'),
(4, 8, 2, 4.5, 'A classic crime drama that never fails to impress. The Godfather is a must-watch for any film enthusiast.', '2001-05-12'),
(5, 3, 3, 5, 'Pulp Fiction is a groundbreaking film that redefined the crime genre. The nonlinear storytelling and memorable characters make it a true masterpiece.', '2001-05-12'),
(6, 6, 3, 4, 'A wild and unpredictable ride! Pulp Fiction is filled with memorable dialogue and unforgettable moments.', '2001-05-12'),
(7, 10, 4, 5, 'The Dark Knight is a stunning achievement in filmmaking. Heath Ledger delivers a mesmerizing performance as the Joker.', '2001-05-12'),
(8, 5, 4, 4.5, 'A dark and gritty superhero film that raises the bar for the genre. The Dark Knight is a thrilling and intense experience.', '2001-05-12'),
(9, 6, 5, 4, 'Fight Club is a thought-provoking film that challenges societal norms. The performances and twists keep you engaged throughout.', '2001-05-12'),
(10, 8, 5, 4.5, 'An edgy and mind-bending film that leaves a lasting impression. Fight Club is a cult classic.', '2001-05-12'),
(11, 9, 6, 4.5, 'Goodfellas is a gripping crime drama with exceptional performances and expert direction.', '2001-05-12'),
(12, 5, 6, 4, 'Martin Scorseses Goodfellas is a masterclass in storytelling. The characters and their relationships are incredibly well-developed.', '2001-05-12'),
(13, 4, 7, 5, 'Inception is a mind-bending and visually stunning film. Christopher Nolans direction is nothing short of genius.', '2001-05-12'),
(14, 4, 7, 4, 'An ambitious and captivating film that keeps you guessing until the very end. Inception is a true cinematic gem.', '2001-05-12'),
(15, 5, 8, 5, 'The Matrix is a groundbreaking sci-fi film with revolutionary visual effects. It will leave you questioning the nature of reality.', '2001-05-12'),
(16, 1, 8, 4.5, 'A mind-bending and action-packed film that delivers on every level. The Matrix is a true sci-fi classic.', '2001-04-06'),
(17, 10, 9, 4.5, 'The Lord of the Rings: The Fellowship of the Ring is an epic fantasy adventure. The world-building and characters are captivating.', '2012-05-12'),
(18, 8, 9, 4, 'Peter Jacksons adaptation of The Lord of the Rings is a triumph. The Fellowship of the Ring sets the stage for an epic journey.', '2011-11-11'),
(19, 9, 10, 4, 'Forrest Gump is a heartwarming and emotionally resonant film. Tom Hanks delivers a brilliant performance as Forrest.', '2020-12-05'),
(20, 4, 10, 5, 'A timeless classic that will make you laugh, cry, and reflect on life. Forrest Gump is a true gem.', '2004-10-02');