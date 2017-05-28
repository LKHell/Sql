set define on
set verify off

accept num number prompt'Please enter the po_number:'
accept date char prompt'Please enter the po_date:'
insert into purchase_order(po_number,po_date)
values(&num,'&date');

accept po_number number prompt'Please enter the po_number:'
accept product_id number prompt'Please enter the product_id:'
accept qty_order number prompt'Please enter the qty_order:'
insert into detail(po_number,product_id,qty_order,qty_rec)
values(&po_number,&product_id,&qty_order,0);

accept supplier_id number prompt'Please enter the supplier_id:'
accept po_number number prompt'Please enter the po_number:'
insert into contractual
values(&supplier_id,&po_number);

accept po_number number prompt'Please enter the po_number,display total of the purchase order:'
select sum(total)
from purchase_order
where po_number = &po_number;
