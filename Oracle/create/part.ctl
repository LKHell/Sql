LOAD DATA
INFILE 'part.dat'
INTO TABLE part
FIELDS TERMINATED BY ','
TRAILING NULLCOLS
(part_id, part_name, stock_qty "nvl(:stock_qty,0)", order_qty "nvl(:order_qty,0)", min_qty "nvl(:min_qty,0)", unit "nvl(:unit,'unit')", unit_price)