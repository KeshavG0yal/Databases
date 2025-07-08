USE master;
DROP DATABASE IF EXISTS KG_vgsales_db;
CREATE DATABASE KG_vgsales_db;
GO
USE KG_db;
GO


DROP TABLE IF EXISTS game_sales_staging;
CREATE TABLE game_sales_staging (
    game_name VARCHAR(100) NOT NULL,
    platform VARCHAR(50) NOT NULL,
    year_released INT,
    genre VARCHAR(50),
    publisher VARCHAR(50),
    NA_Sales FLOAT,
    EU_Sales FLOAT,
    JP_Sales FLOAT,
    Other_Sales FLOAT,
    Global_Sales FLOAT
);

BULK INSERT game_sales_staging
FROM 'INFO 330/Assignment4/vgsales.txt'
WITH (
    FIELDTERMINATOR = '\t',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2,
    BATCHSIZE = 250000,
    MAXERRORS = 5
);

DROP TABLE IF EXISTS #temp_game_sales;
SELECT game_name, platform, year_released, genre, publisher, region, sales
INTO #temp_game_sales
FROM (
    SELECT game_name, platform, year_released, genre, publisher,
           NA_Sales, EU_Sales, JP_Sales, Other_Sales
    FROM game_sales_staging
) AS source
UNPIVOT (
    sales FOR region IN (NA_Sales, EU_Sales, JP_Sales, Other_Sales)
) AS unpivoted;

-- Genres
DROP TABLE IF EXISTS Genres;
CREATE TABLE Genres (
    genre_id INT PRIMARY KEY IDENTITY(1,1),
    genre VARCHAR(50)
);
INSERT INTO Genres (genre)
SELECT DISTINCT genre
FROM game_sales_staging
WHERE genre IS NOT NULL;

-- Publishers
DROP TABLE IF EXISTS Publishers;
CREATE TABLE Publishers (
    publisher_id INT PRIMARY KEY IDENTITY(1,1),
    publisher VARCHAR(50)
);
INSERT INTO Publishers (publisher)
SELECT DISTINCT publisher
FROM game_sales_staging
WHERE publisher IS NOT NULL;

-- Platforms
DROP TABLE IF EXISTS Platforms;
CREATE TABLE Platforms (
    platform_id INT PRIMARY KEY IDENTITY(1,1),
    platform VARCHAR(50) NOT NULL
);
INSERT INTO Platforms (platform)
SELECT DISTINCT platform
FROM game_sales_staging;

-- Regions
DROP TABLE IF EXISTS Regions;
CREATE TABLE Regions (
    region_id INT PRIMARY KEY IDENTITY(1,1),
    region_name VARCHAR(20)
);
INSERT INTO Regions (region_name)
VALUES ('North America'), ('Europe'), ('Japan'), ('Other');

DROP TABLE IF EXISTS Games;
CREATE TABLE Games (
    game_id INT PRIMARY KEY IDENTITY(1,1),
    game_name VARCHAR(100) NOT NULL,
    year_released INT,
    genre_id INT,
    publisher_id INT
);
INSERT INTO Games (game_name, year_released, genre_id, publisher_id)
SELECT DISTINCT t.game_name, t.year_released,
       g.genre_id, p.publisher_id
FROM game_sales_staging t
LEFT JOIN Genres g ON t.genre = g.genre
LEFT JOIN Publishers p ON t.publisher = p.publisher;

DROP TABLE IF EXISTS Game_Sales;
CREATE TABLE Game_Sales (
    sale_id INT PRIMARY KEY IDENTITY(1,1),
    game_id INT,
    platform_id INT,
    region_id INT,
    sales FLOAT
);
INSERT INTO Game_Sales (game_id, platform_id, region_id, sales)
SELECT g.game_id, p.platform_id, r.region_id, t.sales
FROM #temp_game_sales t
JOIN Games g ON t.game_name = g.game_name AND t.year_released = g.year_released
JOIN Platforms p ON t.platform = p.platform
JOIN Regions r ON t.region = CASE 
    WHEN t.region = 'NA_Sales' THEN 'North America'
    WHEN t.region = 'EU_Sales' THEN 'Europe'
    WHEN t.region = 'JP_Sales' THEN 'Japan'
    WHEN t.region = 'Other_Sales' THEN 'Other'
END;

ALTER TABLE Games
ADD CONSTRAINT fk_genre_id FOREIGN KEY (genre_id) REFERENCES Genres(genre_id);

ALTER TABLE Games
ADD CONSTRAINT fk_publisher_id FOREIGN KEY (publisher_id) REFERENCES Publishers(publisher_id);

ALTER TABLE Game_Sales
ADD CONSTRAINT fk_game_id FOREIGN KEY (game_id) REFERENCES Games(game_id);

ALTER TABLE Game_Sales
ADD CONSTRAINT fk_platform_id FOREIGN KEY (platform_id) REFERENCES Platforms(platform_id);

ALTER TABLE Game_Sales
ADD CONSTRAINT fk_region_id FOREIGN KEY (region_id) REFERENCES Regions(region_id);