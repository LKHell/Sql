INSERT
INTO Student 
VALUES		(20160001,'LiA',22,'Male','CS'),
			(20160002,'LiB',22,'Female','MA'),
			(20160003,'LiC',23,'Male','MA'),
			(20160004,'ZhaoA',21,'Female','MA'),
			(20160005,'ZhaoB',22,'Female','IS'),
			(20160006,'ZhaoC',22,'Male','CS'),
			(20160007,'WangA',23,'Female','MA'),
			(20160008,'WangB',24,'Female','MA'),
			(20160009,'WangC',22,'Male','MA'),
			(20160010,'ChenA',21,'Male','IS'),
			(20160011,'ChenC',22,'Male','IS'),
			(20160012,'ChenX',23,'Male','CS'); 

INSERT
INTO Course 
VALUES		(001,'Math',5,NULL),
			(002,'Physics',3,001),
			(003,'English',3,NULL),
			(004,'EnglishII',3,003),
			(005,'EnglishIII',3,004),
			(006,'C',4,NULL),
			(007,'Java',3,006),
			(008,'InformationSystem',3,006),
			(009,'Database',4,008),
			(010,'History',8,NULL);
			

INSERT
INTO SC 
VALUES		(20160001,001,98),
			(20160001,003,90),
			(20160001,006,96),
			(20160001,009,88),
			
			(20160006,002,NULL),
			(20160006,009,98),
		
			(20160007,004,71),
			(20160006,007,NULL),

			(20160008,005,68),
			
			(20160005,002,99),
			(20160005,003,69),
			
			(20160004,002,98),
			(20160004,003,78),
			
			(20160010,001,81),
			
			(20160010,003,81),

			(20160012,002,41),
			(20160012,003,91),
			(20160012,006,41);
