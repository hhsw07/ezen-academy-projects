CREATE TABLE p01(
	pNO NUMBER,
	pname varchar2(300),
	pmc varchar2(300),
	psb1 varchar2(300),
	psb2 varchar2(300)
);

CREATE TABLE c01(
	cNO NUMBER,
	cname varchar2(300),
	cc varchar2(300)
);

CREATE TABLE o01(
	oNO NUMBER,
	NO NUMBER
);

DROP TABLE p01;
DROP TABLE c01;
DROP TABLE o01;

SELECT * FROM p01;
SELECT * FROM c01;
SELECT * FROM o01;

SELECT * FROM p01
UNION
SELECT * FROM c01; --작동 안함(컬럼수가 다름)

SELECT pno , pname , pmc FROM p01
UNION
SELECT cno, cname, cc FROM c01;

SELECT o.ONO, pc.pNO "no", pc.pname "name", pc.pmc "category"
FROM 
(SELECT pno , pname, pmc FROM p01
UNION
SELECT cno, cname, cc FROM c01) pc, o01 o
WHERE o.NO = pc.pno;





INSERT INTO p01 VALUES(1,'i5-6600','CPU','Intel','intel 9세대');
INSERT INTO p01 VALUES(2,'ryzen 9 3900x','CPU','AMD','AMD 4세대');
INSERT INTO c01 VALUES(101,'EZEN-GAME01','게임용컴');
INSERT INTO c01 VALUES(102,'EZEN-STREAM01','인방용컴');
INSERT INTO o01 VALUES(1, 1);
INSERT INTO o01 VALUES(1, 101);