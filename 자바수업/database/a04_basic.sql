SELECT * FROM emp;
/*
# 정렬(sorting)
1. SQL 명령문에서 검색된 결과는 테이블에 데이터가 입력된 순서로 출력한다.
	ex) 사원번호 오름차순/내림차순을 정렬해서 출력
	ex) 급여순서로 오름차순/내림차순 정력해서 출력
2. 기본 형식
	order by 정렬할컬럼 asc(default 오름차순)/desc(내림차순)
	
 */
SELECT empno, ename
FROM emp
ORDER BY EMPNO DESC;
SELECT empno, ename
FROM emp
ORDER BY EMPNO;

-- ex) 입사일(hiredate)을 기준으로 최근 입사한 사람부터 출력
SELECT ENAME , HIREDATE 
FROM emp
ORDER BY hiredate DESC;
-- ex) deptno기준 오름차순, job기준 내림차순으로 정렬하여 출력하세요.
SELECT DEPTNO , JOB 
FROM emp 
ORDER BY DEPTNO ASC, JOB DESC;





















