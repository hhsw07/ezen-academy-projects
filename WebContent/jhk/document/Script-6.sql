ALTER TABLE pro5_member
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

DROP INDEX PK_pro5_member;

/* 회원 */
DROP TABLE pro5_member 
	CASCADE CONSTRAINTS;

/* 회원 */
CREATE TABLE pro5_member (
	mem_code NUMBER NOT NULL /* 회원번호 */
);

CREATE UNIQUE INDEX PK_pro5_member
	ON pro5_member (
		mem_code ASC
	);

ALTER TABLE pro5_member
	ADD
		CONSTRAINT PK_pro5_member
		PRIMARY KEY (
			mem_code
		);
-----------
ALTER TABLE pro5_computer
	DROP
		CONSTRAINT FK_pro5_member_TO_pro5_computer
		CASCADE;

ALTER TABLE pro5_computer
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

DROP INDEX PK_pro5_computer;

/* 컴퓨터 */
DROP TABLE pro5_computer 
	CASCADE CONSTRAINTS;

/* 컴퓨터 */
CREATE TABLE pro5_computer (
	com_code NUMBER NOT NULL, /* 컴퓨터번호 */
	mem_code NUMBER, /* 회원번호 */
	com_name VARCHAR2(200), /* 컴퓨터명 */
	com_kind VARCHAR2(200) /* 컴퓨터용도 */
);

CREATE UNIQUE INDEX PK_pro5_computer
	ON pro5_computer (
		com_code ASC
	);

ALTER TABLE pro5_computer
	ADD
		CONSTRAINT PK_pro5_computer
		PRIMARY KEY (
			com_code
		);

ALTER TABLE pro5_computer
	ADD
		CONSTRAINT FK_pro5_member
		FOREIGN KEY (
			mem_code
		)
		REFERENCES pro5_member (
			mem_code
		);
-----------
ALTER TABLE pro5_part_category
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

DROP INDEX PK_pro5_part_category;

/* 부품분류 */
DROP TABLE pro5_part_category 
	CASCADE CONSTRAINTS;

/* 부품분류 */
CREATE TABLE pro5_part_category (
	pc_code NUMBER NOT NULL, /* 부품분류코드 */
	pc_01 VARCHAR2(200), /* 소분류1 */
	pc_02 VARCHAR2(200), /* 소분류2 */
	pc_03 VARCHAR2(200), /* 소분류3 */
	pc_04 VARCHAR2(200) /* 소분류4 */
);

CREATE UNIQUE INDEX PK_pro5_part_category
	ON pro5_part_category (
		pc_code ASC
	);

ALTER TABLE pro5_part_category
	ADD
		CONSTRAINT PK_pro5_part_category
		PRIMARY KEY (
			pc_code
		);
-----------
ALTER TABLE pro5_part
	DROP
		CONSTRAINT FK_pro5_part_category
		CASCADE;

ALTER TABLE pro5_part
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

DROP INDEX PK_pro5_part;

/* 컴퓨터부품 */
DROP TABLE pro5_part 
	CASCADE CONSTRAINTS;

/* 컴퓨터부품 */
CREATE TABLE pro5_part (
	part_code NUMBER NOT NULL, /* 부품번호 */
	pc_code NUMBER, /* 부품분류코드 */
	part_name VARCHAR2(200), /* 부품명 */
	part_price NUMBER, /* 부품가격 */
	part_stock NUMBER /* 부품재고량 */
);

CREATE UNIQUE INDEX PK_pro5_part
	ON pro5_part (
		part_code ASC
	);

ALTER TABLE pro5_part
	ADD
		CONSTRAINT PK_pro5_part
		PRIMARY KEY (
			part_code
		);

ALTER TABLE pro5_part
	ADD
		CONSTRAINT FK_pro5_part_category
		FOREIGN KEY (
			pc_code
		)
		REFERENCES pro5_part_category (
			pc_code
		);
-----------
ALTER TABLE pro5_assembly
	DROP
		CONSTRAINT FK_pro5_part_TO_pro5_assembly
		CASCADE;

ALTER TABLE pro5_assembly
	DROP
		CONSTRAINT FK_pro5_computer_TO_pro5_assembly
		CASCADE;

ALTER TABLE pro5_assembly
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

DROP INDEX PK_pro5_assembly;

/* 컴퓨터조립부품 */
DROP TABLE pro5_assembly 
	CASCADE CONSTRAINTS;

/* 컴퓨터조립부품 */
CREATE TABLE pro5_assembly (
	com_code NUMBER NOT NULL, /* 컴퓨터번호 */
	part_code NUMBER NOT NULL, /* 부품번호 */
	part_cnt NUMBER /* 조립부품 수량 */
);

CREATE UNIQUE INDEX PK_pro5_assembly
	ON pro5_assembly (
		com_code ASC,
		part_code ASC
	);

ALTER TABLE pro5_assembly
	ADD
		CONSTRAINT PK_pro5_assembly
		PRIMARY KEY (
			com_code,
			part_code
		);

ALTER TABLE pro5_assembly
	ADD
		CONSTRAINT FK_pro5_part
		FOREIGN KEY (
			part_code
		)
		REFERENCES pro5_part (
			part_code
		);

ALTER TABLE pro5_assembly
	ADD
		CONSTRAINT FK_pro5_computer
		FOREIGN KEY (
			com_code
		)
		REFERENCES pro5_computer (
			com_code
		);
-----------
ALTER TABLE pro5_store
	DROP
		CONSTRAINT FK_pro5_part_TO_pro5_store
		CASCADE;

ALTER TABLE pro5_store
	DROP
		CONSTRAINT FK_pro5_computer_TO_pro5_store
		CASCADE;

ALTER TABLE pro5_store
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

DROP INDEX pro5_store_pk;

/* 상품 */
DROP TABLE pro5_store 
	CASCADE CONSTRAINTS;

/* 상품 */
CREATE TABLE pro5_store (
	store_code NUMBER NOT NULL, /* 상품번호 */
	part_code NUMBER, /* 부품번호 */
	com_code NUMBER /* 컴퓨터번호 */
);

CREATE UNIQUE INDEX pro5_store_pk
	ON pro5_store (
		store_code ASC
	);

ALTER TABLE pro5_store
	ADD
		CONSTRAINT pro5_store_pk
		PRIMARY KEY (
			store_code
		);

ALTER TABLE pro5_store
	ADD
		CONSTRAINT FK_pro5_part_TO_pro5_store
		FOREIGN KEY (
			part_code
		)
		REFERENCES pro5_part (
			part_code
		);

ALTER TABLE pro5_store
	ADD
		CONSTRAINT FK_pro5_computer_TO_pro5_store
		FOREIGN KEY (
			com_code
		)
		REFERENCES pro5_computer (
			com_code
		);
-----------
ALTER TABLE pro5_order
	DROP
		CONSTRAINT FK_pro5_member_TO_pro5_order
		CASCADE;

ALTER TABLE pro5_order
	DROP
		CONSTRAINT FK_pro5_store_TO_pro5_order
		CASCADE;

ALTER TABLE pro5_order
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

DROP INDEX PK_pro5_order;

/* 주문 */
DROP TABLE pro5_order 
	CASCADE CONSTRAINTS;

/* 주문 */
CREATE TABLE pro5_order (
	COL NUMBER NOT NULL, /* 주문번호 */
	store_code NUMBER, /* 상품번호 */
	mem_code NUMBER, /* 회원번호 */
	COL3 VARCHAR2(200), /* 가격 */
	COL4 VARCHAR2(200) /* 주문상태 */
);

CREATE UNIQUE INDEX PK_pro5_order
	ON pro5_order (
		COL ASC
	);

ALTER TABLE pro5_order
	ADD
		CONSTRAINT PK_pro5_order
		PRIMARY KEY (
			COL
		);

ALTER TABLE pro5_order
	ADD
		CONSTRAINT FK_pro5_member_TO_pro5_order
		FOREIGN KEY (
			mem_code
		)
		REFERENCES pro5_member (
			mem_code
		);

ALTER TABLE pro5_order
	ADD
		CONSTRAINT FK_pro5_store_TO_pro5_order
		FOREIGN KEY (
			store_code
		)
		REFERENCES pro5_store (
			store_code
		);
-----------
	
SELECT * FROM PRO5_MEMBER;

INSERT INTO PRO5_MEMBER VALUES (1); --관리자
INSERT INTO PRO5_MEMBER VALUES (2);	--회원
INSERT INTO PRO5_MEMBER VALUES (3);

SELECT * FROM PRO5_COMPUTER;

INSERT INTO PRO5_COMPUTER VALUES (1,1,'이젠시리즈1','인방용');
INSERT INTO PRO5_COMPUTER VALUES (2,1,'이젠시리즈2','게임용');
INSERT INTO PRO5_COMPUTER VALUES (3,2,'ezen01님의 컴퓨터','사용자견적');

SELECT * FROM PRO5_PART_CATEGORY;

INSERT INTO PRO5_PART_CATEGORY VALUES (1, NULL, NULL, NULL, NULL);
INSERT INTO PRO5_PART_CATEGORY VALUES (11, '인텔', '9세대',NULL, NULL);
INSERT INTO PRO5_PART_CATEGORY VALUES (12, '라이젠', '7세대',NULL, NULL);
INSERT INTO PRO5_PART_CATEGORY VALUES (2, NULL, NULL, NULL, NULL);
INSERT INTO PRO5_PART_CATEGORY VALUES (21, '삼성', '8GB', '19200', NULL);

SELECT * FROM PRO5_PART;
INSERT INTO PRO5_PART VALUES (1,11,'i9-9700',300000,20);
INSERT INTO PRO5_PART VALUES (2,12,'라이젠5 3600',260000,20);
INSERT INTO PRO5_PART VALUES (3,21,'삼성 8gb 램',42000,100);

SELECT * FROM PRO5_ASSEMBLY;
INSERT INTO PRO5_ASSEMBLY VALUES (3,1,1);
INSERT INTO PRO5_ASSEMBLY VALUES (3,3,2);
INSERT INTO PRO5_ASSEMBLY VALUES (3,3,3); --에러남

SELECT * FROM PRO5_STORE;
INSERT INTO PRO5_STORE VALUES (1, 1, NULL);
INSERT INTO PRO5_STORE VALUES (2, 3, NULL);
INSERT INTO PRO5_STORE VALUES (3, 2, NULL);
INSERT INTO PRO5_STORE VALUES (4, NULL, 1);
INSERT INTO PRO5_STORE VALUES (5, NULL, 2);
INSERT INTO PRO5_STORE VALUES (6, NULL, 3);

SELECT * FROM PRO5_ORDER;
INSERT INTO PRO5_ORDER VALUES (1,1,2,'300000', '장바구니');
INSERT INTO PRO5_ORDER VALUES (2,2,2,'84000', '주문');
INSERT INTO PRO5_ORDER VALUES (3,3,2,'260000', '장바구니');
INSERT INTO PRO5_ORDER VALUES (4,4,2,'1000000', '주문');
INSERT INTO PRO5_ORDER VALUES (5,5,2,'2000000', '장바구니');
INSERT INTO PRO5_ORDER VALUES (6,6,2,'3000000', '주문');
INSERT INTO PRO5_ORDER VALUES (7,3,3,'260000', '주문');