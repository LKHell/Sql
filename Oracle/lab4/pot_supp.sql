set define on
set verify off
accept num number prompt'Please enter the part_id:'
select pot_supplier.product_id,pot_supplier.supplier_id,product.unit,product.unit_price
from pot_supplier,product
where pot_supplier.part_id = &num 
and pot_supplier.product_id = product.product_id;
