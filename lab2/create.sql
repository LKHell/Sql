CREATE TABLE Student
(
	Sno VARCHAR(10) PRIMARY KEY, /*studentid*/
	SName VARCHAR(20),
	Age INT CHECK (Age>=21 AND AGE<=25),
	Sex CHAR(6) CHECK (Sex='Male' OR Sex='Female'),
	Depart VARCHAR(30)  /*department*/
	
);

CREATE TABLE Course
(
	Cno VARCHAR(15) PRIMARY KEY,
	CName VARCHAR(30),
	Credit INT  CHECK (Credit>0 AND Credit<10),
	CBefore VARCHAR(15) /*coursebefore*/
);

CREATE TABLE SC
(
	Sno VARCHAR(10) ,
	Cno VARCHAR(15) ,
	Score Dec(5,2) CHECK(Score>0 AND Score<100),
	PRIMARY KEY (Sno , Cno),
	FOREIGN KEY(Sno) REFERENCES  Student(Sno),
	FOREIGN KEY(Cno) REFERENCES  Course(Cno)
);
