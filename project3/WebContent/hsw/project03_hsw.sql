/*
1. num컬럼에 insert 번호 자동증가.
(select nvl(max(num),0)+1 from 테이블명)
*/



ALTER TABLE pro03_member
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;
DROP INDEX PK_pro03_member;
/* 회원(보호자) */
DROP TABLE pro03_member 
	CASCADE CONSTRAINTS;
/* 회원(보호자) */
CREATE TABLE pro03_member (
	mem_id VARCHAR2(20) NOT NULL, /* 아이디 */
	mem_kind NUMBER, /* 회원분류 */
	mem_pass VARCHAR2(20), /* 비밀번호 */
	mem_name VARCHAR2(15), /* 이름 */
	mem_phone VARCHAR2(15), /* 핸드폰번호 */
	mem_email VARCHAR2(30), /* 이메일 */
	mem_addressnum NUMBER, /* 우편번호 */
	mem_address VARCHAR2(200), /* 주소 */
	mem_profileshot VARCHAR2(100) /* 프로필사진 */
);
/* 회원 행 추가*/
INSERT INTO pro03_member
VALUES('hswpuppy',2,'puppylove','한송우','010-6676-0729','kaloo7@naver.com','','서울시 노원구','');
INSERT INTO PRO03_MEMBER 
VALUES('gudwns19', 2, '1q2w3e', '김형준', '010-2532-1279', 'skxowns19@naver.com',NULL,'경기도 남양주시',NULL);


CREATE UNIQUE INDEX PK_pro03_member
	ON pro03_member (
		mem_id ASC
	);

ALTER TABLE pro03_member
	ADD
		CONSTRAINT PK_pro03_member
		PRIMARY KEY (
			mem_id
		);
SELECT * FROM PRO03_MEMBER;
------
ALTER TABLE pro03_memberalbum
	DROP
		CONSTRAINT FK_pro03_member_TO_pro03_memberalbum
		CASCADE;

/* 회원사진첩 */
DROP TABLE pro03_memberalbum 
	CASCADE CONSTRAINTS;

/* 회원사진첩 */
CREATE TABLE pro03_memberalbum (
	memalb_mem_id VARCHAR2(20), /* 아이디 */
	memalb_info VARCHAR2(100) /* 사진정보 */
);
/* 회원 사진첩 행 추가*/
INSERT INTO pro03_memberalbum values(NULL,null);


ALTER TABLE pro03_memberalbum
	ADD
		CONSTRAINT FK_pro03_memberalbum
		FOREIGN KEY (
			memalb_mem_id
		)
		REFERENCES pro03_member (
			mem_id
		);		
------
ALTER TABLE pro03_sitter
DROP
	CONSTRAINT FK_pro03_sitter
	CASCADE;

ALTER TABLE pro03_sitter
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

DROP INDEX PK_pro03_sitter;

/* 시터 */
DROP TABLE pro03_sitter 
	CASCADE CONSTRAINTS;

/* 시터 */
CREATE TABLE pro03_sitter (
	sit_mem_id VARCHAR2(20) NOT NULL, /* 아이디 */
	sit_num NUMBER NOT NULL, /* 시터번호 */
	sit_profileshot VARCHAR2(100), /* 시터프로필사진 */
	sit_intro VARCHAR2(200), /* 자기소개 */
	sit_accountnum NUMBER /* 수취계좌 */
);
/* 시터 행 추가*/
INSERT INTO pro03_sitter values('gudwns19', 1, NULL, '저는 일을 잘하는 시터입니다', 110111111111);

CREATE UNIQUE INDEX PK_pro03_sitter
	ON pro03_sitter (
		sit_num ASC
	);

ALTER TABLE pro03_sitter
	ADD
		CONSTRAINT PK_pro03_sitter
		PRIMARY KEY (
			sit_num
		);

ALTER TABLE pro03_sitter
	ADD
		CONSTRAINT FK_pro03_sitter
		FOREIGN KEY (
			sit_mem_id
		)
		REFERENCES pro03_member (
			mem_id
		);
------
ALTER TABLE pro03_sitteralbum
	DROP
		CONSTRAINT FK_pro03_sitter_TO_pro03_sitteralbum
		CASCADE;

/* 시터사진첩 */
DROP TABLE pro03_sitteralbum 
	CASCADE CONSTRAINTS;

/* 시터사진첩 */
CREATE TABLE pro03_sitteralbum (
	sitalb_sit_num NUMBER, /* 시터번호 */
	sitalb_info VARCHAR2(100) /* 사진정보 */
);
/* 시터 사진첩 행 추가*/
INSERT INTO pro03_sitteralbum values(1,null);

ALTER TABLE pro03_sitteralbum
	ADD
		CONSTRAINT FK_pro03_sitteralbum
		FOREIGN KEY (
			sitalb_sit_num
		)
		REFERENCES pro03_sitter (
			sit_num
		);
------
ALTER TABLE pro03_calender
	DROP
		CONSTRAINT FK_pro03_sitter_TO_pro03_calender
		CASCADE;

/* 캘린더 */
DROP TABLE pro03_calender 
	CASCADE CONSTRAINTS;

/* 캘린더 */
CREATE TABLE pro03_calender (
	cal_sit_num NUMBER, /* 시터번호 */
	cal_startdate DATE, /* 불가능일(시작) */
	cal_enddate DATE /* 불가능일(종료) */
);
/* 캘린더 행 추가*/
INSERT INTO pro03_calender values(1,NULL,null);

ALTER TABLE pro03_calender
	ADD
		CONSTRAINT FK_pro03_calender
		FOREIGN KEY (
			cal_sit_num
		)
		REFERENCES pro03_sitter (
			sit_num
		);
------
ALTER TABLE pro03_pet
	DROP
		CONSTRAINT FK_pro03_member_TO_pro03_pet
		CASCADE;

ALTER TABLE pro03_pet
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

DROP INDEX PK_pro03_pet;

/* 펫 */
DROP TABLE pro03_pet 
	CASCADE CONSTRAINTS;

/* 펫 */
CREATE TABLE pro03_pet (
	pet_num NUMBER NOT NULL, /* 펫번호 */
	pet_mem_id VARCHAR2(20), /* 아이디 */
	pet_kind VARCHAR2(10), /* 동물종류 */
	pet_breed VARCHAR2(30), /* 품종 */
	pet_gender CHAR(1), /* 성별 */
	pet_age NUMBER, /* 나이 */
	pet_weight NUMBER, /* 무게 */
	pet_neutralize CHAR(1), /* 중성화 */
	pet_disease VARCHAR2(80), /* 질병이력 */
	pet_allergy VARCHAR2(80) /* 알러지 */
);
/* 펫정보 행 추가*/
INSERT INTO pro03_pet values(1,'gudwns19', '강아지','웰시코기','M',3,14,'Y','없음','없음');
INSERT INTO pro03_pet values(2,'gudwns19', '고양이','러시안블루','F',6,3,'Y','없음','없음');
INSERT INTO pro03_pet values(3,'gudwns19', '강아지','퍼그','F',1,7,'Y','없음','없음');

CREATE UNIQUE INDEX PK_pro03_pet
	ON pro03_pet (
		pet_num ASC
	);

ALTER TABLE pro03_pet
	ADD
		CONSTRAINT PK_pro03_pet
		PRIMARY KEY (
			pet_num
		);

ALTER TABLE pro03_pet
	ADD
		CONSTRAINT FK_pro03_pet
		FOREIGN KEY (
			pet_mem_id
		)
		REFERENCES pro03_member (
			mem_id
		);
------
ALTER TABLE pro03_status
	DROP
		CONSTRAINT FK_pro03_pet_TO_pro03_status
		CASCADE;

ALTER TABLE pro03_status
	DROP
		CONSTRAINT FK_pro03_carekind_TO_pro03_status
		CASCADE;

ALTER TABLE pro03_status
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

DROP INDEX PK_pro03_status;

/* 이용현황 */
DROP TABLE pro03_status 
	CASCADE CONSTRAINTS;

/* 이용현황 */
CREATE TABLE pro03_status (
	stat_pet_num NUMBER NOT NULL, /* 펫번호 */
	stat_care_num NUMBER, /* 케어분류번호 */
	stat_permission CHAR(1), /* 승인상태 */
	stat_startdate DATE, /* 시작일 */
	stat_enddate DATE /* 종료일 */
);
/* 이용현황 행 추가*/
INSERT INTO pro03_status
VALUES(1,1,'o',to_date('2020/01/10','yyyy/mm/dd');
INSERT INTO pro03_status
VALUES(2,1,'o',to_date('2020/01/10','yyyy/mm/dd');
INSERT INTO pro03_status
VALUES(3,1,'x',to_date('2020/01/10','yyyy/mm/dd');
INSERT INTO pro03_status
VALUES(1,2,'x',to_date('2020/01/15','yyyy/mm/dd');
/* 시터 id를 포함한 이용현황(보호자가 보는 화면)*/
SELECT pro03_sitter.sit_mem_id "시터ID", pro03_status.stat_startdate 시작일,
		pro03_status.stat_enddate 종료일,	pro03_status.stat_pet_num 펫번호,
		pro03_status.stat_care_num 케어분류번호
FROM pro03_status, pro03_pet, pro03_carekind, pro03_sitter
WHERE pro03_status.stat_pet_num = pro03_pet.pet_num
AND pro03_status.stat_care_num = pro03_carekind.care_num
AND pro03_carekind.care_sit_num = pro03_sitter.sit_num
AND pro03_pet.pet_mem_id = 'hswpuppy'
AND stat_permission = 'o';

/* 시터 id를 포함한 예약현황(보호자가 보는 화면)*/
SELECT pro03_sitter.sit_mem_id "시터ID", pro03_status.stat_startdate 시작일,
		pro03_status.stat_enddate 종료일,	pro03_status.stat_pet_num 펫번호,
		pro03_status.stat_care_num 케어분류번호, pro03_status.stat_permission 승인상태
FROM pro03_status, pro03_pet, pro03_carekind, pro03_sitter
WHERE pro03_status.stat_pet_num = pro03_pet.pet_num
AND pro03_status.stat_care_num = pro03_carekind.care_num
AND pro03_carekind.care_sit_num = pro03_sitter.sit_num
AND pro03_pet.pet_mem_id = 'hswpuppy'
AND stat_permission != 'o';

/* 보호자 id를 포함한 이용현황(시터가 보는 화면)*/
SELECT pet_mem_id "보호자ID", pro03_status.stat_startdate 시작일,
		pro03_status.stat_enddate 종료일,	pro03_status.stat_pet_num 펫번호,
		pro03_status.stat_care_num 케어분류번호, pro03_status.stat_permission 승인상태
FROM pro03_status, pro03_pet, pro03_carekind, pro03_sitter
WHERE pro03_status.stat_pet_num = pro03_pet.pet_num
AND pro03_status.stat_care_num = pro03_carekind.care_num
AND pro03_carekind.care_sit_num = pro03_sitter.sit_num
AND pro03_sitter.sit_mem_id = 'gudwns19';


CREATE UNIQUE INDEX PK_pro03_status
	ON pro03_status (
		stat_pet_num ASC
	);

ALTER TABLE pro03_status
	ADD
		CONSTRAINT PK_pro03_status
		PRIMARY KEY (
			stat_pet_num
		);

ALTER TABLE pro03_status
	ADD
		CONSTRAINT FK_pro03_status
		FOREIGN KEY (
			stat_pet_num
		)
		REFERENCES pro03_pet (
			pet_num
		);
--pro03_carekind 테이블 추가후에 해야함
ALTER TABLE pro03_status
	ADD
		CONSTRAINT FK_pro03_status02
		FOREIGN KEY (
			stat_care_num
		)
		REFERENCES pro03_carekind (
			care_num
		);
------
ALTER TABLE pro03_carekind
	DROP
		CONSTRAINT FK_pro03_sitter_TO_pro03_carekind
		CASCADE;

ALTER TABLE pro03_carekind
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

DROP INDEX PK_pro03_carekind;

/* 케어분류 */
DROP TABLE pro03_carekind 
	CASCADE CONSTRAINTS;

/* 케어분류 */
CREATE TABLE pro03_carekind (
	care_num NUMBER NOT NULL, /* 케어분류번호 */
	care_sit_num NUMBER, /* 시터번호 */
	care_kind VARCHAR2(40), /* 케어분류 */
	care_price NUMBER /* 케어가격 */
);
/* 케어분류 행 추가*/
INSERT INTO pro03_carekind values(1,1,'oneday care',45000);
INSERT INTO pro03_carekind values(2,1,'today care',25000);
INSERT INTO pro03_carekind values(3,1,'walker-1h',10000);

CREATE UNIQUE INDEX PK_pro03_carekind
	ON pro03_carekind (
		care_num ASC
	);

ALTER TABLE pro03_carekind
	ADD
		CONSTRAINT PK_pro03_carekind
		PRIMARY KEY (
			care_num
		);

ALTER TABLE pro03_carekind
	ADD
		CONSTRAINT FK_pro03_carekind
		FOREIGN KEY (
			care_sit_num
		)
		REFERENCES pro03_sitter (
			sit_num
		);
------
ALTER TABLE pro03_review
	DROP
		CONSTRAINT FK_pro03_member_TO_pro03_review
		CASCADE;

ALTER TABLE pro03_review
	DROP
		CONSTRAINT FK_pro03_sitter_TO_pro03_review
		CASCADE;

ALTER TABLE pro03_review
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

DROP INDEX PK_pro03_review;

/* 리뷰 */
DROP TABLE pro03_review 
	CASCADE CONSTRAINTS;

/* 리뷰 */
CREATE TABLE pro03_review (
	rev_num NUMBER NOT NULL, /* 리뷰번호 */
	rev_mem_id VARCHAR2(20), /* 아이디 */
	rev_sit_num NUMBER, /* 시터번호 */
	rev_grade NUMBER, /* 평점 */
	rev_detail VARCHAR2(900), /* 내용 */
	rev_date DATE /* 작성일 */
);
/* 리뷰 행 추가*/
INSERT INTO pro03_review
VALUES((SELECT nvl(MAX(rev_num),0)+1 FROM pro03_review),'hswpuppy',1, 5,'너무 좋은 시터였어요.', to_date('2020/01/10','yyyy/mm/dd'));
INSERT INTO pro03_review
values((SELECT nvl(MAX(rev_num),0)+1 FROM pro03_review),'hswpuppy',2,3,'약간 불친절한듯',to_date('2020/01/15','yyyy/mm/dd'));
INSERT INTO PRO03_REVIEW
VALUES((SELECT nvl(MAX(rev_num),0)+1 FROM pro03_review),'hswpuppy',1,4,'친절합니다.',to_date('2020/01/22','yyyy/mm/dd'));
INSERT INTO PRO03_REVIEW
VALUES((SELECT nvl(MAX(rev_num),0)+1 FROM pro03_review),'hswpuppy',1,5,'울애긔가 넘 좋아해요. 다시 이용하고 시포요. ',to_date('2020/01/30','yyyy/mm/dd'));
INSERT INTO PRO03_REVIEW
VALUES((SELECT nvl(MAX(rev_num),0)+1 FROM pro03_review),'hswpuppy',1,5,'친철한 시터, 깨끗한 환경이 좋았어요.',to_date('2020/02/02','yyyy/mm/dd'));

SELECT * FROM pro03_review;

CREATE UNIQUE INDEX PK_pro03_review
	ON pro03_review (
		rev_num ASC
	);

ALTER TABLE pro03_review
	ADD
		CONSTRAINT PK_pro03_review
		PRIMARY KEY (
			rev_num
		);

ALTER TABLE pro03_review
	ADD
		CONSTRAINT FK_pro03_review
		FOREIGN KEY (
			rev_mem_id
		)
		REFERENCES pro03_member (
			mem_id
		);

ALTER TABLE pro03_review
	ADD
		CONSTRAINT FK_pro03_review2
		FOREIGN KEY (
			rev_sit_num
		)
		REFERENCES pro03_sitter (
			sit_num
		);
------
ALTER TABLE pro03_payment
	DROP
		CONSTRAINT FK_pro03_member_TO_pro03_payment
		CASCADE;

ALTER TABLE pro03_payment
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

DROP INDEX PK_pro03_payment;

/* 결제 */
DROP TABLE pro03_payment 
	CASCADE CONSTRAINTS;

/* 결제 */
CREATE TABLE pro03_payment (
	pay_num NUMBER NOT NULL, /* 결제번호 */
	pay_mem_id VARCHAR2(20), /* 아이디 */
	pay_cardnum NUMBER, /* 카드번호 */
	pay_expired DATE, /* 유효기간 */
	pay_cvc NUMBER, /* CVC */
	pay_birth DATE, /* 생년월일 */
	pay_passfront NUMBER /* 비밀번호앞둘 */
);
CREATE UNIQUE INDEX PK_pro03_payment
	ON pro03_payment (
		pay_num ASC
	);

ALTER TABLE pro03_payment
	ADD
		CONSTRAINT PK_pro03_payment
		PRIMARY KEY (
			pay_num
		);

ALTER TABLE pro03_payment
	ADD
		CONSTRAINT FK_pro03_payment
		FOREIGN KEY (
			pay_mem_id
		)
		REFERENCES pro03_member (
			mem_id
		);
------
ALTER TABLE pro03_transport
	DROP
		CONSTRAINT FK_pro03_pet_TO_pro03_transport
		CASCADE;

ALTER TABLE pro03_transport
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

DROP INDEX PK_pro03_transport;

/* 장거리이동 서비스 */
DROP TABLE pro03_transport 
	CASCADE CONSTRAINTS;

/* 장거리이동 서비스 */
CREATE TABLE pro03_transport (
	trans_num NUMBER NOT NULL, /* 서비스번호 */
	trnas_pet_num NUMBER, /* 펫번호 */
	trans_way VARCHAR2(100), /* 전달방식 */
	trans_date DATE, /* 위탁날짜 */
	trans_startloc VARCHAR2(200), /* 출발지 */
	trans_endloc VARCHAR2(200), /* 도착지 */
	trans_permission CHAR(2) /* 승인상태 */
);
CREATE UNIQUE INDEX PK_pro03_transport
	ON pro03_transport (
		trans_num ASC
	);

ALTER TABLE pro03_transport
	ADD
		CONSTRAINT PK_pro03_transport
		PRIMARY KEY (
			trans_num
		);

ALTER TABLE pro03_transport
	ADD
		CONSTRAINT FK_pro03_transport
		FOREIGN KEY (
			trnas_pet_num
		)
		REFERENCES pro03_pet (
			pet_num
		);
------
ALTER TABLE pro03_program
	DROP
		CONSTRAINT FK_pro03_member_TO_pro03_program
		CASCADE;

ALTER TABLE pro03_program
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

DROP INDEX PK_pro03_program;

/* 반려동물 프로그램 */
DROP TABLE pro03_program 
	CASCADE CONSTRAINTS;

/* 반려동물 프로그램 */
CREATE TABLE pro03_program (
	pro_num NUMBER NOT NULL, /* 프로그램번호 */
	pro_mem_id VARCHAR2(20), /* 아이디 */
	pro_title VARCHAR2(300), /* 제목 */
	pro_detail VARCHAR2(900), /* 내용 */
	pro_date DATE, /* 작성일 */
	pro_max NUMBER, /* 신청가능인원 */
	pro_current NUMBER, /* 현재신청인원 */
	pro_period DATE /* 신청마감일 */
);

CREATE UNIQUE INDEX PK_pro03_program
	ON pro03_program (
		pro_num ASC
	);

ALTER TABLE pro03_program
	ADD
		CONSTRAINT PK_pro03_program
		PRIMARY KEY (
			pro_num
		);

ALTER TABLE pro03_program
	ADD
		CONSTRAINT FK_pro03_program
		FOREIGN KEY (
			pro_mem_id
		)
		REFERENCES pro03_member (
			mem_id
		);
------
ALTER TABLE pro03_notice
	DROP
		CONSTRAINT FK_pro03_member_TO_pro03_notice
		CASCADE;

ALTER TABLE pro03_notice
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

DROP INDEX PK_pro03_notice;

/* 공지사항 */
DROP TABLE pro03_notice 
	CASCADE CONSTRAINTS;

/* 공지사항 */
CREATE TABLE pro03_notice (
	not_num NUMBER NOT NULL, /* 글번호 */
	not_mem_id VARCHAR2(20), /* 아이디 */
	not_title VARCHAR2(300), /* 제목 */
	not_detail VARCHAR2(900), /* 내용 */
	not_date DATE, /* 작성일 */
	not_priority NUMBER /* 우선도 */
);

/* 주요 공지사항 데이터 불러오기*/
SELECT not_title 제목, not_detail 내용, not_date 작성일
FROM pro03_notice
WHERE not_priority = 1;

/* 일반 공지사항 데이터 불러오기*/
SELECT not_num 번호,not_title 제목,
		not_detail 내용, not_date 작성일
FROM pro03_notice;


CREATE UNIQUE INDEX PK_pro03_notice
	ON pro03_notice (
		not_num ASC
	);

ALTER TABLE pro03_notice
	ADD
		CONSTRAINT PK_pro03_notice
		PRIMARY KEY (
			not_num
		);

ALTER TABLE pro03_notice
	ADD
		CONSTRAINT FK_pro03_notice
		FOREIGN KEY (
			not_mem_id
		)
		REFERENCES pro03_member (
			mem_id
		);
------
ALTER TABLE pro03_qna
	DROP
		CONSTRAINT FK_pro03_member_TO_pro03_qna
		CASCADE;

ALTER TABLE pro03_qna
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

DROP INDEX PK_pro03_qna;

/* QnA */
DROP TABLE pro03_qna 
	CASCADE CONSTRAINTS;

/* QnA */
CREATE TABLE pro03_qna (
	qna_num NUMBER NOT NULL, /* 글번호 */
	qna_mem_id VARCHAR2(20), /* 아이디 */
	qna_title VARCHAR2(300), /* 제목 */
	qna_detail VARCHAR2(900), /* 내용 */
	qna_date DATE, /* 작성일 */
	qna_answer VARCHAR2(900) /* 답변내용 */
);

/* QnA 행 추가 */
INSERT INTO pro03_qna
VALUES((SELECT nvl(MAX(qna_num),0)+1 FROM pro03_qna),
		'hswpuppy','질문제목','질문내용',sysdate,'');

/*QnA 검색시 */
SELECT qna_num 글번호, qna_mem_id 작성자, qna_title 제목,
	   qna_detail 내용, qna_date 작성일, qna_answer 답변내용
FROM pro03_qna
WHERE qna_title LIKE '%문자열%';	
	
SELECT * FROM pro03_qna;

DELETE PRO03_QNA;
CREATE UNIQUE INDEX PK_pro03_qna
	ON pro03_qna (
		qna_num ASC
	);

ALTER TABLE pro03_qna
	ADD
		CONSTRAINT PK_pro03_qna
		PRIMARY KEY (
			qna_num
		);

ALTER TABLE pro03_qna
	ADD
		CONSTRAINT FK_pro03_qna
		FOREIGN KEY (
			qna_mem_id
		)
		REFERENCES pro03_member (
			mem_id
		);