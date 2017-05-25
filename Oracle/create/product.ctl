LOAD DATA
INFILE 'product.dat'
INTO TABLE product
FIELDS TERMINATED BY ','
(product_id,supplier_id,product_name,unit,unit_price)