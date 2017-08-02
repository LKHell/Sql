-- pds
GRANT SELECT,UPDATE ON responsible TO user057;
GRANT SELECT ON part TO user057;
GRANT SELECT ON pa_agent TO user057;
GRANT SELECT ON purchase_pds TO user057;
-- sks
GRANT SELECT ON part_sks TO user059;
GRANT UPDATE,SELECT ON responsible TO user059;
--sk
GRANT SELECT,UPDATE ON part_sk  TO user137;
GRANT SELECT,UPDATE ON part  TO user137;
GRANT SELECT ON purchase_sk TO user137;
GRANT UPDATE ON purchase_order TO user137;
GRANT SELECT,UPDATE ON detail TO user137;
--pa
GRANT SELECT,INSERT ON detail TO user123;
GRANT SELECT,INSERT ON contractual TO user123;
GRANT SELECT,INSERT ON pa_task TO user123;
GRANT SELECT,INSERT ON purchase_order TO user123;
GRANT SELECT ON part_pa TO user123;
GRANT SELECT ON pot_supplier_pa TO user123;
GRANT SELECT ON part TO user123;

-- Tech is DBA