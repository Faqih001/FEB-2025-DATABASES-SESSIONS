-- Create the MovieDB database
CREATE DATABASE MovieDB;

-- Use the newly created database
USE MovieDB;

-- Create the Actors table
CREATE TABLE Actors (
    id INT IDENTITY(1,1) PRIMARY KEY,  -- Unique ID for each actor
    name VARCHAR(100) NOT NULL,         -- Actor's name
    age INT NOT NULL                    -- Actor's age
);

-- Create the Movies table
CREATE TABLE Movies (
    id INT IDENTITY(1,1) PRIMARY KEY,  -- Unique ID for each movie
    title VARCHAR(255) NOT NULL,        -- Movie title
    year INT NOT NULL                   -- Release year
);

-- Insert sample data into Actors table
INSERT INTO Actors (name, age) VALUES 
('Leonardo DiCaprio', 49),
('Scarlett Johansson', 39),
('Robert Downey Jr.', 58);

-- Insert sample data into Movies table
INSERT INTO Movies (title, year) VALUES 
('Inception', 2010),
('Avengers: Endgame', 2019),
('Iron Man', 2008);

-- Query to list all actors
SELECT * FROM Actors;

-- Query to find all movies released after 2010
SELECT * FROM Movies WHERE year > 2010;

-- Query to find an actor by name
SELECT * FROM Actors WHERE name = 'Leonardo DiCaprio';

-- Query to find a movie by title
SELECT * FROM Movies WHERE title = 'Iron Man';