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
ALTER TABLE PRO03_MEMBER 
MODIFY mem_addressnum char(5);
DELETE FROM PRO03_MEMBER 
WHERE mem_id='ezenkyu03';
INSERT INTO pro03_member VALUES 
('ezenkyu03', 2, '1q2w3e4r!!', '전현규', '010-1577-1577', 'ezenkyu03@naver.com', 
'07233', '서울특별시 영등포구 여의도동 의사당대로 1', null);
SELECT * FROM PRO03_MEMBER;
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

--시터 상세정보 조회
SELECT * FROM PRO03_SITTER
WHERE sit_mem_id='ezenkyu03';
--시터 검색결과 조회
SELECT * FROM MEM_SIT_VIEW
WHERE 
s.sit_carenum = 1; AND m.mem_address = '서울' AND s.sit_petkind = '강아지' AND
s.sit_petspace = 3 AND s.petweight >= 46 AND s.sit_careprice <= 50000; 
-- 선택 수에 따라서 조건이 달라짐

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

--시터상세 사진첩 조회
SELECT * FROM PRO03_SITTERALBUM
WHERE sitalb_sit_num=1;

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
--시터에 해당하는 캘린더 조회
SELECT * FROM PRO03_CALENDER 
WHERE cal_sit_num = 1;

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
-- 펫 리스트(이름) 불러오기
SELECT pet_name FROM pro03_pet
WHERE pet_mem_id='ezenkyu03';

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
--시터에 해당하는 리뷰 정보 조회
SELECT * FROM PRO03_REVIEW
WHERE rev_sit_num =1;

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

INSERT INTO pro03_transport
VALUES (1, 1, '공항에서 직접전달',TO_DATE('20/02/17','YY/MM/DD'), '서울','뉴욕','N');

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
	pro_image VARCHAR2(100),
);
--반려동물 프로그램 이미지 추가
ALTER TABLE PRO03_PROGRAM 
ADD pro_image varchar2(100);
--반려동물 프로그램 목록 출력
SELECT pro_title, pro_image FROM pro03_program; 
--반려동물 프로그램 상세 출력
SELECT * FROM pro03_program
WHERE pro_lis_pro_num = 1;

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
		
------
ALTER TABLE pro03_program_list
	DROP
		CONSTRAINT FK_pro03_program_TO_pro03_program_list
		CASCADE;

ALTER TABLE pro03_program_list
	DROP
		CONSTRAINT FK_pro03_member_TO_pro03_program_list
		CASCADE;

ALTER TABLE pro03_program_list
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

DROP INDEX pro03_program_list_pk;

/* 반려동물 프로그램 신청목록 */
DROP TABLE pro03_program_list 
	CASCADE CONSTRAINTS;

/* 반려동물 프로그램 신청목록 */
CREATE TABLE pro03_program_list (
	pro_lis_mem_id VARCHAR2(20) NOT NULL, /* 아이디 */
	pro_lis_pro_num NUMBER NOT NULL /* 프로그램번호 */
);

CREATE UNIQUE INDEX pro03_program_list_pk
	ON pro03_program_list (
		pro_lis_mem_id ASC,
		pro_lis_pro_num ASC
	);


ALTER TABLE pro03_program_list
	ADD
		CONSTRAINT pro03_program_list_pk
		PRIMARY KEY (
			pro_lis_mem_id,
			pro_lis_pro_num
		);

ALTER TABLE pro03_program_list
	ADD
		CONSTRAINT FK_pro03_program_list
		FOREIGN KEY (
			pro_lis_pro_num
		)
		REFERENCES pro03_program (
			pro_num
		);

ALTER TABLE pro03_program_list
	ADD
		CONSTRAINT FK_pro03_program_list2
		FOREIGN KEY (
			pro_lis_mem_id
		)
		REFERENCES pro03_member (
			mem_id
		);
--반려동물 프로그램 신청
INSERT INTO pro03_program_list VALUES ('ezenkyu03',1);