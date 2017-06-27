# User Docs
## Team Zulu
### 26 JUN 2017



1. Database name: ista420-project

1. Table names	    
    - teams
	
    - roster
	
    - batstats
	
    - pitstats
	
    - schedule
	
    - results
	
    - record
	
    - users
	

1. Table Description (teams)
    - The "teams" table will include the four team names used in the database.
	
    - The "teams" table will include values of "TeamID" as INTEGER and "TeamName" AS TEXT.
	
    - TeamID is the PRIMARY KEY for the teams table.
	
    - TeamID is the FOREIGN KEY for "users", "roster", and "schedule" tables.

1. Table Description (roster)
    - The "roster" table will include the players associated with the four teams in the database.
	
    - The "roster" table will include values of "PlayerID" as INTEGER, "TeamID" as INTEGER, "FirstName" as TEXT, "LastName" as TEXT, "Position" as TEXT and "JerseyNum" as INTEGER.
	
    - PlayerID is the PRIMARY KEY for the roster table.
	
    - TeamID is the FOREIGN KEY to establish relationship with the "teams" table.
	
    - PlayerID is the FOREIGN KEY for "batstats" and "pitstats" tables.

1. Table Description (batstats)
    - The "batstats" table will include the batting statistics associated with the players of the four teams in the database.
	
    - The "batstats" table will include values of "BatStatID" as INTEGER, "PlayerID" as INTEGER, "AtBats" as INTEGER, "Hits" as INTEGER, "AVERAGE" as FLOAT, "HomeRuns" as INTEGER, "RunsBatIn" as INTEGER and "StrikeOuts" as INTEGER.
	
    - BatstatID is the PRIMARY KEY for the batstats table.
	
    - PlayerID is the FOREIGN KEY to establish relationship with the "roster" table.
			
			
1. Table Description (pitstats)
    - The "pitstats" table will include the pitching statistics associated with the players of the four teams in the database.
	
    - The "pitstats" table will include values of "PitStatID" as INTEGER, "PlayerID" as INTEGER, "Wins" as INTEGER, "Losses" as INTEGER, "ERA" as FLOAT, "StrikeOuts" as INTEGER, "Walks" as INTEGER and "RunsAllowed" as INTEGER.
	
    - PitStatID is the PRIMARY KEY for the pitstats table.
	
    - PlayerID is the FOREIGN KEY to establish relationship with the "roster" table.

1. Table Description (schedule)
    - The "schedule" table will include the schedule associated with the four teams in the database.
	
    - The "schedule" table will include values of "SchedID" as INTEGER, "TeamID" as INTEGER, "HomeTeam" as TEXT, "AwayTeam" as TEXT, "Date" as DATE and "Results" as TEXT.
	
    - SchedID is the PRIMARY KEY for the schedule table.
	
    - TeamID is the FOREIGN KEY to establish relationship with the "teams" table.
	
    - SchedID is the FOREIGN KEY for "results" table.

1. Table Description (results)
    - The "results" table will include the results associated with the four teams in the database.
	
    - The "results" table will include values of "ResultsID" as INTEGER, "SchedID" as INTEGER, and "Score" as INTEGER.
	
    - ResultsID is the PRIMARY KEY for the results table.
	
    - SchedID is the FOREIGN KEY to establish relationship with the "schedule" table.
	
    - ResultsID is the FOREIGN KEY for "record" table.

1. Table Description (record)
    - The "record" table will include the records associated with the four teams in the database.
	
    - The "record" table will include values of "RecordID" as INTEGER, "ResultsID" as INTEGER, "Wins" as INTEGER, "Loss" as INTEGER, and "Total" as INTEGER.
	
    - RecordID is the PRIMARY KEY for the record table.
	
    - ResultsID is the FOREIGN KEY to establish relationship with the "results" table.
			
1. Table Description (users)
    - The "users" table will include all of the authorized users (Admin, registered users) used in the database.
	
    - The "users" table will include values of "UserID" as INTEGER, "UserName" as TEXT, and "TeamID" as INTEGER.
	
    - UserID is the PRIMARY KEY for the users table.
	
    - TeamID is the FOREIGN KEY to establish relationship with the "teams" table.

				
				