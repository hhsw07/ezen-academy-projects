SELECT * FROM emp;

SELECT deptno FROM emp;
-- DISTINCT : 특정한 데이터를 중복을 제거하고 처리해 주는 부분을 말한다.
SELECT DISTINCT deptno FROM emp;
/*
# 기본적인 SQL 질의어 구조
SELECT 출력할 컬럼
FROM 테이블
WHERE 컬럼 = 데이터
	AND 컬럼 = 데이터
	OR 컬럼 = 데이터
GROUP BY 그룹할 컬럼		(특정 컬럼단위 그룹함수(합산, 개수, 최소/최대) 통계치를 활용하기 위해 사용)
	HAVING 그룹컬럼에 조건
ORDER BY 정렬할 컬럼1, 컬럼2...

1. SELECT 절
	1) 질의 결과를 포함 하려는 속성(컬럼)들의 리스트 열거(호출)
	2) DISTINCT 절을 사용해서 중복을 제거한다.
2. FROM 절
	1) 질의에서 필요로 하는 릴레이션들의 리스트 열거
3. WHERE 절
	1) 관계 대수(=, >=, <=, >, <)의 SELECT 연산의 조건에 해당
	2) AND, OR, NOT, SUBQUERY(중첩질의)를 통해서 조건으로 FILTERING 처리한다.
4. GROUP BY
	1) 특정 컬럼에 데이터를 기준으로 그룹하여 처리하는 것을 말한다.
5. HAVING
	1) 그룹함수의 결과를 기준으로 조건 처리
6. ORDER BY
	1) 결과 데이터를 특정한 컬럼 기준으로 정렬을 처리한다.
	cf) ORDER BY는 기본으로 오름차순(asc 낮은 수부터 큰 수로)이고, 내림차순(desc 큰 수에서 낮은 수로)로 처리 가능하다.
		또한, oracle에서는 null 값을 가장 큰 값으로 취급한다.
*/

SELECT *
FROM EMP
WHERE SAL>=2000
AND JOB ='MANAGER';

SELECT DEPTNO, empno, ename, job, sal
FROM emp;

SELECT DEPTNO, COUNT(*), AVG(SAL)
FROM EMP
GROUP BY DEPTNO
HAVING AVG(SAL)>=2000;
-- HAVING은 WHERE와 비슷한 역할을 한다.

/*
SELECT DEPTNO,SAL 
FROM EMP
GROUP BY DEPTNO
HAVING AVG(SAL)>=2000;
deptno로 그룹화할 경우 sal 데이터와 동시에 표현할 수 없어, 해당 질의문은 실행되지 않음.
*/

SELECT *
FROM EMP
ORDER BY MGR, SAL ;


/*
# WHERE
1. 테이블에 저장된 데이터 중에서 원하는 데이터만 선택적으로 검색하는 기능을 처리할 때 사용된다.
2. WHERE 절의 조건문은 컬럼명, 연산자, 상수, 산술 표현식을 결합하여 다양한 형태로 표현 가능하다.
3. WHERE 절에서 사용하는 데이터 타입은 문자, 숫자, 날짜 타이을 사용 가능하다.
4. 문자와 날짜 타입의 상수 값을 작은 따옴표('')로 묶어서 표현하고 숫자는 그대로 사용한다.
5. 상수 값에서 영문자는 대소문자를 구별한다.(서로 다른 취급)
6. 논리 연산자의 종류
	1) 조건1 AND 조건2 : 조건1과 조건2가 둘 다 참일 때 출력
	2) 조건1 OR 조건2 : 조건1과 조건2 중 하나만이라도 참일 때 출력
	3) NOT 조건 : 해당 조건이 아닌 데이터는 모두 출력
	
SELECT [DISTINCT] * | 컬럼명 별칭(ALIAS)
FROM 테이블명
WHERE 조건
 */

SELECT * FROM EMP;
-- 부서번호(deptno)가 10인 데이터를 출력하세요.
SELECT * 
FROM EMP
WHERE DEPTNO=10;
-- 직업(JOB)이 SALESMAN인 데이터만 출력하세요.
SELECT * 
FROM EMP
WHERE job='SALESMAN';
-- 직업(JOB)이 SALESMAN인 데이터의
--		+ 사원명(ENAME), 직책(JOB), 급여(SAL)를 출력하세요.
SELECT ENAME "사원명", JOB "직책", SAL "급여"
FROM EMP
WHERE JOB = 'SALESMAN';

SELECT ename 사원명, job 직책, sal 급여 
FROM EMP
WHERE JOB = 'SALESMAN';

-- ex) SAL(연봉)이 2000이상이고, 부서번호(DEPTNO)가 10인 사원의 
--		사원번호(EMPNO), 사원명, 연봉, 부서번호를 출력하세요.
SELECT empno 사원번호, ename 사원명, sal 연봉, deptno 부서번호
FROM EMP
WHERE sal>=2000
AND deptno=10;

-- ex) 연봉이 2000에서 3000사이 이거나, 직책이 SALESMAN인 사원의 사원번호, 사원명, 직책, 연봉을 출력
SELECT empno 사원번호, ename 사원명, job 직책, sal 연봉
FROM EMP
WHERE (2000<=sal
AND sal<= 3000)
OR job = 'SALESMAN';

-- ex) 부서번호가 10이 아니고, 연봉(SAL)이 3000이상인 사원명, 사원번호, 급여, 부서번호를 출력하세요.
SELECT ename 사원명, empno 사원번호, sal 급여, deptno 부서번호
FROM EMP
WHERE DEPTNO != 10
AND sal >=3000;
-- ex) 부서번호 10, sal 3000 이상이 둘 다 아닌 데이터 출력
SELECT ename 사원명, empno 사원번호, sal 급여, deptno 부서번호
FROM EMP
WHERE NOT (DEPTNO = 10
AND sal >=3000);






