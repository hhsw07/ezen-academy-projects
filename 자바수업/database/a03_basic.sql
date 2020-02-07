/*
# SQL 연산자
1. 컬럼명 BETWEEN A AND B : A와 B사이의 값을 가져온다.
	==> 칼럼명 >= A AND 칼럼명<=B 와 동일
*/
SELECT *
FROM emp
WHERE sal BETWEEN 1000 AND 2000;

SELECT *
FROM emp
WHERE SAL >= 1000
AND SAL <= 2000; 

/*
# in 연산자를 이용한 조건 검색
1. in(a,b,c...) 연산자
	1) 특정 컬럼의 데이터 값이 a,b,c... 값 중에 하나라도 일치하면 참이 되는 연산자.
	2) or 논리 연산자를 사용한 것과 같은 결과 집합 출력
	cf) SUB QUERY로 재 이용할 때 활용된다.
		ex) 부서별로 최고 급여인 사람을 출력하세요.
		SELECT empno, deptno, SAL
		FROM emp
		WHERE (DEPTNO, SAL)
			in(	SELECT deptno, max(SAL)
				FROM EMP
				GROUP BY DEPTNO );
		
**/
-- ex) 부서번호가 10이거나 20인 데이터 처리 방법 2가지
--1)
SELECT * FROM emp
WHERE DEPTNO = 10 OR DEPTNO = 20;
--2)
SELECT * FROM emp
WHERE DEPTNO IN (10,20);

-- ex) job이 SALESMAN이거나 MANAGER인 경우 사원번호, 이름, 직책
SELECT empno 사원번호, ename 이름, job 직책
FROM emp
WHERE job IN ('SALESMAN', 'MANAGER');


/*	cf) SUB QUERY로 재 이용할 때 활용된다.
		ex) 부서별로 최고 급여인 사람을 출력하세요.
*/

SELECT max(sal), DEPTNO 
FROM emp
GROUP BY DEPTNO;


SELECT empno, deptno, SAL
FROM emp
WHERE (DEPTNO, SAL)
	in(	SELECT deptno, max(SAL)
		FROM EMP
		GROUP BY DEPTNO );
-- where에서 확인할 컬럼이 deptno, sal 2개 이다.
-- 그래서, in 아래에서 호출(출력)할 데이터도 depno, sal(max이기는 하지만) 컬럼의 데이터 2개이다.


/*
# KEYWORD 검색시 활용하슨 LIKE 연산자.
1. LIKE 연산자: 컬럼에 저장된 문자열중에서 문자 패턴과 부분적으로 일치하면 참이 되는 연산자.
2. 기본형식
	1) WHERE 컬럼명 LIKE '%검색할문자%'
	2) WHERE 컬럼명 LIKE '_검색할키워드_' : 언더바(_)를 이용해서 글자의 위치까지 제한하여 검색할 수 있다.
 * */
-- ex) job 컬럼에 MAN 글자가 포함되어 있으면 출력
SELECT * FROM EMP
WHERE JOB LIKE '%MAN%'; -- SALES'MAN' 'MAN'AGER
-- ex) job 컬럼에 MAN으로 끝나는 글자가 포함되어 있으면 출력
SELECT * FROM emp
WHERE JOB LIKE '%MAN';  -- SALES'MAN'
-- ex) ENAME에서 'A'로 시작하는 글자와 'A'를 호함하는 글자가 있는 데이터를 구분하여 출력하세요.
SELECT * FROM emp
WHERE ENAME LIKE 'A%';
SELECT * FROM emp
WHERE ENAME LIKE '%A%';
-- ex) 두번째 글자에 'A'가 들어가는 글자가 있으면 구분하여 출력
SELECT * FROM emp
WHERE ENAME LIKE '_A%' -- 위치까지 검색하는 경우

-- ex) ename이나 job의 마지막 글자에서 두번째 글자가 E가 들어가는 데이터를 출력하시오
SELECT * FROM emp
WHERE ename LIKE '%E_' OR job LIKE '%E_';

/*
# NULL
1. 미확인 값이나 아직 값이 적용하지 않는 것을 의미.
2. 0이 아니며, 스페이스(' '-공백)도 아닌 정의되지 않는 값.
3. NULL값과 다른 값과의 연산 결과는 NULL이다.
	SELECT NULL+SAL ==> NULL
4. SELECT 숫자형 데이터일 때 NULL과 연산을 하면 NULL 이다.
	0과 반드시 구분하여야 한다. 
5. WHERE 컬럼명 IS NULL;
	WHERE 컬러명 IS NOT NULL;
6. NULL일 때 지정한 값으로 처리: NVL(param1, param2)	
	1) param1: 처리할 데이터
	2) param2: param1에 있는 데이터가 null일때 나타날 데이터
	주의) param1과 param2는 동일한 데이터type 이어야 한다. 유형이 다를 때는 형변환을 이용해서 처리하여야 한다.
	
 */
SELECT ename, sal, comm, sal+COMM 총계
FROM emp;
SELECT ename, sal, comm, sal+NVL(comm,0) "총 계" 
FROM emp;
-- ex) 000님의 관리자 번호(MGR)는 00입니다. 출력하되, 관리자 번호는 @@ 입니다.
--		관리자 번호가 없을 때, 최고관리자라고 표시
SELECT ename||'님의 관리자 번호는 '||
NVL(''||MGR,'최고관리자')||'입니다.' show 
FROM emp;
-- cf) NVL 함수는 형변환시, 해당 type에 맞게 두번째 매개변수 값을 설정하여야 한다.
-- 		'최고관리자'문자를 입력시 MGR에 입력된 숫자를 문자열로 형변환하기 위해 
--		''||MGR 문자열과 숫자를 합하여 문자열 type으로 형변환하여 사용했다.

-- ex) 조건문 처리하여 보너스(comm)가 없는 사원을 출력
SELECT ENAME, SAL, COMM FROM emp
WHERE COMM IS NULL;
-- 보너스(comm)의 데이터가 없거나(null) 0인 사원
SELECT ENAME, SAL, COMM 
FROM emp
WHERE nvl(COMM,0) = 0;

-- ex) 조건문 처리하여 보너스(comm)가 있는 사원을 출력
SELECT ENAME, SAL, COMM FROM emp
WHERE COMM IS NOT NULL;

-- ex) mgr이 없는 데이터를 조회하여, @@@님은 최고 관리자이다. 라고 출력
SELECT ename||'님은 최고 관리자이다.' show
FROM emp
WHERE MGR IS NULL;

/*
# 집합 연산자
1. 테이블을 구성하는 행집합에 대해 테이블의 부분 집합을 결과로 반환하는 연산자.
2. 집합 연산의 대상이 되는 두 테이블의 컬럼 수가 같고, 대응되는 컬럼끼리 데이터 타입이 동일할 때 활용된다.
3. 기본 형식
	select 명령문1
	union, union all, intersect, minus
	select 명령문2
4. 집합 연산자 종류
	1) union: 두 집합에 대해 중복되는 행을 제외한 합집합
	2) union all: 두 집합에 대해 중복되는 행을 포함한 합집합
	3) minus: 두 집합간의 차집합
	4) intersect: 두 집합간의 교집합
*/

/*
# 복사테이블 만들기
create table 테이블명
as select * from 기본테이블명;
 */

CREATE TABLE emp2
AS SELECT * FROM emp
WHERE DEPTNO = 10;
SELECT * FROM emp2;

INSERT INTO emp2 values(7999,'홍길동','사원',7839,sysdate,3000,NULL,40);
INSERT INTO emp2(EMPNO, JOB, MGR) values(1,' ',null);

SELECT * FROM emp;		-- 12개
SELECT * FROM emp2;		-- 4(같은3+다른1)개
-- 중복데이터 제거한 전체데이터
SELECT * FROM emp
UNION
SELECT * FROM emp2;		--13개
-- 중복데이터 포함한 전체데이터
SELECT * FROM emp
UNION ALL
SELECT * FROM emp2;		-- 16개
-- 차집합확인
SELECT * FROM emp
MINUS
SELECT * FROM emp2;		-- 9개
-- 교집합확인
SELECT * FROM emp
INTERSECT
SELECT * FROM emp2;		-- 3개










