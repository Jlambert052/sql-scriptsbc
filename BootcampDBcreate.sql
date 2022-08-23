USE master; 

DROP Database IF Exists Bootcamp; 

CREATE Database Bootcamp;

use Bootcamp; 

CREATE Table Students (
    StudentID INT NOT NULL Primary Key Identity(1, 1),
    FirstName varchar(30) NOT NULL,
    LastName varchar(60) NOT NULL,
    City varchar(60) NOT NULL, 
    StateCode char(2) NOT NULL, 
    Phone varchar(60) NOT NULL, 
    Email varchar(100) NULL, 
    DateOfBirth DATE NOT NULL
);
--Create databash and first table script