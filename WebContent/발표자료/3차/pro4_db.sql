CREATE TABLE p04_member (
	mem_id       varchar2(10) NOT NULL, -- 아이디
	mem_no       number       NULL,     -- 회원번호
	mem_pass     varchar2(20) NULL,     -- 비밀번호
	mem_name     varchar2(20) NULL,     -- 이름
	mem_mail     varchar2(30) NULL,     -- 이메일
	mem_nickname varchar2(30) NULL,     -- 닉네임
	mem_birth    DATE         NULL,     -- 생년월일
	mem_phone    varchar2(15) NULL,     -- 휴대폰
	mem_code     char(1)      NULL      -- 등급
);
CREATE SEQUENCE p04_member_seq
INCREMENT BY 1
START WITH 1;

INSERT INTO P04_MEMBER 
VALUES ('himan'||p04_member_seq.nextval,p04_member_seq.nextval,'770'||p04_member_seq.nextval,
'홍길동'||p04_member_seq.nextval,'himan'||p04_member_seq.nextval||'@gmail.com',
'둘리'||p04_member_seq.nextval,'1990-01-01',
'010-0001-000'||p04_member_seq.nextval,'N');

DROP SEQUENCE p04_member_seq;
SELECT * FROM P04_MEMBER;
DROP TABLE p04_member;

SELECT mem_no "No", mem_id "ID", mem_name "이름",
		mem_phone "연락처", mem_code "등급"
FROM P04_MEMBER;

CREATE TABLE p04_course (
	course_no        NUMBER         NOT NULL, -- 클래스번호
	mem_id           varchar2(10)   NULL,     -- 호스트
	course_inputdate DATE           NULL,     -- 클래스등록일
	course_title     varchar2(100)  NULL,     -- 클래스명
	course_kind      varchar2(100)  NULL,     -- 클래스종류
	course_detail    varchar2(1000) NULL,     -- 상세설명
	course_curCnt    NUMBER         NULL,     -- 현인원
	course_totCnt    NUMBER         NULL,     -- 최대인원
	course_price     NUMBER         NULL,     -- 가격
	course_img       varchar2(1000) NULL,     -- 클래스이미지
	course_opendate  DATE           NULL,     -- 수강일
	coruse_category  varchar2(100)  NULL      -- 수업분류
);
SELECT course_no "No",course_title "클래스명",mem_id "호스트명",
		course_totCnt "인원",course_opendate "수강일"
FROM p04_course;
CREATE SEQUENCE p04_course_seq
INCREMENT BY 1
START WITH 1;
INSERT INTO p04_course
VALUES (p04_course_seq.nextval,'himan66',sysdate,'달달한 마카롱 굽기',
'D','달달한 마카롱을 직접 구워봅시다.',0,5,50000,'','2020-03-17','다양한 취미');
SELECT * FROM p04_course;
CREATE TABLE p04_store (
	store_no       NUMBER         NOT NULL, -- 상품번호
	mem_id         varchar2(10)   NULL,     -- 호스트
	store_title    varchar2(100)  NULL,     -- 상품명
	store_code     char(1)        NULL,     -- 승인상태
	store_price    NUMBER         NULL,     -- 가격
	store_totCnt   NUMBER         NULL,     -- 총갯수
	store_detail   varchar2(1000) NULL,     -- 상품설명
	strore_date    DATE           NULL,     -- 신청일
	store_img      varchar2(1000) NULL,     -- 상품이미지
	store_category varchar2(100)  NULL      -- 상품분류
);


CREATE TABLE p04_notice (
	noti_no     NUMBER         NOT NULL, -- 공지사항번호
	noti_title  varchar2(100)  NULL,     -- 공지제목
	noti_detail varchar2(1000) NULL,     -- 공지내용
	noti_date   DATE           NULL,     -- 공지등록일
	noti_code   char(1)        NULL      -- 중요여부
);

INSERT INTO p04_notice
VALUES (p04_notice_seq, '코로나 바이러스에 의한 취소/환불 안내',
'코로나바이러스의 확산을 방지하고자 3월에 진행 예정인 클래스에 대한 취소 및 환불조치가 있습니다.',
'2020-03-11','Y');
