SELECT '''''''' FROM dual;

select a.MEM_ID
from p04_member a, p04_point b
WHERE a.MEM_ID = b.MEM_ID ;

SELECT a.MEM_ID, a.MEM_NO FROM P04_MEMBER a ;

SELECT sum(b.POINT_MILEAGE ) FROM P04_POINT b
WHERE b.MEM_ID = 'himan1';


SELECT DISTINCT a.* ,(SELECT sum(b.POINT_MILEAGE ) FROM P04_POINT b  
WHERE b.MEM_ID = 'himan1') "mem_mileage" FROM P04_MEMBER a, P04_POINT b 
WHERE a.MEM_ID = 'himan1'
AND a.MEM_ID = b.MEM_ID;


select * from p04_member;