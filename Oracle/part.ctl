LOAD DATA
INFILE 'part.dat'
INTO TABLE part
FIELDS TERMINATED BY ','
(part_id, part_name, stock_qty, order_qty, min_qty, unit, unit_price)