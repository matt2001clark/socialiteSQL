/*
    TO DO:
    -- NEED TO FIND A WAY TO STOP ENTRY INTO REPS IF REPSTATUS IS FALSE VICE VERSA WITH MEMBERS
       OTHERWISE FOLLOW INLINE COMMENTS AFTER RepStatus
    -- FOR LIST ALL EVENTS CAP DETAILS TO AROUND 20 CHARACTERS
*/

/*
-- CREATION OF TABLES AND TYPES, INSERTION OF EXAMPLE DATA
*/

/* Drop all pre-existing tables */
DROP TABLE IF EXISTS Reps CASCADE;
DROP TABLE IF EXISTS Members CASCADE;
DROP TABLE IF EXISTS Societies CASCADE;
DROP TABLE IF EXISTS Venues CASCADE;
DROP TABLE IF EXISTS Events CASCADE;
DROP TABLE IF EXISTS Guestlist CASCADE;
DROP TABLE IF EXISTS Posts CASCADE;
DROP TABLE IF EXISTS Mapping CASCADE;

CREATE TABLE Members (
StudentID INT(4) PRIMARY KEY NOT NULL AUTO_INCREMENT,
Firstname VARCHAR(255) NOT NULL,
Surname VARCHAR(255) NOT NULL,
Username VARCHAR(255) NOT NULL,
Password VARCHAR(255) NOT NULL,
Bio VARCHAR(255),
School ENUM('Computing', 'Business', 'Arts and Culture', 'Bioscience', 'Medicine', 'Architecture'),
RepStatus BOOLEAN NOT NULL,    /* This value should be False for Student Members */
UNIQUE(Username)
);

/* Creation of tables */
CREATE TABLE Reps (
StudentID INT(4) PRIMARY KEY NOT NULL AUTO_INCREMENT,
Firstname VARCHAR(255) NOT NULL,
Surname VARCHAR(255) NOT NULL,
Username VARCHAR(128) NOT NULL,
Password VARCHAR(255) NOT NULL,
Bio VARCHAR(300),
School ENUM('Computing', 'Business', 'Arts and Culture', 'Bioscience', 'Medicine', 'Architecture'),
RepStatus BOOLEAN NOT NULL,     /* This value should be True for Student Reps */
StuRole ENUM('President', 'Treasurer'), /* NOT NULL */
FOREIGN KEY (StudentID) REFERENCES Members(StudentID)
);



CREATE TABLE Societies (
SocietyID CHAR(4) PRIMARY KEY,
SocietyName VARCHAR(255) NOT NULL,
Category ENUM ('Sports and Health', 'Arts', 'Culture'), /* NOT NULL */
RepsID INT(4) NOT NULL,      
FOREIGN KEY (RepsID) REFERENCES Reps(StudentID)
);

CREATE TABLE Mapping (
MapID INT(4) PRIMARY KEY NOT NULL AUTO_INCREMENT,
MembersID INT(4) NOT NULL,
SocietiesID CHAR(4),
FOREIGN KEY (MembersID) REFERENCES Members(StudentID)
);

CREATE TABLE Venues (
VenueID CHAR(4) PRIMARY KEY,
VenueName VARCHAR(255) NOT NULL,
Address VARCHAR(255) NOT NULL,
Postcode VARCHAR(20) NOT NULL
);

CREATE TABLE Events (
EventID INT(4) PRIMARY KEY NOT NULL AUTO_INCREMENT,
EventName VARCHAR(255) NOT NULL,
Details VARCHAR(255) NOT NULL,
DateTime TIMESTAMP NOT NULL,
VenueID CHAR(4) NOT NULL,
SocietyID CHAR(4) NOT NULL,
FOREIGN KEY (VenueID) REFERENCES Venues(VenueID),
FOREIGN KEY (SocietyID) REFERENCES Societies(SocietyID)
);

CREATE TABLE Posts (
PostID INT(4) PRIMARY KEY NOT NULL AUTO_INCREMENT,
Content VARCHAR(255) NOT NULL,
MembersID INT(4) NOT NULL,
Firstname VARCHAR(255) NOT NULL,
EventID INT(4) NOT NULL,
Likes INT(6) NOT NULL,
FOREIGN KEY (EventID) REFERENCES Events(EventID),
FOREIGN KEY (MembersID) REFERENCES Members(StudentID)
);


/* Insertion of Example Data */
/*-- Reps */
INSERT INTO Reps (StudentID, Firstname, Surname, Username, Password, Bio, School, RepStatus, StuRole)
VALUES ('reps', 'Rep', 'Example', 'testRep', 'password', 'This is a display bio! Write anything interesting here!', 'Computing', True, 'President');
/*-- Members*/
INSERT INTO Members (StudentID, Firstname, Surname, Username, Password, Bio, School, RepStatus)
VALUES ('memb', 'Member', 'Example', 'testMemb', 'Password', 'This is a display bio! Write anything interesting here!', 'Architecture', False);
/*-- Societies*/
INSERT INTO Societies (SocietyID, SocietyName, Category, RepsID, MembersID)
VALUES ('soci', 'UKC Boxing', 'Sports and Health', 'reps', 'memb');
/*-- Venues*/
INSERT INTO Venues (VenueID, VenueName, Address, Postcode)
VALUES ('venu', 'Venue', 'Address Line 1', 'CT2 7NZ');
/*-- Events*/
INSERT INTO Events (EventID, EventName, Details, DateTime, VenueID, SocietyID)
VALUES ('even', 'Boxing Ball', 'Write a short description of the event here.', '2021-12-19 22:00:00', 'venu', 'soci');
/*-- Guestlist
INSERT INTO Guestlist (GuestlistID, RepsID, MembersID, EventID)
VALUES ('gues', null, 'memb', 'even'); */
/*-- Posts*/
INSERT INTO Posts (PostID, Content, MembersID, EventID, RepsID, StuRole)
VALUES ('post', 'Share your experience with your friends!', 'memb','even', null, null);

INSERT INTO Posts (PostID, Content, MembersID, EventID, RepsID, StuRole)
VALUES ('pos1', 'Share your experience with your friends!', null,'even', 'reps', 'President');

/*-- ACTIONS TO BE DONE*/

/* Guest List Page */

/*-- !List all Members Posts including content, event and username*/
SELECT Posts.Content, Events.EventName, Members.Username FROM Posts
INNER JOIN Events ON Posts.EventID=Events.EventID
INNER JOIN Members ON Posts.MembersID=Members.StudentID;

/*-- !List all Reps Posts including content, event and username*/
SELECT Posts.Content, Events.EventName, Reps.Username, Reps.StuRole FROM Posts
INNER JOIN Events ON Posts.EventID=Events.EventID
INNER JOIN Reps ON Posts.RepsID=Reps.StudentID;

/*-- !List all Events including event name, details, datetime and society name*/
SELECT Events.EventName, Events.Details, TO_CHAR(Events.DateTime, 'DD MON YYYY HH12:MIPM'), Societies.SocietyName FROM Events
INNER JOIN Societies ON Events.SocietyID=Societies.SocietyID;

/*-- !List all Societies*/
SELECT Societies.SocietyName, Societies.Category, Reps.Firstname, Reps.Surname FROM Societies
INNER JOIN Reps ON Societies.RepsID=Reps.StudentID
WHERE Reps.StuRole='President';

/* Discover Page */

/*-- List top event (POTENTIALLY MIGHT BE ABLE TO ADD TOTAL BY USING WHERE TOTAL GUESTS IS GREATEST)*/
SELECT Events.EventName, Events.Details, TO_CHAR(Events.DateTime, 'DD MON YYYY HH12:MIPM'), Venues.VenueName FROM Events -- Include society?
INNER JOIN Venues ON Events.VenueID=Venues.VenueID;

/*-- !List categories*/
SELECT Category FROM Societies;     /* Note that this only lists categories that have been assigned to a society */

/* Create Page */



/* Profile Page */

/*-- List Members first name, school, bio*/
SELECT Firstname, School, Bio FROM MEMBERS;

/*-- List Reps first name, school, bio*/
SELECT Firstname, School, Bio FROM REPS;

/*
-- List total posts
-- TO DO 

-- List total events
-- TO DO
*/