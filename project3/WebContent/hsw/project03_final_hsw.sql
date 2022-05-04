
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
	mem_pass VARCHAR2(20), /* 비밀번호 */
	mem_name VARCHAR2(15), /* 이름 */
	mem_phone VARCHAR2(15), /* 핸드폰번호 */
	mem_email VARCHAR2(30), /* 이메일 */
	mem_addressnum CHAR(5), /* 우편번호 */
	mem_address VARCHAR2(200), /* 주소 */
	mem_profileshot VARCHAR2(100) /* 프로필사진 */
);

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
----
ALTER TABLE pro03_sitter
	DROP
		CONSTRAINT FK_pro03_member_TO_pro03_sitter
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
	sit_accountnum NUMBER, /* 수취계좌 */
	sit_petkind VARCHAR2(10), /* 펫종류 */
	sit_petspace NUMBER, /* 수용가능펫수 */
	sit_petweight NUMBER /* 수용가능펫무게 */
);
/* 시터 입력 */
INSERT INTO pro03_sitter(sit_mem_id, sit_num)
VALUES ('사용자',5);

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
		CONSTRAINT FK_pro03_member_TO_pro03_sitter
		FOREIGN KEY (
			sit_mem_id
		)
		REFERENCES pro03_member (
			mem_id
		);
----
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
/* 펫 등록*/
INSERT INTO pro03_pet(pet_num,pet_mem_id,pet_kind,pet_age,pet_weight)
VALUES (5,'송지효','강아지',1,4);

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
		CONSTRAINT FK_pro03_member_TO_pro03_pet
		FOREIGN KEY (
			pet_mem_id
		)
		REFERENCES pro03_member (
			mem_id
		);
----
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

/* 케어분류 등록*/
INSERT INTO pro03_carekind(care_num, care_sit_num,care_kind,care_price)
VALUES (6,5,'하루돌봄',25000);
SELECT * FROM pro03_carekind;

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
		CONSTRAINT FK_pro03_sitter_TO_pro03_carekind
		FOREIGN KEY (
			care_sit_num
		)
		REFERENCES pro03_sitter (
			sit_num
		);
----
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
/* 이용현황 등록*/
INSERT INTO pro03_status(stat_pet_num, stat_care_num,stat_permission,stat_startdate)
VALUES (5,6,'A','20/01/10');
SELECT * FROM pro03_status;
/* 이용현황 조회*/
SELECT s.sit_mem_id "시터ID", to_char(t.stat_startdate,'mm/dd') "날짜",
	   p.pet_num "반려동물", k.care_kind||' '||k.CARE_PRICE||'원' "이용 서비스",
	   t.stat_permission "이용현황"
FROM pro03_sitter s, pro03_carekind k, pro03_pet p, pro03_status t
WHERE s.SIT_NUM = k.CARE_SIT_NUM
AND k.CARE_NUM = t.stat_care_num
AND t.stat_pet_num = p.pet_num
AND p.pet_mem_id = '사용자';

SELECT p.pet_mem_id "보호자ID", to_char(t.stat_startdate,'mm/dd')"기간",
	   p.pet_num "반려동물",k.care_kind||' '||k.CARE_PRICE||'원' "이용서비스",
	   t.stat_permission "예약확인"
FROM pro03_sitter s, pro03_carekind k, pro03_pet p, pro03_status t
WHERE s.SIT_NUM = k.CARE_SIT_NUM
AND k.CARE_NUM = t.stat_care_num
AND t.stat_pet_num = p.pet_num
AND s.sit_mem_id = '사용자';


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
		CONSTRAINT FK_pro03_pet_TO_pro03_status
		FOREIGN KEY (
			stat_pet_num
		)
		REFERENCES pro03_pet (
			pet_num
		);

ALTER TABLE pro03_status
	ADD
		CONSTRAINT FK_pro03_carekind_TO_pro03_status
		FOREIGN KEY (
			stat_care_num
		)
		REFERENCES pro03_carekind (
			care_num
		);
----
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
/* 리뷰 시퀀스*/
CREATE SEQUENCE pro03_review_seq
INCREMENT BY 1
START WITH 1;
/* 리뷰 등록*/
INSERT INTO pro03_review(rev_num, rev_mem_id, rev_sit_num,
					rev_grade, rev_detail, rev_date)
VALUES (pro03_review_seq.nextval, '사용자', 1, 10,
	'너무 좋은 시터를 만나 강아지들이 너무 좋아해요', sysdate);
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
		CONSTRAINT FK_pro03_member_TO_pro03_review
		FOREIGN KEY (
			rev_mem_id
		)
		REFERENCES pro03_member (
			mem_id
		);

ALTER TABLE pro03_review
	ADD
		CONSTRAINT FK_pro03_sitter_TO_pro03_review
		FOREIGN KEY (
			rev_sit_num
		)
		REFERENCES pro03_sitter (
			sit_num
		);
----
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
	memalb_info VARCHAR2(100), /* 사진정보 */
	memalb_date DATE /* 등록일 */
);

ALTER TABLE pro03_memberalbum
	ADD
		CONSTRAINT FK_pro03_member_TO_pro03_memberalbum
		FOREIGN KEY (
			memalb_mem_id
		)
		REFERENCES pro03_member (
			mem_id
		);
----
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
	sitalb_info VARCHAR2(100), /* 사진정보 */
	sitalb_date DATE /* 등록일 */
);

ALTER TABLE pro03_sitteralbum
	ADD
		CONSTRAINT FK_pro03_sitter_TO_pro03_sitteralbum
		FOREIGN KEY (
			sitalb_sit_num
		)
		REFERENCES pro03_sitter (
			sit_num
		);
----
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

ALTER TABLE pro03_calender
	ADD
		CONSTRAINT FK_pro03_sitter_TO_pro03_calender
		FOREIGN KEY (
			cal_sit_num
		)
		REFERENCES pro03_sitter (
			sit_num
		);
----
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
		CONSTRAINT FK_pro03_pet_TO_pro03_transport
		FOREIGN KEY (
			trnas_pet_num
		)
		REFERENCES pro03_pet (
			pet_num
		);
----
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
----
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
		CONSTRAINT FK_pro03_program_TO_pro03_program_list
		FOREIGN KEY (
			pro_lis_pro_num
		)
		REFERENCES pro03_program (
			pro_num
		);

ALTER TABLE pro03_program_list
	ADD
		CONSTRAINT FK_pro03_member_TO_pro03_program_list
		FOREIGN KEY (
			pro_lis_mem_id
		)
		REFERENCES pro03_member (
			mem_id
		);
----
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
		CONSTRAINT FK_pro03_member_TO_pro03_qna
		FOREIGN KEY (
			qna_mem_id
		)
		REFERENCES pro03_member (
			mem_id
		);
----
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

/* 채팅 */
CREATE TABLE pro03_chatting (
	chat_num NUMBER NOT NULL, /* 채팅번호 */
	chat_mem_id VARCHAR2(20), /* 아이디 */
	chat_mem2_id VARCHAR2(20),/*상대 아이디*/
	chat_detail VARCHAR2(900), /* 내용 */
	chat_date DATE /* 작성일 */
);
/* 채팅 시퀀스 */
CREATE SEQUENCE pro03_chatting_seq
INCREMENT BY 1
START WITH 1;
/* 채팅 등록*/
INSERT INTO pro03_chatting(chat_num,chat_mem_id,
				chat_mem2_id,chat_detail,chat_date)
VALUES (pro03_chatting_seq.nextval, '홍길동','사용자',
'괜찮으면 확인 부탁드려요.',to_date('2020/02/25 13:02:00','YYYY/MM/DD hh24:mi:ss'));

INSERT INTO pro03_chatting(chat_num,chat_mem_id,
				chat_mem2_id,chat_detail,chat_date)
VALUES (pro03_chatting_seq.nextval, '사용자','홍길동',
'더 필요한건 없으세요?',sysdate);

SELECT * FROM pro03_chatting;
