LOAD DATA
INFILE 'pa_task.dat'
INTO TABLE pa_task
FIELDS TERMINATED BY ','
(emp_num,po_number)