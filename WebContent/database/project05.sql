SELECT * FROM emp;
SELECT * FROM dept;

SELECT ROW_NUMBER() OVER(ORDER BY no), 
(SELECT a.empno FROM emp a 
UNION 
SELECT b.deptno FROM dept b);

SELECT ROW_NUMBER() over(ORDER BY EMPNO) "no" , empno
FROM (
SELECT a.empno  FROM emp a 
UNION 
SELECT b.deptno  FROM dept b) c;

SELECT a.empno "no" FROM emp a 
UNION 
SELECT b.deptno "no" FROM dept b;