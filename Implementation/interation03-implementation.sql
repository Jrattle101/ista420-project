-- Name: Jason R Adams
-- File: interation03-db.sql
-- Database:  ista420-iteration02
-- Date: 21 June 2017

--SELECT * 
--FROM sys.foreign_keys
--WHERE referenced_object_id = object_id('teams')


USE [ista420];

DROP TABLE if exists teams;

CREATE TABLE teams (
	TeamID INTEGER NOT NULL PRIMARY KEY,
	TeamName TEXT NOT NULL,
	);

INSERT INTO teams 
	VALUES	(1, 'Cubs'),
			(2, 'Indians'),
			(3, 'Dodgers'),
			(4, 'Blue Jays');

--ALTER TABLE [dbo].[roster] DROP CONSTRAINT [FK__roster__TeamID__25869641]
DROP TABLE if exists roster;

CREATE TABLE roster (
	PlayerID INTEGER NOT NULL PRIMARY KEY,
	TeamID INTEGER NOT NULL,-- FOREIGN KEY REFERENCES teams(TeamID),
	FirstName TEXT NOT NULL,
	LastName TEXT NOT NULL,
	Position TEXT,
	JerseyNum INTEGER NOT NULL,

	);
bulk insert roster from 'C:\Users\sintal\Desktop\Project\Bulk\roster.txt'
with 
(
firstrow=2,
datafiletype='char',
fieldterminator=',',
rowterminator='\n'
);


--INSERT INTO roster 
--	VALUES	-- Cubs
			--(101, 1, 'J.', 'Baez', '2B', 11),
			--(102, 1, 'K.', 'Bryant', '3B', 12),
			--(103, 1, 'W.', 'Contreras', 'C', 13),
			--(104, 1, 'D.', 'Fowler', 'CF', 14),
			--(105, 1, 'A.', 'Rizzo', '1B', 15),
			--(106, 1, 'A.', 'Russell', 'SS', 16),
			--(107, 1, 'J.', 'Heyward', 'RF', 17),
			--(108, 1, 'C.', 'Coghlan', 'LF', 18),
			--(109, 1, 'J.', 'Lester', 'SP', 19),
			
			---- Indians
			--(201, 2, 'R.', 'Davis', 'CF', 21),
			--(202, 2, 'J.', 'Kipnis', '2B', 22),
			--(203, 2, 'F.', 'Lindor', 'SS', 23),
			--(204, 2, 'M.', 'Napoli', '1B', 24),
			--(205, 2, 'R.', 'Perez', 'C', 25),
			--(206, 2, 'J.', 'Ramirez', '3B', 26),
			--(207, 2, 'L.', 'Chisenhall', 'RF', 27),
			--(208, 2, 'C.', 'Crisp', 'LF', 28),
			--(209, 2, 'C.', 'Kluber', 'SP', 29),

			---- Dodgers
			--(301, 3, 'A.', 'Gonzales', '1B', 34),
			--(302, 3, 'Y.', 'Grandal', 'C', 35),
			--(303, 3, 'J.', 'Pedersen', 'CF', 31),
			--(304, 3, 'C.', 'Seager', 'SS', 33),
			--(305, 3, 'A.', 'Toles', 'LF', 38),
			--(306, 3, 'J.', 'Turner', '3B', 36),
			--(307, 3, 'Y.', 'Puig', 'RF', 37),
			--(308, 3, 'C.', 'Utley', '2B', 32),
			--(309, 3, 'C.', 'Kershaw', 'SP', 39),

			---- Blue Jays
			--(401, 4, 'J.', 'Bautista', 'RF', 41),
			--(402, 4, 'E.', 'Carrera', 'LF', 42),
			--(403, 4, 'J.', 'Donaldson', '3B', 43),
			--(404, 4, 'R.', 'Martin', 'C', 44),
			--(405, 4, 'K.', 'Pillar', 'CF', 45),
			--(406, 4, 'T.', 'Tulowitski', 'SS', 46),
			--(407, 4, 'J.', 'Smoak', '1B', 47),
			--(408, 4, 'D.', 'Travis', '2B', 48),
			--(409, 4, 'M.', 'Estrada', 'SP', 49);

--ALTER TABLE [dbo].[batstats] DROP CONSTRAINT [FK__batstats__Player__286302EC]
DROP TABLE if exists batstats;

CREATE TABLE batstats (
	BatStatID INTEGER NOT NULL PRIMARY KEY,
	PlayerID INTEGER NOT NULL, --FOREIGN KEY REFERENCES roster(PlayerID),
	AtBats INTEGER,
	Hits INTEGER,
	Average FLOAT,
	HomeRuns INTEGER,
	RunsBatIn INTEGER,
	StrikeOuts INTEGER

	);

	bulk insert batstats from 'C:\Users\sintal\Desktop\Project\Bulk\batstats.txt'
with 
(
firstrow=2,
datafiletype='char',
fieldterminator=',',
rowterminator='\n'
);
--INSERT INTO batstats (BatStatID, PlayerID, AtBats, Hits, Average, HomeRuns, RunsBatIn, StrikeOuts)
--	VALUES	(11, 101, 68, 18, .265, 2, 8, 21),
--			(12, 102, 65, 20, .308, 3, 8, 21),
--			(13, 103, 39, 10, .256, 1, 6, 17),
--			(14, 104, 72, 18, .250, 3, 6, 17),
--			(15, 105, 65, 18, .277, 3, 10, 13),
--			(16, 106, 64, 13, .203, 3, 13, 13),
--			(17, 107, 48, 5, .104, 0, 1, 13),
--			(18, 108, 7, 0, .000, 0, 0, 3),

--			(21, 201, 34, 5, .147, 1, 4, 9),
--			(22, 202, 61, 14, .230, 4, 8, 16),
--			(23, 203, 58, 18, .310, 2, 6, 16),
--			(24, 204, 52, 9, .173, 1, 3, 21),
--			(25, 205, 43, 8, .186, 3, 7, 15),
--			(26, 206, 56, 15, .268, 1, 3, 8),
--			(27, 207, 42, 9, .214, 1, 5, 13),
--			(28, 208, 26, 7, .269, 2, 4, 3),

--			(31, 301, 41, 8, .195, 2, 6, 8),
--			(32, 302, 28, 3, .107, 1, 3, 11),
--			(33, 303, 36, 9, .250, 1, 4, 14),
--			(34, 304, 44, 9, .205, 2, 4, 13),
--			(35, 305, 22, 8, .364, 0, 2, 3),
--			(36, 306, 35, 10, .286, 2, 8, 5),
--			(37, 307, 19, 4, .211, 0, 0, 3),
--			(38, 308, 28, 3, .107, 0, 2, 8),

--			(41, 401, 33, 6, .182, 2, 5, 12),
--			(42, 402, 33, 10, .303, 1, 3, 8),
--			(43, 403, 36, 15, .417, 1, 5, 7),
--			(44, 404, 33, 3, .091, 1, 1, 14),
--			(45, 405, 32, 3, .094, 1, 2, 6),
--			(46, 406, 35, 8, .229, 1, 5, 4),
--			(47, 407, 2, 0, .000, 0, 0, 2),
--			(48, 408, 12, 1, .083, 0, 0, 1);

drop table if exists pitchstats;

create table pitchstats(
	playerID int,
	Wins int,
	Losses int,
	ERA Float,
	StrikeOuts int,
	Walks int,
	runsallowed int
	);

	bulk insert pitchstats from 'C:\Users\sintal\Desktop\Project\Bulk\pitchstats.txt'
with 
(
firstrow=2,
datafiletype='char',
fieldterminator=',',
rowterminator='\n'
);
--ALTER TABLE [dbo].[schedule] DROP CONSTRAINT [FK__schedule__Away_T__2C3393D0]
--ALTER TABLE [dbo].[schedule] DROP CONSTRAINT [FK__schedule__Home_T__2B3F6F97]
DROP TABLE if exists schedule;

CREATE TABLE schedule (
	SchedID INTEGER NOT NULL PRIMARY KEY,
	--TeamID INTEGER NOT NULL FOREIGN KEY REFERENCES teams(TeamID),
	DateOfGame TEXT,
	Home_Team INTEGER NOT NULL FOREIGN KEY REFERENCES teams(TeamID),
	Away_Team INTEGER NOT NULL FOREIGN KEY REFERENCES teams(TeamID),
	Results TEXT
	);

INSERT INTO schedule
	VALUES	(1, '01 Jan 2018', 1, 2, NULL),
			(2, '01 Jan 2018', 3, 4, NULL),
			(3, '02 Jan 2018', 3, 1, NULL),
			(4, '02 Jan 2018', 4, 2, NULL),
			(5, '03 Jan 2018', 2, 3, NULL),
			(6, '03 Jan 2018', 1, 4, NULL),
			(7, '04 Jan 2018', 3, 4, NULL),
			(8, '04 Jan 2018', 2, 1, NULL),
			(9, '05 Jan 2018', 4, 2, NULL),
			(10, '05 Jan 2018', 1, 3, NULL),
			(11, '06 Jan 2018', 1, 4, NULL),
			(12, '06 Jan 2018', 3, 2, NULL),
			(13, '07 Jan 2018', 2, 1, NULL),
			(14, '07 Jan 2018', 4, 3, NULL),
			(15, '08 Jan 2018', 1, 3, NULL),
			(16, '08 Jan 2018', 2, 4, NULL),
			(17, '09 Jan 2018', 3, 2, NULL),
			(18, '09 Jan 2018', 4, 1, NULL),
			(19, '10 Jan 2018', 4, 3, NULL),
			(20, '10 Jan 2018', 1, 2, NULL),
			(21, '11 Jan 2018', 2, 4, NULL),
			(22, '11 Jan 2018', 3, 1, NULL),
			(23, '12 Jan 2018', 4, 1, NULL),
			(24, '12 Jan 2018', 2, 3, NULL);

--ALTER TABLE [dbo].[results] DROP CONSTRAINT [FK__results__SchedID__2F10007B]
DROP TABLE if exists results;

CREATE TABLE results (
	ResultsID INTEGER NOT NULL PRIMARY KEY,
	SchedID INTEGER NOT NULL FOREIGN KEY REFERENCES schedule(SchedID),
	Score TEXT
	);

INSERT INTO results	
	VALUES	(1, 1, NULL),
			(2, 2, NULL);

--ALTER TABLE [dbo].[record] DROP CONSTRAINT [FK__record__TeamID__32E0915F]
--ALTER TABLE [dbo].[record] DROP CONSTRAINT [FK__record__ResultsI__31EC6D26]
DROP TABLE if exists record;

CREATE TABLE record (
	RecordID INTEGER NOT NULL PRIMARY KEY,
	ResultsID INTEGER NOT NULL FOREIGN KEY REFERENCES results(ResultsID),
	TeamID INTEGER NOT NULL FOREIGN KEY REFERENCES teams(TeamID),
	Wins INTEGER,
	Losses INTEGER,
	Total TEXT
	);

INSERT INTO record
	VALUES	(1, 1, 1, NULL, NULL, NULL),
			(2, 2, 2, NULL, NULL, NULL);
	
--ALTER TABLE [dbo].[users] DROP CONSTRAINT [FK__users__TeamID__3F466844]
DROP TABLE if exists users

CREATE TABLE users(
	UserID INTEGER NOT NULL PRIMARY KEY,
	UserName VARCHAR(25) NOT NULL,
	TeamID INTEGER FOREIGN KEY REFERENCES teams(TeamID),
	password VARCHAR(20) not null,
	email text null
	);

insert into users 
values 
(1, 'admin1', null, '1234', 'mail@mail.com'),
(2, 'admin2', null, '4321', 'mail2@mail.com');


















