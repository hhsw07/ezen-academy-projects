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
