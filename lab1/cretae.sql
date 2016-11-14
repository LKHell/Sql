CREATE TABLE Student
(
	Sno VARCHAR(20) PRIMARY KEY, /*studentid*/
	SName VARCHAR(10),
	Age INT CHECK (Age>10 AND AGE<30),
	Sex CHAR(6) CHECK (Sex='Male' OR Sex='Female'),
	Depart VARCHAR(30)  /*department*/
	
);

CREATE TABLE Course
(
	Cno VARCHAR(15) PRIMARY KEY,
	CName VARCHAR(30),
	Credit INT  CHECK (Age>0 AND AGE<10),
	CBefore VARCHAR(15) /*coursebefore*/
);

CREATE TABLE SC
(
	Sno VARCHAR(20) ,
	Cno VARCHAR(15) ,
	Score Dec(5,2) CHECK(Score>0 AND Score<100),
	PRIMARY KEY (Sno , Cno)
);