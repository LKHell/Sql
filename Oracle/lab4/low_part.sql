set define on
set verify off
accept num number prompt 'Please enter the emp_num: '
select part_id,part_name
from part,responsible
where responsible.emp_number = &num 
and responsible.part_number = part.part_id 
and part.stock_qty + part.order_qty <= part.min_qty;