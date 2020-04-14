/* 회원 */
DROP TABLE p5_member 
	CASCADE CONSTRAINTS;

/* 회원 */
CREATE TABLE p5_member (
	mem_no VARCHAR2(100) NOT NULL, /* 아이디 */
	mem_pw VARCHAR2(100) NOT NULL, /* 비밀번호 */
	mem_name VARCHAR2(100) NOT NULL, /* 이름 */
	mem_birth DATE NOT NULL, /* 생년월일 */
	mem_email VARCHAR2(100) NOT NULL, /* 이메일 */
	mem_tel VARCHAR2(100) NOT NULL, /* 휴대폰 */
	mem_jdate DATE NOT NULL /* 회원가입일 */
);

ALTER TABLE p5_member
	ADD
		CONSTRAINT p5_member_pk
		PRIMARY KEY (
			mem_no
		);
CREATE SEQUENCE p5_member_seq
	START WITH 1
	INCREMENT BY 1
;
INSERT INTO p5_member VALUES ();
SELECT * FROM p5_member;

--------------------------------------------
/* 컴퓨터부품 */
DROP TABLE p5_parts 
	CASCADE CONSTRAINTS;

/* 컴퓨터부품 */
CREATE TABLE p5_parts (
	parts_no NUMBER NOT NULL, /* 부품번호 */
	parts_name VARCHAR2(200) NOT NULL, /* 부품명 */
	parts_price NUMBER NOT NULL, /* 부품가격 */
	parts_stock NUMBER NOT NULL, /* 부품재고량 */
	parts_img VARCHAR2(200) NOT NULL, /* 부품썸네일 */
	parts_detail VARCHAR2(200) NOT NULL, /* 부품상세 */
	parts_mc VARCHAR2(100) NOT NULL, /* 대분류 */
	parts_sc1 VARCHAR2(100), /* 소분류1 */
	parts_sc2 VARCHAR2(100), /* 소분류2 */
	parts_sc3 VARCHAR2(100), /* 소분류3 */
	parts_sc4 VARCHAR2(100), /* 소분류4 */
	parts_sc5 VARCHAR2(100), /* 소분류5 */
	parts_sc6 VARCHAR2(100) /* 소분류6 */
);

ALTER TABLE p5_parts
	ADD
		CONSTRAINT p5_parts_pk
		PRIMARY KEY (
			parts_no
		);

CREATE SEQUENCE p5_parts_seq
START WITH 1
INCREMENT BY 1
;
INSERT INTO p5_parts VALUES ();
SELECT * FROM p5_parts;

--------------------------------------
/* 컴퓨터 */
DROP TABLE p5_computer 
	CASCADE CONSTRAINTS;

/* 컴퓨터 */
CREATE TABLE p5_computer (
	com_no NUMBER NOT NULL, /* 컴퓨터번호 */
	mem_no VARCHAR2(100) NOT NULL, /* 아이디 */
	com_name VARCHAR2(200) NOT NULL, /* 컴퓨터명 */
	com_kind VARCHAR2(200) NOT NULL, /* 컴퓨터용도 */
	com_img VARCHAR2(200), /* 컴퓨터썸네일 */
	com_detail VARCHAR2(200), /* 컴퓨터상세 */
	com_price NUMBER /* 컴퓨터가격 */
);

ALTER TABLE p5_computer
	ADD
		CONSTRAINT p5_computer_pk
		PRIMARY KEY (
			com_no
		);

ALTER TABLE p5_computer
	ADD
		CONSTRAINT FK_p5_member_TO_p5_computer
		FOREIGN KEY (
			mem_no
		)
		REFERENCES p5_member (
			mem_no
		);
CREATE SEQUENCE p5_computer_seq
START WITH 1001
INCREMENT BY 1
;
INSERT INTO p5_computer VALUES ();
SELECT * FROM p5_computer;
--------------------------------------
/* 견적 */
DROP TABLE p5_assembly 
	CASCADE CONSTRAINTS;

/* 견적 */
CREATE TABLE p5_assembly (
	com_no NUMBER NOT NULL, /* 컴퓨터번호 */
	parts_no NUMBER NOT NULL, /* 부품번호 */
	parts_cnt NUMBER NOT NULL /* 조립부품 수량 */
);

ALTER TABLE p5_assembly
	ADD
		CONSTRAINT p5_assembly_pk
		PRIMARY KEY (
			com_no,
			parts_no
		);

ALTER TABLE p5_assembly
	ADD
		CONSTRAINT FK_p5_parts_TO_p5_assembly
		FOREIGN KEY (
			parts_no
		)
		REFERENCES p5_parts (
			parts_no
		);

ALTER TABLE p5_assembly
	ADD
		CONSTRAINT FK_p5_computer_TO_p5_assembly
		FOREIGN KEY (
			com_no
		)
		REFERENCES p5_computer (
			com_no
		);
CREATE SEQUENCE p5_assembly_seq
START WITH 1
INCREMENT BY 1
;
INSERT INTO p5_assembly VALUES ();
SELECT * FROM p5_assembly;
--------------------------------------
/* 견적문의 */
DROP TABLE p5_assque 
	CASCADE CONSTRAINTS;

/* 견적문의 */
CREATE TABLE p5_assque (
	asq_no NUMBER NOT NULL, /* 견적문의번호 */
	com_no NUMBER NOT NULL, /* 컴퓨터번호 */
	asq_name VARCHAR2(500) NOT NULL, /* 견적문의제목 */
	asq_detail VARCHAR2(3000) NOT NULL, /* 견적문의내용 */
	asq_reqdate DATE NOT NULL, /* 견적문의등록일 */
	asq_comm VARCHAR2(3000), /* 견적문의댓글 */
	asq_comcate DATE /* 견적댓글등록일 */
);

ALTER TABLE p5_assque
	ADD
		CONSTRAINT p5_assque_pk
		PRIMARY KEY (
			asq_no
		);

ALTER TABLE p5_assque
	ADD
		CONSTRAINT FK_p5_computer_TO_p5_assque
		FOREIGN KEY (
			com_no
		)
		REFERENCES p5_computer (
			com_no
		);
CREATE SEQUENCE p5_assque_seq
START WITH 1
INCREMENT BY 1
;
INSERT INTO p5_assque VALUES ();
SELECT * FROM p5_assque;
--------------------------------------
/* 포인트 */
DROP TABLE p5_point 
	CASCADE CONSTRAINTS;

/* 포인트 */
CREATE TABLE p5_point (
	point_no NUMBER NOT NULL, /* 포인트번호 */
	mem_no VARCHAR2(100) NOT NULL, /* 아이디 */
	point_date DATE NOT NULL, /* 적립/사용일 */
	point_detail VARCHAR2(500) NOT NULL, /* 적립/사용내용 */
	point_pt NUMBER NOT NULL /* 적립/사용마일리지 */
);

ALTER TABLE p5_point
	ADD
		CONSTRAINT p5_point_pk
		PRIMARY KEY (
			point_no
		);

ALTER TABLE p5_point
	ADD
		CONSTRAINT FK_p5_member_TO_p5_point
		FOREIGN KEY (
			mem_no
		)
		REFERENCES p5_member (
			mem_no
		);
CREATE SEQUENCE p5_point_seq
START WITH 1
INCREMENT BY 1
;
INSERT INTO p5_point VALUES ();
SELECT * FROM p5_point;
--------------------------------------
/* 주문 */
DROP TABLE p5_order 
	CASCADE CONSTRAINTS;

/* 주문 */
CREATE TABLE p5_order (
	ord_no NUMBER NOT NULL, /* 주문번호 */
	mem_no VARCHAR2(100) NOT NULL, /* 아이디 */
	ord_date DATE NOT NULL, /* 주문일 */
	ord_name VARCHAR2(100) NOT NULL, /* 수령인 */
	ord_tel VARCHAR2(100) NOT NULL, /* 수령인연락처 */
	ord_post VARCHAR2(30) NOT NULL, /* 우편번호 */
	ord_addr1 VARCHAR2(500) NOT NULL, /* 주소 */
	ord_addr2 VARCHAR2(500) NOT NULL, /* 상세주소 */
	ord_req VARCHAR2(3000), /* 주문요청사항 */
	ord_stat VARCHAR2(200) NOT NULL, /* 주문상태 */
	ord_invoice NUMBER /* 운송장번호 */
);

ALTER TABLE p5_order
	ADD
		CONSTRAINT p5_order_pk
		PRIMARY KEY (
			ord_no
		);

ALTER TABLE p5_order
	ADD
		CONSTRAINT FK_p5_member_TO_p5_order
		FOREIGN KEY (
			mem_no
		)
		REFERENCES p5_member (
			mem_no
		);
CREATE SEQUENCE p5_order_seq
START WITH 1
INCREMENT BY 1
;
INSERT INTO p5_order VALUES ();
SELECT * FROM p5_order;
--------------------------------------
/* 상품주문 */
DROP TABLE p5_request 
	CASCADE CONSTRAINTS;

/* 상품주문 */
CREATE TABLE p5_request (
	ord_no NUMBER NOT NULL, /* 주문번호 */
	req_no NUMBER NOT NULL, /* 상품번호 */
	req_cnt NUMBER NOT NULL, /* 주문수량 */
	req_opt NUMBER /* 옵션가격 */
);

ALTER TABLE p5_request
	ADD
		CONSTRAINT FK_p5_order_TO_p5_request
		FOREIGN KEY (
			ord_no
		)
		REFERENCES p5_order (
			ord_no
		);
CREATE SEQUENCE p5_request_seq
START WITH 1
INCREMENT BY 1
;
INSERT INTO p5_request VALUES ();
SELECT * FROM p5_request;
--------------------------------------
/* 결제 */
DROP TABLE p5_pay 
	CASCADE CONSTRAINTS;

/* 결제 */
CREATE TABLE p5_pay (
	pay_no NUMBER NOT NULL, /* 결제번호 */
	ord_no NUMBER, /* 주문번호 */
	pay_method VARCHAR2(100), /* 결제방법 */
	pay_point NUMBER, /* 사용마일리지 */
	pay_price NUMBER /* 최종결제금액 */
);

ALTER TABLE p5_pay
	ADD
		CONSTRAINT PK_p5_pay
		PRIMARY KEY (
			pay_no
		);

ALTER TABLE p5_pay
	ADD
		CONSTRAINT FK_p5_order_TO_p5_pay
		FOREIGN KEY (
			ord_no
		)
		REFERENCES p5_order (
			ord_no
		);
CREATE SEQUENCE p5_pay_seq
START WITH 1
INCREMENT BY 1
;
INSERT INTO p5_pay VALUES ();
SELECT * FROM p5_pay;
--------------------------------------
/* AS신청 */
DROP TABLE p5_as 
	CASCADE CONSTRAINTS;

/* AS신청 */
CREATE TABLE p5_as (
	as_no NUMBER NOT NULL, /* AS신청번호 */
	ord_no NUMBER NOT NULL, /* 주문번호 */
	as_cate VARCHAR2(100) NOT NULL, /* AS분류 */
	as_detail VARCHAR2(3000) NOT NULL, /* AS신청내용 */
	as_date DATE NOT NULL /* AS신청일 */
);

ALTER TABLE p5_as
	ADD
		CONSTRAINT p5_as_pk
		PRIMARY KEY (
			as_no
		);

ALTER TABLE p5_as
	ADD
		CONSTRAINT FK_p5_order_TO_p5_as
		FOREIGN KEY (
			ord_no
		)
		REFERENCES p5_order (
			ord_no
		);
CREATE SEQUENCE p5_as_seq
START WITH 1
INCREMENT BY 1
;
INSERT INTO p5_as VALUES ();
SELECT * FROM p5_as;
--------------------------------------
/* AS관리 */
DROP TABLE p5_mgr 
	CASCADE CONSTRAINTS;

/* AS관리 */
CREATE TABLE p5_mgr (
	mgr_no NUMBER NOT NULL, /* AS관리번호 */
	as_no NUMBER NOT NULL, /* AS신청번호 */
	mgr_date DATE, /* 입고일 */
	mgr_stat VARCHAR2(100) NOT NULL, /* 진행상태 */
	mgr_note VARCHAR2(3000) /* 비고 */
);
ALTER TABLE p5_mgr
	ADD
		CONSTRAINT p5_mgr_pk
		PRIMARY KEY (
			mgr_no
		);

ALTER TABLE p5_mgr
	ADD
		CONSTRAINT FK_p5_as_TO_p5_mgr
		FOREIGN KEY (
			as_no
		)
		REFERENCES p5_as (
			as_no
		);
CREATE SEQUENCE p5_mgr_seq
START WITH 1
INCREMENT BY 1
;
INSERT INTO p5_mgr VALUES ();
SELECT * FROM p5_mgr;
--------------------------------------
/* 상품후기 */
DROP TABLE p5_review 
	CASCADE CONSTRAINTS;

/* 상품후기 */
CREATE TABLE p5_review (
	rev_no NUMBER NOT NULL, /* 후기번호 */
	mem_no VARCHAR2(100) NOT NULL, /* 아이디 */
	rev_name VARCHAR2(500) NOT NULL, /* 후기제목 */
	rev_detail VARCHAR2(3000) NOT NULL, /* 후기내용 */
	rev_date DATE NOT NULL /* 후기등록일 */
);
ALTER TABLE p5_review
	ADD
		CONSTRAINT p5_review_pk
		PRIMARY KEY (
			rev_no
		);

ALTER TABLE p5_review
	ADD
		CONSTRAINT FK_p5_member_TO_p5_review
		FOREIGN KEY (
			mem_no
		)
		REFERENCES p5_member (
			mem_no
		);
CREATE SEQUENCE p5_review_seq
START WITH 1
INCREMENT BY 1
;
INSERT INTO p5_review VALUES ();
SELECT * FROM p5_review;
--------------------------------------
/* 상품후기댓글 */
DROP TABLE p5_revcomm 
	CASCADE CONSTRAINTS;

/* 상품후기댓글 */
CREATE TABLE p5_revcomm (
	revc_no NUMBER NOT NULL, /* 후기댓글번호 */
	rev_no NUMBER NOT NULL, /* 후기번호 */
	mem_no VARCHAR2(100) NOT NULL, /* 아이디 */
	revc_detail VARCHAR2(3000) NOT NULL, /* 후기댓글내용 */
	revc_date DATE NOT NULL /* 후기댓글등록일 */
);
ALTER TABLE p5_revcomm
	ADD
		CONSTRAINT p5_revcomm_pk
		PRIMARY KEY (
			revc_no
		);

ALTER TABLE p5_revcomm
	ADD
		CONSTRAINT FK_p5_review_TO_p5_revcomm
		FOREIGN KEY (
			rev_no
		)
		REFERENCES p5_review (
			rev_no
		);

ALTER TABLE p5_revcomm
	ADD
		CONSTRAINT FK_p5_member_TO_p5_revcomm
		FOREIGN KEY (
			mem_no
		)
		REFERENCES p5_member (
			mem_no
		);
CREATE SEQUENCE p5_revcomm_seq
START WITH 1
INCREMENT BY 1
;
INSERT INTO p5_revcomm VALUES ();
SELECT * FROM p5_revcomm;
--------------------------------------
/* 문의사항 */
DROP TABLE p5_question 
	CASCADE CONSTRAINTS;

/* 문의사항 */
CREATE TABLE p5_question (
	que_no NUMBER NOT NULL, /* 문의번호 */
	mem_no VARCHAR2(100) NOT NULL, /* 아이디 */
	que_name VARCHAR2(500) NOT NULL, /* 문의제목 */
	que_detail VARCHAR2(3000) NOT NULL, /* 문의내용 */
	que_date DATE NOT NULL /* 문의등록일 */
);
ALTER TABLE p5_question
	ADD
		CONSTRAINT p5_question_pk
		PRIMARY KEY (
			que_no
		);

ALTER TABLE p5_question
	ADD
		CONSTRAINT FK_p5_member_TO_p5_question
		FOREIGN KEY (
			mem_no
		)
		REFERENCES p5_member (
			mem_no
		);
CREATE SEQUENCE p5_question_seq
START WITH 1
INCREMENT BY 1
;
INSERT INTO p5_question VALUES ();
SELECT * FROM p5_question;
--------------------------------------
/* 문의사항댓글 */
DROP TABLE p5_quecomm 
	CASCADE CONSTRAINTS;

/* 문의사항댓글 */
CREATE TABLE p5_quecomm (
	quec_no NUMBER NOT NULL, /* 문의댓글번호 */
	que_no NUMBER NOT NULL, /* 문의번호 */
	mem_no VARCHAR2(100) NOT NULL, /* 아이디 */
	quec_detail VARCHAR2(3000) NOT NULL, /* 문의댓글내용 */
	quec_date DATE NOT NULL /* 문의댓글등록일 */
);
ALTER TABLE p5_quecomm
	ADD
		CONSTRAINT p5_quecomm_pk
		PRIMARY KEY (
			quec_no
		);

ALTER TABLE p5_quecomm
	ADD
		CONSTRAINT FK_p5_question_TO_p5_quecomm
		FOREIGN KEY (
			que_no
		)
		REFERENCES p5_question (
			que_no
		);

ALTER TABLE p5_quecomm
	ADD
		CONSTRAINT FK_p5_member_TO_p5_quecomm
		FOREIGN KEY (
			mem_no
		)
		REFERENCES p5_member (
			mem_no
		);
CREATE SEQUENCE p5_quecomm_seq
START WITH 1
INCREMENT BY 1
;
INSERT INTO p5_quecomm VALUES ();
SELECT * FROM p5_quecomm;
--------------------------------------
/* 공지사항 */
DROP TABLE p5_notice 
	CASCADE CONSTRAINTS;

/* 공지사항 */
CREATE TABLE p5_notice (
	noti_no NUMBER NOT NULL, /* 공지번호 */
	noti_name VARCHAR2(500) NOT NULL, /* 공지제목 */
	noti_detail VARCHAR2(3000) NOT NULL, /* 공지내용 */
	noti_date DATE NOT NULL /* 공지등록일 */
);

ALTER TABLE p5_notice
	ADD
		CONSTRAINT p5_notice_pk
		PRIMARY KEY (
			noti_no
		);
CREATE SEQUENCE p5_notice_seq
START WITH 1
INCREMENT BY 1
;
INSERT INTO p5_notice VALUES ();
SELECT * FROM p5_notice;
--------------------------------------