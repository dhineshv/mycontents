/* Script to kill session by username */

select 'alter system kill session '''||sid||','||serial#||',@'||inst_id||''' immediate;' from gv$session WHERE username like '%REPORTS%QREL' and status='ACTIVE';

