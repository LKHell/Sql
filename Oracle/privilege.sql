-- pds
GRANT SELECT,UPDATE ON responsible TO ora00057;
GRANT SELECT ON purchase_pds TO ora00057;
-- sks
GRANT SELECT ON part_sks TO ora00059;
--sk
GRANT SELECT,UPDATE ON part_sk  TO ora00137;
GRANT SELECT,UPDATE ON part  TO ora00137;
GRANT SELECT ON purchase_sk TO ora00137;
GRANT UPDATE ON purchase_order To ora00137;
GRANT SELECT,UPDATE ON detail To ora00137;
--pa

grant select on part_pa to ora00123;