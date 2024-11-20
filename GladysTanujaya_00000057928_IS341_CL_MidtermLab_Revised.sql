--CREATE DATABASE
CREATE DATABASE UTS_00000057928_GladysTanujaya

--USE DATABASE
USE UTS_00000057928_GladysTanujaya

-- Nomor 1
CREATE TABLE MentorTable (
	MentorID			CHAR(5) PRIMARY KEY NOT NULL,
	MentorName			VARCHAR(100) NOT NULL,
	MentorSemester		INT NOT NULL,
	MentorMajor			VARCHAR(50) NOT NULL,
	MentorEmailAddress	VARCHAR(50) NOT NULL,
	MentorPhone			VARCHAR(15) NOT NULL,
	MentorGPA			DECIMAL(3,2) NOT NULL,
	MentorShift			VARCHAR (50) NOT NULL
)

CREATE TABLE MenteeTable (
	MenteeID			CHAR(5) PRIMARY KEY NOT NULL,
	MenteeName			VARCHAR(100) NOT NULL,
	MenteeSemester		INT NOT NULL,
	MenteeMajor			VARCHAR(50) NOT NULL,
	MenteeEmailAddress	VARCHAR(50) NOT NULL,
	MenteePhone			VARCHAR(15) NOT NULL,
	MenteeGPA			DECIMAL(3,2) NOT NULL
)

CREATE TABLE SubjectTable (
	SubjectID			CHAR(5) PRIMARY KEY NOT NULL,
	SubjectName			VARCHAR(100) NOT NULL,
	SubjectCredit		INT NOT NULL,
)

CREATE TABLE HeaderMentoring (
	MentoringID			CHAR(4) PRIMARY KEY NOT NULL,
	MentorID			CHAR(5) FOREIGN KEY (MentorID) REFERENCES MentorTable,
	SubjectID			CHAR(5) FOREIGN KEY (SubjectID) REFERENCES SubjectTable,
	Room				CHAR(3) NOT NULL,
	StartDate			DATE NOT NULL,
	MentoringDay		INT NOT NULL,
	ShiftDay			INT NOT NULL
)

CREATE TABLE DetailMentoring (
	MenteeID CHAR(5)
	CONSTRAINT FK_MenteeTable_MenteeID REFERENCES MenteeTable(MenteeID),
	MentoringID CHAR(4)
	CONSTRAINT FK_HeaderMentoring_MentoringID REFERENCES HeaderMentoring(MentoringID),
	DiscussionGroup		INT NOT NULL,
	PRIMARY KEY (MenteeID, MentoringID)
)

--INSERT
INSERT INTO MentorTable VALUES('MR001','Gunawan Siurudin', 5, 'Information Technology', 'GN@bj.com', '085275178761',4.00,'Morning');
INSERT INTO MentorTable VALUES('MR002','Sean Young Tjahyadi', 5, 'Information System', 'YT@bj.com', '081805846212',4.00,'Morning');
INSERT INTO MentorTable VALUES('MR003','Parlinggoman Rinaldo Hasibuan', 5, 'Information Technology', 'PG@bj.com', '081572123422',4.00,'Afternoon');
INSERT INTO MentorTable VALUES('MR004','William Surya Permana', 3, 'Information System', 'WL@bj.com', '081805422344',4.00,'Afternoon');
INSERT INTO MentorTable VALUES('MR005','Henry Setiady', 7, 'Information Technology and Mathematics', 'HT@bj.com', '081805675366',4.00,'Afternoon');
INSERT INTO MentorTable VALUES('MR006','Budi', 3, 'Information Technology', 'BD@bj.com', '081228123129',4.00,'Afternoon');
INSERT INTO MentorTable VALUES('MR007','Yovita Turnadi', 3, 'Information System', 'YV@bj.com', '081809112345',4.00,'Afternoon');
INSERT INTO MentorTable VALUES('MR008','Rita', 3, 'Information Technology', 'RT@bj.com', '0818058212',4.00,'Evening');
INSERT INTO MentorTable VALUES('MR009','Amelia Christin', 5, 'Information System', 'AS@bj.com', '081542312348',4.00,'Evening');
INSERT INTO MentorTable VALUES('MR010','Eripin', 5, 'Information Technology', 'EN@bj.com', '081579357698',4.00,'Evening');

INSERT INTO MenteeTable VALUES('ME001','Yuhdy Budiarto',3,'Information Technology', 'YB@bj.com','081805846213',4.00)
INSERT INTO MenteeTable VALUES('ME002','Setiawan',5,'Information Technology', 'SW@bj.com','085275178762 ',3.00)
INSERT INTO MenteeTable VALUES('ME003','Ferenkey',3,'Information Technology', 'FK@bj.com','081805422346 ',3.00)
INSERT INTO MenteeTable VALUES('ME004','Rapenda Medianta Surbakti',3,'Information Technology', 'RM@bj.com','081572123423',3.25)
INSERT INTO MenteeTable VALUES('ME005','Steven Junior',3,'Information Technology and Mathematics', 'ST@bj.com','081805675367',3.75)
INSERT INTO MenteeTable VALUES('ME006','Yoki Winata',3,'Information Technology', 'YK@bj.com','081228123131',3.50)
INSERT INTO MenteeTable VALUES('ME007','Irsyad',5,'Information Technology', 'IR@bj.com','081809112346',3.00)
INSERT INTO MenteeTable VALUES('ME008','Stevano Christian',5,'Information Technology', 'SV@bj.com','081805821213',3.75)
INSERT INTO MenteeTable VALUES('ME009','Jeffry Widyanata',5,'Information System and Management', 'JF@bj.com','081542366349',3.66)
INSERT INTO MenteeTable VALUES('ME010','Mahenda Metta Surya',3,'Information System', 'MH@bj.com','081579357699',3.25)
INSERT INTO MenteeTable VALUES('ME011','Raymond',5,'Computer Engineering', 'RY@bj.com','081679134568',3.00)
INSERT INTO MenteeTable VALUES('ME012','Antoni Wiguna',3,'Information Technology', 'AI@bj.com','081795614698',3.00)
INSERT INTO MenteeTable VALUES('ME013','Samuel Sonny Salim',5,'Information Technology', 'SO@bj.com','081476532964',3.00)
INSERT INTO MenteeTable VALUES('ME014','Johan',5,'Information Technology', 'Johan@yahoo.com','081648963125',3.00)
INSERT INTO MenteeTable VALUES('ME015','Winata',5,'Information Technology and Mathematics', 'Winata@yahoo.com','081806497625 ',3.25)
INSERT INTO MenteeTable VALUES('ME016','Nana',5,'Information Technology and Mathematics', 'Nana@yahoo.com','081649966624',3.00)
INSERT INTO MenteeTable VALUES('ME017','Yunus',5,'Information Technology and Mathematics', 'Yunus@yahoo.com','081816497623',3.25)
INSERT INTO MenteeTable VALUES('ME018','Dicky',5,'Information System', 'Dicky@yahoo.com','081648953124',3.00)
INSERT INTO MenteeTable VALUES('ME019','Surya',5,'Information System', 'Surya@yahoo.com','081806397623',3.25)
INSERT INTO MenteeTable VALUES('ME020','Mandagi',5,'Information System', 'Mandagi@yahoo.com','081658963124',3.00)

INSERT INTO SubjectTable VALUES('BN001','Computer Graphics', 7)
INSERT INTO SubjectTable VALUES('BN002','Automata Theory, Language and Computation', 2)
INSERT INTO SubjectTable VALUES('BN003','Computer Algorithm', 6)
INSERT INTO SubjectTable VALUES('BN004','Object Oriented Programming', 4)
INSERT INTO SubjectTable VALUES('BN005','Database', 4)
INSERT INTO SubjectTable VALUES('BN006','Assembly Language', 4)
INSERT INTO SubjectTable VALUES('BN007','Discrete Mathematics', 4)
INSERT INTO SubjectTable VALUES('BN008','Artificial Intelligence', 4)
INSERT INTO SubjectTable VALUES('BN009','Linear Algebra', 6)
INSERT INTO SubjectTable VALUES('BN010','Calculus',7)

INSERT INTO HeaderMentoring VALUES('M001','MR001','BN010',515,'2010-10-12 00:00:00.000',2,3)
INSERT INTO HeaderMentoring VALUES('M002','MR002','BN008',516,'2010-10-12 00:00:00.000',2,3)
INSERT INTO HeaderMentoring VALUES('M003','MR003','BN003',517,'2010-10-13 00:00:00.000',3,3)
INSERT INTO HeaderMentoring VALUES('M004','MR004','BN007',518,'2010-10-13 00:00:00.000',4,3)
INSERT INTO HeaderMentoring VALUES('M005','MR005','BN006',519,'2010-10-14 00:00:00.000',4,4)
INSERT INTO HeaderMentoring VALUES('M006','MR006','BN009',519,'2010-10-16 00:00:00.000',4,4)
INSERT INTO HeaderMentoring VALUES('M007','MR007','BN005',517,'2010-10-17 00:00:00.000',5,2)
INSERT INTO HeaderMentoring VALUES('M008','MR008','BN004',518,'2010-10-18 00:00:00.000',5,5)
INSERT INTO HeaderMentoring VALUES('M009','MR009','BN001',519,'2010-10-19 00:00:00.000',6,6)
INSERT INTO HeaderMentoring VALUES('M010','MR010','BN002',520,'2010-10-22 00:00:00.000',6,5)

INSERT INTO DetailMentoring VALUES('ME001','M001',1)
INSERT INTO DetailMentoring VALUES('ME002','M007',1)
INSERT INTO DetailMentoring VALUES('ME003','M010',5)
INSERT INTO DetailMentoring VALUES('ME004','M001',4)
INSERT INTO DetailMentoring VALUES('ME005','M008',4)
INSERT INTO DetailMentoring VALUES('ME006','M004',3)
INSERT INTO DetailMentoring VALUES('ME007','M003',3)
INSERT INTO DetailMentoring VALUES('ME008','M008',4)
INSERT INTO DetailMentoring VALUES('ME009','M010',1)
INSERT INTO DetailMentoring VALUES('ME010','M001',4)
INSERT INTO DetailMentoring VALUES('ME011','M001',5)
INSERT INTO DetailMentoring VALUES('ME012','M002',3)
INSERT INTO DetailMentoring VALUES('ME013','M003',3)
INSERT INTO DetailMentoring VALUES('ME014','M004',4)
INSERT INTO DetailMentoring VALUES('ME015','M005',1)
INSERT INTO DetailMentoring VALUES('ME016','M006',1)
INSERT INTO DetailMentoring VALUES('ME017','M007',3)
INSERT INTO DetailMentoring VALUES('ME018','M008',5)
INSERT INTO DetailMentoring VALUES('ME019','M010',1)
INSERT INTO DetailMentoring VALUES('ME020','M001',2)

-- Nomor 2
UPDATE MenteeTable
SET MenteeName = 'Margareta Meta Surya'
WHERE MenteeID = 'ME010'

-- SELECT Statement
SELECT *
FROM MenteeTable



-- Nomor 3
UPDATE MentorTable
SET MentorSemester = mentor.MentorSemester - 1
FROM MentorTable mentor
INNER JOIN HeaderMentoring hm ON mentor.mentorID = hm.MentorID
INNER JOIN SubjectTable s ON hm.SubjectID = s.SubjectID
WHERE s.SubjectCredit > 6

-- SELECT Statement
SELECT m.MentorName, s.SubjectCredit AS Credit
FROM MentorTable m
INNER JOIN HeaderMentoring hm ON m.mentorID = hm.MentorID
INNER JOIN SubjectTable s ON hm.SubjectID = s.SubjectID
WHERE s.SubjectCredit > 6



-- Nomor 4
UPDATE MenteeTable
SET MenteeGPA = 3.75
FROM MenteeTable mentee
INNER JOIN DetailMentoring dm ON mentee.MenteeID = dm.MenteeID
INNER JOIN HeaderMentoring hm ON dm.MentoringID = hm.MentoringID
INNER JOIN MentorTable mentor ON hm.MentorID = mentor.MentorID
WHERE mentor.MentorName LIKE '% %' AND mentor.MentorSemester = 7

-- SELECT Statement
SELECT mentor.MentorName
FROM MentorTable mentor
INNER JOIN HeaderMentoring hm ON mentor.mentorID = hm.MentorID
INNER JOIN DetailMentoring dm ON hm.MentoringID = dm.MentoringID
INNER JOIN MenteeTable mentee ON dm.MenteeID = mentee.MenteeID
WHERE mentor.MentorName LIKE '% %' AND MentorSemester = 7



-- Nomor 5
UPDATE MentorTable
SET MentorSemester = 2
FROM MentorTable
WHERE RIGHT(MentorID, 2) % 3 = 0 

-- SELECT Statement
SELECT MentorSemester, MentorID 
FROM MentorTable
WHERE RIGHT(MentorID,3) >= 5



-- Nomor 6
UPDATE MenteeTable 
SET MenteeName = CONCAT('MID.', mentee.MenteeName)
FROM MenteeTable mentee
INNER JOIN DetailMentoring dm ON mentee.MenteeID = dm.MenteeID
INNER JOIN HeaderMentoring hm ON dm.MentoringID = hm.MentoringID
INNER JOIN MentorTable mentor ON hm.MentorID = mentor.MentorID
WHERE MentorName = 'Rita' AND MenteeSemester = 5

-- SELECT Statement
SELECT mentee.MenteeName, mentee.MenteeID, mentor.MentorName
FROM MentorTable mentor
INNER JOIN HeaderMentoring hm ON mentor.mentorID = hm.MentorID
INNER JOIN DetailMentoring dm ON hm.MentoringID = dm.MentoringID
INNER JOIN MenteeTable mentee ON dm.MenteeID = mentee.MenteeID
WHERE mentor.MentorName = 'Rita' AND mentee.MenteeSemester = 5

--CONCAT() -> menambahkan string



-- Nomor 7
-- Cek MenteeID yang berasal dari jurusan Information Technology and Mathematics
-- Hapus dari tabel DetailMentoring terlebih dahulu karena ada relasi dengan MenteeTable
DELETE FROM DetailMentoring
WHERE MenteeID IN ('ME005', 'ME015', 'ME016', 'ME017')

DELETE FROM MenteeTable
WHERE MenteeMajor = 'Information Technology and Mathematics'

-- SELECT Statement
SELECT * FROM MenteeTable

SELECT * FROM DetailMentoring



-- Nomor 8
CREATE VIEW view1 AS 
SELECT mentor.MentorID, mentor.MentorName, mentee.MenteeID, mentee.MenteeName, dm.DiscussionGroup
FROM MentorTable mentor
INNER JOIN HeaderMentoring hm ON mentor.mentorID = hm.MentorID
INNER JOIN DetailMentoring dm ON hm.MentoringID = dm.MentoringID
INNER JOIN MenteeTable mentee ON dm.MenteeID = mentee.MenteeID
WHERE dm.DiscussionGroup = 1 AND LEN(mentor.MentorName) = 6

-- SELECT Statement
SELECT * FROM view1
