--jason adams
--jun 1 2017

.echo on
.headers on

drop table if exists roster;
drop table if exists stats;
drop table if exists teams;

create table teams (
 teamid int NOT NULL,
 teamName text NOT NUll,
 primary key(teamid)
);

insert into teams values(1, 'Team1');
insert into teams values(2, 'Team2');

create table roster ( 
 playerid int NOT NULL, 
 teamid int NOT NULL,
 Firstname text NOT NULL,
 Lastname text NOT NULL,  
 postition text,
 jurseyNum text NOT NULL,
PRIMARY KEY (playerid)
FOREIGN KEY (teamid) REFERENCES teams(teamid)
);


insert into roster values  (1, 1, 'Jason', 'Adams', 'pitcher', 1);
insert into roster values  (2, 1, 'Todd', 'Knoblok', 'catcher', 2);
insert into roster values (3, 1, 'Lee', 'Torg', 'first base', 3);
insert into roster values (4, 1, 'David', 'Lawberg', 'second base', 4);
insert into roster values  (5, 1, 'David', 'Harris', 'thrid base', 5);
insert into roster values  (6, 1, 'Justin', 'Rddings', 'left field', 6);
insert into roster values  (7, 1, 'Terry', 'Horn', 'center field', 7);
insert into roster values  (8, 1, 'Ashley', 'Monlina', 'right field', 8);
insert into roster values  (9, 1, 'Linoel', 'Garcia', 'short stop', 9);
insert into roster values  (11, 2, 'Jacob', 'Smith', 'pitcher', 9);
insert into roster values  (12, 2, 'Timmy', 'Knapp', 'catcher', 8);
insert into roster values (13, 2, 'Lester', 'Tron', 'first base', 7);
insert into roster values (14, 2, 'Harry', 'Dirty', 'second base', 6);
insert into roster values  (15, 2, 'Dick', 'Tracy', 'thrid base', 5);
insert into roster values  (16, 2, 'Jeremy', 'Irons', 'left field', 4);
insert into roster values  (17, 2, 'Tom', 'Hardy', 'center field', 3);
insert into roster values  (18, 2, 'Mary', 'Mag', 'right field', 2);
insert into roster values  (19, 2, 'Joe', 'Cool', 'short stop' ,1);


create table stats ( 
 BatstatID int NOT NULL,
 playerid int NOT NULL, 
 batAvg int, 
 homeRun int, 
 rbi int,
 Rscoure int,
 stolenbase int,
PRIMARY KEY (BatstatID)
FOREIGN KEY (playerid) REFERENCES roster(teamid)
);

insert into stats values(1, 1, 205, 10, 7, 2, 3);
insert into stats values(2, 2, 230, 10, 8, 2, 1);
insert into stats values(3, 3, 303, 11, 3, 2, 9);
insert into stats values(4, 4, 40, 1, 4, 4, 3);
insert into stats values(5, 5, 104, 7, 4, 8, 5);
insert into stats values(6, 6, 42, 1, 4, 1, 3);
insert into stats values(7, 7, 90, 3, 4, 8, 1);
insert into stats values(8, 8, 80, 4, 4, 3, 0);
insert into stats values(9, 9, 97, 6, 4, 6, 1);

insert into stats values(11, 11, 205, 10, 7, 2, 3);
insert into stats values(12, 12, 230, 10, 8, 2, 1);
insert into stats values(13, 13, 303, 11, 3, 2, 9);
insert into stats values(14, 14, 40, 1, 4, 4, 3);
insert into stats values(15, 15, 104, 7, 4, 8, 5);
insert into stats values(16, 16, 42, 1, 4, 1, 3);
insert into stats values(17, 17, 90, 3, 4, 8, 1);
insert into stats values(18, 18, 80, 4, 4, 3, 0);
insert into stats values(19, 19, 97, 6, 4, 6, 1);



.exit