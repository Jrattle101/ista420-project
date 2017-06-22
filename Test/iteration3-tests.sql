select TeamID from roster
union
select TeamID from teams

select TeamID from roster
intersect 
select TeamID from teams

select r.FirstName, r.lastname, b.atbats, b.hits, b.Average, b.HomeRuns, b.RunsBatIn, b.StrikeOuts from roster as r join batstats b on r.PlayerID=b.PlayerID 


select t.teamname, r.firstname, r.lastname from teams as t join roster r on r.teamID=t.TeamID

--teamID is null in the users table
select u.userID, t.TeamName from users as u join teams t on u.TeamID=t.TeamID

--shows the nulls
select teamid from users
union all
select teamid from teams

ALTER TABLE batstats ADD
sysstart DATETIME2(0) GENERATED ALWAYS AS ROW START HIDDEN NOT NULL
CONSTRAINT DFT_batstats_sysstart DEFAULT('19000101'),
sysend DATETIME2(0) GENERATED ALWAYS AS ROW END HIDDEN NOT NULL
CONSTRAINT DFT_batstats_sysend DEFAULT('99991231 23:59:59'),
PERIOD FOR SYSTEM_TIME (sysstart, sysend);

ALTER TABLE batstats
SET ( SYSTEM_VERSIONING = ON ( HISTORY_TABLE = dbo.batstatsHistory ) );
--2017-06-22 15:22:55
SELECT CAST(SYSUTCDATETIME() AS DATETIME2(0)) AS P1;
INSERT INTO batstats (BatStatID, PlayerID, AtBats, Hits, Average, HomeRuns, RunsBatIn, StrikeOuts)
values (19, 109, 10, 2, .000, 1, 2, 2);
--2017-06-22 15:23:21
SELECT CAST(SYSUTCDATETIME() AS DATETIME2(0)) AS P2;
INSERT INTO batstats (BatStatID, PlayerID, AtBats, Hits, Average, HomeRuns, RunsBatIn, StrikeOuts)
values (29, 209, 10, 0, .030, 0, 0, 0),
(39, 309, 20, 2, .120, 3, 4, 0),
(49, 409, 11, 0, .100, 0, 6, 0);

select* from batstats
select * from dbo.batstatshistory

SELECT *
FROM batstats
FOR SYSTEM_TIME AS OF '2017-06-22 15:22:55'