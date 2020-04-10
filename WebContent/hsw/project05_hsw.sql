SELECT * FROM emp;

SELECT * FROM emp2
WHERE deptno=10;

CREATE TABLE ex1
AS
SELECT * FROM emp2
WHERE deptno=10;

UPDATE ex1
SET deptno = 70;

INSERT INTO ex1(empno)
VALUES (1000);

SELECT * FROM ex2;

drop TABLE pro5_part;

CREATE TABLE pro5_partEx(
	pNo NUMBER,
	pKind varchar2(200),
	pName varchar2(200),
	pPrice NUMBER,
	pCnt NUMBER
);
CREATE SEQUENCE pro5_partEx_seq
INCREMENT BY 1
START WITH 1;

INSERT INTO pro5_partEx values(pro5_partEx_seq.nextval(),'cpu','intelCPU1',1000,10);

CREATE TABLE pro5_assemblyEx(
	aNo NUMBER,
	pNo NUMBER,
	aCnt NUMBER
);
SELECT * FROM product0406;
CREATE TABLE product0406(
	no NUMBER,
	img varchar2(100),
	name varchar2(300),
	price NUMBER,
	cnt NUMBER,
	regDate DATE,
	uptDate DATE,
	detail varchar2(600)
);
DROP TABLE product0406;
CREATE SEQUENCE product0406_seq
INCREMENT BY 1
START WITH 1000
MINVALUE 1000
MAXVALUE 9999;
INSERT INTO product0406 
values(product0406_seq.nextval,'',
'사과'||product0406_seq.nextval,1000,100,sysdate,NULL,'');

select * from product0406;

SELECT parts_img, parts_name, part_price, parts_no FROM product2
WHERE parts_mc = 'cpu'
AND parts_sc1 LIKE '%'||''||'%'
AND parts_sc2 LIKE '%'||''||'%'
AND parts_sc3 LIKE '%'||''||'%'
AND parts_sc4 LIKE '%'||''||'%'
AND parts_sc5 LIKE '%'||''||'%'
AND parts_sc6 LIKE '%'||''||'%';

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
CREATE SEQUENCE p5_parts_seq
INCREMENT BY 1
START WITH 1;

CREATE UNIQUE INDEX p5_parts_pk
ON p5_parts (
	parts_no ASC
);

/* no, name, price, stock, img, detail, mc, sc1, sc2, sc3, sc4, sc5, sc6 */
INSERT INTO p5_parts values(p5_parts_seq.nextval(),'cpu'||p5_parts_seq.nextval(),
		1000+p5_parts_seq.nextval(),100,
		'','','cpu','','','','','','');


/* 견적 */
DROP TABLE p5_assembly 
	CASCADE CONSTRAINTS;

/* 견적 */
CREATE TABLE p5_assembly (
	com_no NUMBER NOT NULL, /* 컴퓨터번호 */
	parts_no NUMBER NOT NULL, /* 부품번호 */
	parts_cnt NUMBER NOT NULL /* 조립부품 수량 */
);

/* 제약 조건 설정 */
CREATE UNIQUE INDEX p5_assembly_pk
ON p5_assembly (
	com_no ASC,
	parts_no ASC
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