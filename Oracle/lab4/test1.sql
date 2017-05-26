 SELECT partid, part_name
                FROM part,component
                WHERE componentid=part_id AND partid=2001;