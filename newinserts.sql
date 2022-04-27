-- NEED TO CREATE view FOR REPS
-- CURRENTLY view only allows Members in 
-- Easier to create two views so can automatically display 
-- error screen on create if they aren't a rep 
-- Reps would also have a unique profile layout including 
-- extra details like role

INSERT INTO Members (StudentID, Firstname, Surname, Username, Password, Bio, School, RepStatus)
VALUES ('1', 'Chloe', 'Smith', 'chloe', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'Chloe from UKC', 'Architecture', False);

INSERT INTO Members (StudentID, Firstname, Surname, Username, Password, Bio, School, RepStatus)
VALUES ('10', 'Peter', 'Parker', 'peter', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'Peter from UKC', 'Computing', False);

INSERT INTO Members (StudentID, Firstname, Surname, Username, Password, Bio, School, RepStatus)
VALUES ('6', 'Kevin', 'Jones', 'kevin', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'Kevin from UKC', 'Bioscience', False);

INSERT INTO Members (StudentID, Firstname, Surname, Username, Password, Bio, School, RepStatus)
VALUES ('4', 'Jason', 'Bale', 'jason', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'Jason from UKC', 'Business', False);

INSERT INTO Members (StudentID, Firstname, Surname, Username, Password, Bio, School, RepStatus)
VALUES ('2', 'Hayden', 'Carrey', 'hayden', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'Hayden from UKC', 'Arts and Culture', False);



INSERT INTO Members (StudentID, Firstname, Surname, Username, Password, Bio, School, RepStatus)
VALUES ('5', 'Joel', 'Thatcher', 'joel', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'Joel from UKC', 'Bioscience', True);

INSERT INTO Members (StudentID, Firstname, Surname, Username, Password, Bio, School, RepStatus)
VALUES ('9', 'Mike', 'White', 'mike', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'Mike from UKC', 'Medicine', True);

INSERT INTO Members (StudentID, Firstname, Surname, Username, Password, Bio, School, RepStatus)
VALUES ('7', 'Lana', 'Webb', 'lana', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'Lana from UKC', 'Business', True);

INSERT INTO Members (StudentID, Firstname, Surname, Username, Password, Bio, School, RepStatus)
VALUES ('8', 'Logan', 'Wolf', 'logan', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'Logan from UKC', 'Arts and Culture', True);

INSERT INTO Members (StudentID, Firstname, Surname, Username, Password, Bio, School, RepStatus)
VALUES ('3', 'James', 'Grubb', 'james', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'James from UKC', 'Medicine', True);



INSERT INTO Reps (StudentID, Firstname, Surname, Username, Password, Bio, School, RepStatus, StuRole)
VALUES ('5', 'Joel', 'Thatcher', 'joel', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'Joel from UKC', 'Bioscience', True, 'President');

INSERT INTO Reps (StudentID, Firstname, Surname, Username, Password, Bio, School, RepStatus, StuRole)
VALUES ('9', 'Mike', 'White', 'mike', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'Mike from UKC', 'Medicine', True, 'President');

INSERT INTO Reps (StudentID, Firstname, Surname, Username, Password, Bio, School, RepStatus, StuRole)
VALUES ('7', 'Lana', 'Webb', 'lana', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'Lana from UKC', 'Business', True, 'President');

INSERT INTO Reps (StudentID, Firstname, Surname, Username, Password, Bio, School, RepStatus, StuRole)
VALUES ('8', 'Logan', 'Wolf', 'logan', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'Logan from UKC', 'Arts and Culture', True, 'President');

INSERT INTO Reps (StudentID, Firstname, Surname, Username, Password, Bio, School, RepStatus, StuRole)
VALUES ('3', 'James', 'Grubb', 'james', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'James from UKC', 'Medicine', True, 'President');






INSERT INTO Societies (SocietyID, SocietyName, Category, RepsID)
VALUES ('soc1', 'UKC Boxing', 'Sports and Health', '5');

INSERT INTO Societies (SocietyID, SocietyName, Category, RepsID)
VALUES ('soc2', 'UKC Irish Society', 'Culture', '9');

INSERT INTO Societies (SocietyID, SocietyName, Category, RepsID)
VALUES ('soc3', 'UKC Music Society', 'Arts', '7');

INSERT INTO Societies (SocietyID, SocietyName, Category, RepsID)
VALUES ('soc4', 'UKC Football', 'Sports and Health', '8');

INSERT INTO Societies (SocietyID, SocietyName, Category, RepsID)
VALUES ('soc5', 'UKC French Society', 'Culture', '3');



INSERT INTO Mapping (MapID, MembersID, SocietiesID)
VALUES ('0001', '1', 'soc1');

INSERT INTO Mapping (MapID, MembersID, SocietiesID)
VALUES ('0002', '1', 'soc3');

INSERT INTO Mapping (MapID, MembersID, SocietiesID)
VALUES ('0003', '10', 'soc2');

INSERT INTO Mapping (MapID, MembersID, SocietiesID)
VALUES ('0004', '6', 'soc1');

INSERT INTO Mapping (MapID, MembersID, SocietiesID)
VALUES ('0005', '6', 'soc4');

INSERT INTO Mapping (MapID, MembersID, SocietiesID)
VALUES ('0006', '4', 'soc5');

INSERT INTO Mapping (MapID, MembersID, SocietiesID)
VALUES ('0007', '2', 'soc3');

INSERT INTO Mapping (MapID, MembersID, SocietiesID)
VALUES ('0008', '2', 'soc4');

INSERT INTO Mapping (MapID, MembersID, SocietiesID)
VALUES ('0009', '2', 'soc1');

INSERT INTO Mapping (MapID, MembersID, SocietiesID)
VALUES ('0010', '3', 'soc5');

INSERT INTO Mapping (MapID, MembersID, SocietiesID)
VALUES ('0011', '5', 'soc1');

INSERT INTO Mapping (MapID, MembersID, SocietiesID)
VALUES ('0012', '5', 'soc3');

INSERT INTO Mapping (MapID, MembersID, SocietiesID)
VALUES ('0013', '7', 'soc3');

INSERT INTO Mapping (MapID, MembersID, SocietiesID)
VALUES ('0014', '8', 'soc4');

INSERT INTO Mapping (MapID, MembersID, SocietiesID)
VALUES ('0015', '9', 'soc2');

INSERT INTO Mapping (MapID, MembersID, SocietiesID)
VALUES ('0016', '9', 'soc1');

INSERT INTO Mapping (MapID, MembersID, SocietiesID)
VALUES ('0017', '9', 'soc5');



INSERT INTO Venues (VenueID, VenueName, Address, Postcode)
VALUES ('venu', 'The Venue', 'University of Kent campus', 'CT2 7NZ');

INSERT INTO Venues (VenueID, VenueName, Address, Postcode)
VALUES ('wood', 'Woodys', 'University of Kent campus', 'CT2 7SG');

INSERT INTO Venues (VenueID, VenueName, Address, Postcode)
VALUES ('kbar', 'K Bar', 'University of Kent campus', 'CT2 7NZ');

INSERT INTO Venues (VenueID, VenueName, Address, Postcode)
VALUES ('mung', 'Mungos', 'University of Kent campus', 'CT2 7NZ');


INSERT INTO Events (EventID, EventName, Details, DateTime, VenueID, SocietyID)
VALUES ('1', 'Boxing Ball', 'A dance event for boxing society', '2021-12-19 22:00:00', 'venu', 'soc1');

INSERT INTO Events (EventID, EventName, Details, DateTime, VenueID, SocietyID)
VALUES ('2', 'Pub Crawl', 'A pub crawl for irish society - start at woodys', '2022-1-25 21:00:00', 'wood', 'soc2');

INSERT INTO Events (EventID, EventName, Details, DateTime, VenueID, SocietyID)
VALUES ('3', 'Vensday', 'Music society is going to vensday!', '2022-2-5 22:00:00', 'venu', 'soc3');

INSERT INTO Events (EventID, EventName, Details, DateTime, VenueID, SocietyID)
VALUES ('4', 'K Bar Drinks', 'Football society is going to K Bar for drinks after practice!', '2022-2-7 18:00:00', 'kbar', 'soc4');

INSERT INTO Events (EventID, EventName, Details, DateTime, VenueID, SocietyID)
VALUES ('5', 'Mungos Takeover', 'We are hosting a pancake eating competition at Mungos', '2022-2-12 17:00:00', 'mung', 'soc5');



INSERT INTO Posts (PostID, Content, MembersID, Firstname, EventID, Likes)
VALUES ('1', 'Looking forward to the Boxing event!', '1', 'Chloe','1', '0');

INSERT INTO Posts (PostID, Content, MembersID, Firstname, EventID, Likes)
VALUES ('2', 'Looking forward to Vensday!', '5', 'Joel','3', '0');

INSERT INTO Posts (PostID, Content, MembersID, Firstname, EventID, Likes)
VALUES ('3', 'I will eat all the pancakes', '9', 'Mike','5', '0');

INSERT INTO Posts (PostID, Content, MembersID, Firstname, EventID, Likes)
VALUES ('4', 'Nervous about the football practice this weekend', '8', 'Logan','4', '0');
 
INSERT INTO Posts (PostID, Content, MembersID, Firstname, EventID, Likes)
VALUES ('5', 'im going vensday this wednseday!', '1', 'Chloe','3', '0');

INSERT INTO Posts (PostID, Content, MembersID, Firstname, EventID, Likes)
VALUES ('6', 'im going to make it to the end of the pub crawl, mark my words', '10', 'Peter','2', '0');

INSERT INTO Posts (PostID, Content, MembersID, Firstname, EventID, Likes)
VALUES ('7', 'Whats happening at K Bar?!', '1', 'Chloe','4', '0');

INSERT INTO Posts (PostID, Content, MembersID, Firstname, EventID, Likes)
VALUES ('8', 'Mungos have the best food!', '9', 'Mike','5', '0');
