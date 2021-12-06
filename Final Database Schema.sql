DROP TABLE Teams CASCADE CONSTRAINTS;
DROP TABLE Coaches CASCADE CONSTRAINTS;
DROP TABLE Players CASCADE CONSTRAINTS;

    
CREATE TABLE Teams(
	CollegeName		    varChar(50)		NOT NULL,
	TeamName			varChar(50)		NOT NULL,
	Totalwins			Int		        NULL,
    ConferenceWins	    Int		        NULL,
    TotalLosses			Int		        NULL,
    ConferenceLosses	    Int		        NULL,
    ChampionshipWins	Int		        NULL,
	PRIMARY KEY(CollegeName)
	);
 CREATE TABLE Coaches(
	Cfname              varchar(50)		NOT NULL,
    Clname              varchar(50)		NOT NULL,
	Wins			    Int		        NULL,
	Losses			    Int	            NULL,
	Coachtype			VarChar(100)    NULL,
    CTeam               VarChar(100)    NOT NULL,      
    primary key(clname),
    foreign key(Cteam) references Teams(CollegeName)
	);

CREATE TABLE Players(
	pfname              varchar(50)		NOT NULL,
    plname              VarChar(50)		NOT NULL,
    PTeam               varchar(50)     NOT NULL,
    Coach               varchar(50)     NOT NULL,
    TotalPoints		    Int		        NOT NULL,
    PointsPerGame	    float		    NOT NULL,
    TotalAssists		Int		        NOT NULL,
    AssistsPerGame      float		    NOT NULL,
    TotalRebounds	    Int		        NOT NULL,
    ReboundsPerGame     float           NOT NULL,
    TotalShotPercentage float		    NOT NULL,
    TwoPointShot	    float	        NOT NULL,
    ThreePointShot		float		    NOT NULL,
    FreeThrowShot       float		    NOT NULL,
    Position	        varchar(50)		NOT NULL,
    GamesPlayed         Int             NOT NULL,
    TotalSteals		    Int		        NOT NULL,
    StealsPerGame	    float		    NOT NULL,
    TotalBlocks		    Int		        NOT NULL,
    BlocksPerGame       float		    NOT NULL,
    JerseyNum           Int             Not null,
    foreign key(Coach) references Coaches(clname),
    foreign key(Pteam) references Teams(CollegeName)
	);
    



