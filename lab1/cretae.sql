CREATE TABLE Student
(
	SID VARCHAR(20) PRIMARY KEY, /*studentid*/
	SName VARCHAR(10),
	Age INT,
	Depart VARCHAR(30)  /*department*/
	
);

CREATE TABLE Course
(
	CID VARCHAR(15) PRIMARY KEY,
	CName VARCHAR(30),
	Credit INT,
	CBefore VARCHAR(15) /*coursebefore*/
);

CREATE TABLE Choose
(
	SID VARCHAR(20) ,
	CID VARCHAR(15) ,
	Score Dec(5,2),
	PRIMARY KEY (SID , CID)
);
