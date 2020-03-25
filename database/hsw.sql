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



SELECT * FROM p04_notice
WHERE noti_no = 18;

-- 18|고객센터 전화상담 운영 임시중단 안내|안녕하세요. 하비팩토리입니다.\n\n하비팩토리는 고객과 임직원의 코로나19 감염 예방을 위해, 전직원 재택 근무를 결정하였습니다.\n\n\n\n이에 따라 고객센터 전화상담 운영을 임시 중단하오니, 1:1 문의 및 채팅 상담을 이용해주시기 바랍니다.\n\n※ 전화상담 중단 기간 : 2월 25일 ~ 추후 공지\n\n\n\n전화상담 외에 모든 업무는 정상 진행됨을 알려드리며, 이용에 불편을 드리게 된 점 죄송한 말씀드립니다.\n\n하루 빨리 사태가 마무리되고|2020-02-25 00:00:00|Y        |
UPDATE p04_notice
SET noti_no = 18, 
	noti_title = '고객',
	noti_detail = '답변',
	noti_code = 'Y' 
WHERE noti_no = 18;

SELECT * FROM p04_notice;
INSERT INTO p04_notice values(p04_notice_seq.nextval,
'제목','내용',sysdate,'Y');

SELECT * FROM P04_COURSE;
UPDATE p04_course 
SET mem_id = 'ezen4',
course_title = '부채', 
course_detail = 'star1.jpg', 
course_img = 'star1.jpg', 
coruse_category = '다양한 취미' 
WHERE course_no = 4;

SELECT * FROM p04_store
WHERE store_no=8;

UPDATE p04_store 
SET store_code = '미승인'
WHERE store_no = 8;

SELECT DISTINCT a.* ,(SELECT sum(b.POINT_MILEAGE ) FROM P04_POINT b
WHERE b.MEM_ID = 'ezen1') "mem_mileage" FROM P04_MEMBER a, P04_POINT b
WHERE b.MEM_ID = 'ezen1'
AND a.MEM_ID = b.MEM_ID;

SELECT b.* FROM p04_course a, p04_ckind b
where a.COURSE_NO = b.COURSE_NO
AND a.COURSE_NO = 1;

SELECT * FROM P04_COURSE ;
INSERT INTO p04_course values(p04_course_seq.nextval,sysdate,'
제목','"내용','이미지','카테로리');
SELECT * FROM P04_NOTICE pn WHERE noti_no=17;
안녕하세요. 하비팩토리입니다.¶¶하비팩토리는 고객과 임직원의 코로나19 감염 예방을 위해, 전직원 재택 근무를 결정하였습니다.¶¶¶¶이에 따라 고객센터 전화상담 운영을 임시 중단하오니, 1:1 문의 및 채팅 상담을 이용해주시기 바랍니다.\n\n※ 전화상담 중단 기간 : 2월 25일 ~ 추후 공지\n\n\n\n전화상담 외에 모든 업무는 정상 진행됨을 알려드리며, 이용에 불편을 드리게 된 점 죄송한 말씀드립니다


SELECT * FROM P04_CKIND pc ORDER BY CKIND_NO;

INSERT INTO p04_ckind
values(p04_ckind_seq.nextval, 1,'정규',NULL,10000,5,0);

UPDATE P04_CKIND
SET COURSE_KIND = '원데이',
COURSE_OPENDATE = to_date('2020-03-25','YYYY-MM-DD'),
COURSE_PRICE =1010,
COURSE_TOTCNT = 20
WHERE CKIND_NO = 5;

DELETE p04_ckind
WHERE ckind_no = 5;

