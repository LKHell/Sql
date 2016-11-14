SELECT *
FROM Student,SC,Course
WHERE Student.Sno=SC.Sno 
		AND SC.Cno=Course.Cno;