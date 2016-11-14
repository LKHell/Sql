/*18 query*/

1/
SELECT *
FROM Student
WHERE Depart='IS' OR Depart='CS'
ORDER BY Depart ,Sno;

2/
SELECT *
FROM Student
WHERE age=(SELECT MIN(age) FROM Student)

3//////course name like English
SELECT CName 
FROM Course
WHERE CName Like '%English%'

4/
SELECT Cno,CName,Credit
FROM Course
WHERE CBefore IS NULL ;

5/ LiA the score of C
SELECT Student.Sno,SName,Score
	FROM Student,SC,Course
WHERE Student.Sno=SC.Sno AND SC.Cno=Course.Cno
AND SName='LiA'AND CName = 'C';

6/
select Sno		 
	from SC 
	Group by Sno 
	having AVG(Score)>80; 

7/
SELECT SName
FROM Student
WHERE Sno not in
		(
			SELECT  Sno
			FROM SC,Course
			WHERE SC.Cno=Course.Cno
			AND CName ='Database'
		)
		AND department = 'CS';

8/ 20160005
SELECT DISTINCT Sno
From SC CX
WHERE NOT EXISTS
(
	SELECT *
	FROM SC CY
	WHERE CY.Sno='20160005' AND 
	NOT EXISTS
	(
		SELECT *
		FROM SC CZ
		WHERE CZ.Sno=CX.Sno AND 
				CZ.Cno=CY.Cno
	)
)


9/
SELECT	*
FROM Student
ORDER BY Depart DESC;

10/
SELECT Student.Sno , Score
FROM Student,SC
WHERE Student.Sno=SC.Sno
AND CNO = 9 AND 
Score>(SELECT avg(Score) 
	FROM SC 
	WHERE CNO=9
 );





11/
UPDATE SC
SET Score=Score+5
WHERE Cno=
(
	SELECT Cno
	FROM Course
	WHERE CName='Database'
)

12/

UPDATE SC
SET Score=85
WHETE Sno=
(
	SELECT Sno
	FROM Student
	WHERE SName='ZhaoC'
)
AND 
Cno



 