-- Table creation for TJUT-Lab2 8trd157(phase 2)
-- Paul Girard Ph.D. UQAC

drop view part_sks;
drop view part_pds;
drop view purchase_pds;

drop table detail;
drop table pa_task;
drop table contractual;
drop table pot_supplier;
drop table product;
drop table purchase_order;
drop table responsible;
drop table pa_agent;
drop table component;
drop table supplier;
drop table part;

create table pa_agent
        (emp_num        number(4)       primary key,
        pa_name         char(15)        not null);

create table part
        (part_id        number(4)       primary key,
        part_name       char(15)        not null,
        stock_qty       number(4)       default 0,
        order_qty       number(4)       default 0,
        min_qty         number(4)       default 0,
        unit            char(10)        default 'unit',
        unit_price      number(7,2)     default 0);
        
create view part_sks as
        select stock_qty, unit_price
        from part;
	
create view part_pds as
        select part_id, part_name
        from part;
        
create table responsible
        (emp_number     number(4)       not null references pa_agent(emp_num),
        part_number     number(4)       not null references part(part_id),
        CONSTRAINT uni_responsible unique (emp_number,part_number));

create table supplier
        (supplier_id    number(4)       primary key,
        supplier_name   char(15)        not null,
        addr            char(20)        not null,
        contact         char(15)        not null);

create table component
        (partid         number(4)       not null references part(part_id),
        componentid     number(4)       not null references part(part_id),
        CONSTRAINT uni_component unique (partid,componentid));

create table product
        (product_id     number(4)       not null,
        supplier_id     number(4)       not null references supplier(supplier_id),
        product_name    char(15)        not null,
        unit            number(4)       not null,
        unit_price      number(7,2)     not null,
        CONSTRAINT pk_product PRIMARY KEY (product_id, supplier_id));

create table pot_supplier
        (supplier_id    number(4)       not null,
        product_id      number(4)       not null,
        part_id         number(4)       not null references part(part_id),
        CONSTRAINT ref_pot_supplier     FOREIGN KEY (product_id,supplier_id)
                                        REFERENCES product (product_id,supplier_id));
create table purchase_order
        (po_number      number(4)       primary key,
        po_date         char(8)         not null,
        total           number(5,2)     default 0,
        status          char(15)        default 'not_completed');
        
create view purchase_pds as
        select po_date,total from purchase_order;
        
create table contractual
        (supplier_id    number(4)       not null references supplier(supplier_id),
        po_number       number(4)       primary key references purchase_order(po_number));
        
create table pa_task
        (emp_num        number(4)       not null,
        po_number       number(4)       primary key references purchase_order(po_number));
        
create table detail
        (po_number      number(4)       references purchase_order(po_number),
        product_id      number(4)	not null,
        qty_order       number(4)       not null,
        qty_rec         number(4)       not null);
	
create index detail_idx on detail(po_number, product_id);