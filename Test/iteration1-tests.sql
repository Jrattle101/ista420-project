USE Project;

-- FR1:  View each Roster
SELECT * FROM roster WHERE TeamID = 1;
SELECT * FROM roster WHERE TeamID = 2;
SELECT * FROM roster WHERE TeamID = 3;
SELECT * FROM roster WHERE TeamID = 4;

-- FR2:  View players Batting Statitistics
SELECT * FROM batstats WHERE PlayerID LIKE '1%' ;
SELECT * FROM batstats WHERE PlayerID LIKE '2%' ;
SELECT * FROM batstats WHERE PlayerID LIKE '3%' ;
SELECT * FROM batstats WHERE PlayerID LIKE '4%' ;

-- FR3:  View the team's schedule
SELECT * FROM schedule WHERE Home_Team = 1;
SELECT * FROM schedule WHERE Home_Team = 2;
SELECT * FROM schedule WHERE Home_Team = 3;
SELECT * FROM schedule WHERE Home_Team = 4;
SELECT * FROM schedule WHERE Away_Team = 1;
SELECT * FROM schedule WHERE Away_Team = 2;
SELECT * FROM schedule WHERE Away_Team = 3;
SELECT * FROM schedule WHERE Away_Team = 4;

-- FR4:  View the team's record
SELECT * FROM record WHERE TeamID = 1;

-- FR5:  View individual game results
SELECT * FROM results WHERE ResultsID = 1;



