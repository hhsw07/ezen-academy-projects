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



SELECT * FROM p04_course;


SELECT * FROM p04_course
WHERE COURSE_NO = 1;

UPDATE p04_notice 
SET course_no = 00 
	mem_id = '@@' 
	course_inputdate = to_date('"+upt.getCourse_inputdate()+"','YYYY-MM-DD'),\r\n" + 
	course_title = '"+upt.getCourse_title()+"',\r\n" + 
	course_detail = '"+upt.getCourse_detail()+"',\r\n" + 
	course_img = '"+upt.getCourse_img()+"',\r\n" + 
	coruse_category = '"+upt.getCourse_category()+"'\r\n" + 
WHERE course_no = "+upt.getCourse_no() ;

SELECT * FROM P04_NOTICE;