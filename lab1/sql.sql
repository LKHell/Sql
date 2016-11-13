/*18 query*/

1/
SELECT *
FROM Student
WHERE Depart='IS' OR Depart='CS'
ORDER BY Depart ,SID;

2/
SELECT *
FROM Student
WHERE age=(SELECT MIN(age) FROM Student)

3//////course name like English
SELECT CName 
FROM Course
WHERE CName Like '%English%'

4/
SELECT CID,CName,Credit
FROM Course
WHERE CBefore IS NULL ;

5/ LiA the score of C
SELECT Student.SID,SName,Score
	FROM Student,Choose,Course
Where Student.SID=Choose.SID AND Choose.CID=Course.CID
AND SName='LiA'AND CName = 'C';

6/
select SID 
	from Choose 
	Group by SID 
	having AVG(Score)>80; 

7/
SELECT SName
FROM Student
Where SID not in
		(
			select  SID
			FROM Choose,Course
			WHERE Choose.CID=Course.CID
			AND CName ='Database'
		)
		AND department = 'CS';

8/
