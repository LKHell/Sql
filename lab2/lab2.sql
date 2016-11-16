1/
CREATE PROCEDURE All_Student
AS
BEGIN 
	SELECT * 
	FROM Student
END

EXEC All_Student

2/
CREATE PROCEDURE Select_Student
@Sno VARCHAR(10)
AS
BEGIN 
	SELECT *
	FROM Student
	WHERE Sno=@Sno
END

EXEC Select_Student @SNO='20160001'

3/
CREATE PROCEDURE Select_StudentSName
@Sno VARCHAR(10),
@STName VARCHAR(20) OUTPUT
AS
BEGIN 
	SELECT @STName=SName
	FROM Student
	WHERE Sno=@Sno;
END

DECLARE @Name VARCHAR(20);
EXECUTE Select_StudentSName '20160001',@Name OUTPUT;
SELECT @Name AS STUDENT_NAME

4/
CREATE PROCEDURE Delete_Student
@Sno VARCHAR(10)
AS
BEGIN 
	DELETE 
	FROM Student
	WHERE Sno=@Sno;
END

EXECUTE Delete_Student '20160009'

5/
CREATE PROCEDURE Update_Student
@Sno VARCHAR(10),
@SName VARCHAR(20),
@Sex CHAR(6),
@Age INT,
@Depart VARCHAR(30)

AS
BEGIN 
	UPDATE Student 
	SET SName=@SName,Sex=@Sex,Age=@Age,Depart=@Depart
	WHERE Sno=@Sno
 
END

EXEC Update_Student '20160001','CXSDZZ','MALE',22,'ISS'

/* SName=@SName,Sex=@Sex,Age=@Age,Depart=@Depart */

6/
CREATE PROCEDURE Insert_Student
@Sno VARCHAR(10),
@SName VARCHAR(20),
@Sex CHAR(6),
@Age INT,
@Depart VARCHAR(30)

AS
BEGIN 
	INSERT
	INTO Student 
	VALUES ( @Sno ,@SName,@Age,@Sex,@Depart)
END

EXEC Insert_Student '20160101','CXSDZZ','MALE',22,'ISS'

/* SNO , SNAME ,SEX,AGE,DEPARTMENT */

7/
