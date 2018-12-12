CREATE DATABASE Museums_db;

USE Museums_db;

CREATE TABLE Museum_Directory (
Museum_Name VARCHAR(255) PRIMARY KEY,
Museum_ID VARCHAR(100),
State TEXT
);

CREATE TABLE Museum_Reviews (
Museum_Name VARCHAR(255) PRIMARY KEY,
Rating FLOAT
);

SELECT md.Museum_Name, md.Museum_ID, md.State, mr.Rating
FROM Museum_Directory md
JOIN Museum_Reviews mr
ON md.Museum_Name = mr.Museum_Name
