CREATE TABLE Student
(
	Sno VARCHAR(20) PRIMARY KEY, /*studentid*/
	SName VARCHAR(10),
	Age INT,
	Depart VARCHAR(30)  /*department*/
	
);

CREATE TABLE Course
(
	Cno VARCHAR(15) PRIMARY KEY,
	CName VARCHAR(30),
	Credit INT,
	CBefore VARCHAR(15) /*coursebefore*/
);

CREATE TABLE SC
(
	Sno VARCHAR(20) ,
	Cno VARCHAR(15) ,
	Score Dec(5,2),
	PRIMARY KEY (Sno , Cno)
);