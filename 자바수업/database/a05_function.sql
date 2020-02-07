SELECT * FROM emp;
/*
# 함수 개념
1. 데이터의 컬럼값이나 데이터 타입을 변경하여야 하는 경우 사용된다.
	ex) comm을 nvl을 이용하여 comm값(실수tpye), null은 '데이터없음'(문자type)으로 출력할 때 타입을 동일화 하기 위해 사용한다.  
2. 숫자 또는 날짜 데이터의 출력 형식을 변경하여야 하는 경우 사용된다.
	ex) 1980-12-17 00:00:00를 나타나는 형식을 변경하여..
		1980년 12월 17일  @@시@@분@@초 로 나타나야 할때도 함수를 이용한다.
3. 하나 이상의 행에 대한 집계(최대값, 최소값, 평균값, 분산..)을 처리해야 하는 경우에도 함수를 이용한다.
	ex) sal의 전체 평균이나 합산을 출력하고자 할 때 avg(sal), sum(sal)..
	
# 함수의 유형 분류(단일행/복수행)
1. 단일행 함수 : 함수를 통해 1개의 데이터에 1개의 결과값을 처리할 때 단일행 함수라고 한다.
	ex) nvl 함수를 통해서 각각의 데이터가 null일 때 0으로 처리
2. 복수행 함수 : 함수를 통해 여려개의 데이터를 1개의 결과값으로 처리하는 함수를 말한다.
	ex) max(sal): 전체 sal 데이터를 확인해서 하나의 결과값을 최고치로 처리할 때

# 단일행 함수
1. 데이터 값을 조작하는데 주로 사용한다.
	숫자형 => 문자형, 소수점이하 실수 => 반올림 정수, 날짜형 => 원하는 형식의 날짜형태로
2. 행별로 함수를 적용하여 하나의 결과를 반환한다.
	ex) SELECT ename, nvl(comm,0) 보너스
3. 단일행 함수의 종류
	1) 문자함수
	2) 숫자함수
	3) 날짜함수
	4) 변환함수
		- 묵시적 데이터 형변환
		- 명시적 데이터 형변환
	5) 일반함수
4. 단일행 함수의 사용법
	1) 기본형식
		함수명(컬럼명|데이터, param1, param2,...)
		param1 param2는 매개변수를 말한다.
		ex) nvl(comm,0)

# 문자함수
1. 문자 데이터를 입력하여 문자나 숫자를 결과로 반환하는 함수
2. 종류
	1) 대소문자 변환 함수: initcap, lower, upper
	2) 문자조작함수: concat, substr, instr, lpad, rpad, ltrim, rtrim
	3) 문자열 길이반환 함수: length, lengthb
# 대소문자 반환함수
1. initcap: 인수로 입력되는 컬럼이나 표현식의 문자열에서 첫번째 영문자를 대문자로 변환하는 함수
2. lower: 소문자로 변환. upper: 대문자로 변환

# 문자열 길이 반환 함수
1. length 함수는 인수로 입력되는 컬럼이나 표현식의 문자열 길이를 반환하는 함수이다.
	문자의 개수를 출력
2. lengthb 함수는 문자열의 바이트 수를 반환하는 함수이다.
	영문은 1글자=1byte이기에 length와 동일하지만, 한글/특수문자는 1글자=2byte/3byte이기에 차이가 난다.
	cf) dual: 가상 테이블로 처리할 때 사용된다.(임시(데미) 테이블)
		select '홍길동' name from dual;


 */
SELECT ename, nvl(comm,0) 보너스
FROM emp;
SELECT ename, INITCAP(ENAME) 첫글자만대문자로변환
FROM emp;
-- ex1) 함수를 이용하여 다음과 같이 출력하세요.
--		The job of Smith is Clerk!
--		The job of @@@ is @@@!
-- ex2) 위 데이터에서 SALESMAN 만 출력하세요.
SELECT 'The job of '||INITCAP(ename)||' is '||INITCAP(JOB)||'!' showjob
FROM emp
WHERE job='SALESMAN';

SELECT ename, INITCAP(ename), lower(ename), upper(ename)
FROM emp2;
-- ex3) 이름을 통하여 사원정보를 검색하려고 한다. 이름이 대소문자 관계 없이, 한자만 입력하더라도 검색이 되게 sql을 작성하세요.
-- 		이름(첫자 대문자), 직업(소문자) 전체 컬럼
-- ex4)	소문자 's'를 입력하던 대문자'S'를 입력하던 ename에 S가 들어가는 전체 데이터 조회처리.

SELECT initcap(ename), lower(job), a.*
FROM emp a
WHERE ename LIKE '%'||upper('s')||'%';
-- 입력문자 's'를 대문자로 변경하여 조회

SELECT INITCAP(ename), ename
FROM emp
WHERE ename LIKE '%S%'
OR ename LIKE '%s%';

select

-- ex5) 사원명이 5자인 경우를 검색하여, 사원번호, 부서번호, 사원명(첫자 대문자)로 출력
SELECT empno 사원번호, deptno 부서번호, initcap(ename) 사원명
FROM EMP
WHERE LENGTH(ename) = 5;

/*
# 문자 조작 함수
1. concat: 두 문자열을 결합. 문자열1||문자열2
	ex) concat('홍','길동') == '홍'||'길동'
2. substr: 특정 문자 또는 문자열 일부를 추출. substr(문자열, param1, param2)
	1) param1: 순서위치
	2) param2: 해당 순서 이후 추출할 개수
3. instr: 특정 문자가 출현하는 첫번째 위치를 반환 처리. instr(문자열1, 찾을문자1)
	ex) instr('sql*plus','*') ==> 4
4. lpad/ rpad: 오른쪽/왼쪽 정렬후 왼쪽/오른쪽으로 해당 크기보다 못한 데이터일 때는 지정한 문자 추가.
	ex) lpad('sql',5,'*') ==> **sql
		lpad(12,4,0) ==> 0012
		rpad('sql',5,'*') ==> sql**
5. ltrim/rtrim: 왼쪽/오른쪽 지정 문자를 삭제 처리한다.
	ex) ltrim('*sql','*') ==> sql
*/
SELECT 
SUBSTR('921221-2801715',1,2) "년도", 
SUBSTR('921221-2801715',3,2) "월", 
SUBSTR('921221-2801715',5,2) "일", 
SUBSTR('921221-2801715',8,1) "남녀"
FROM dual;

-- ex6) empno, 앞에서 5자를 추출한 ename, 앞에서 3자를 추출한 job가 조합된 코드를 출력하세요.
--		ex) 7369_SMITH_CLE
SELECT empno||'_'||substr(ename,1,5)||'_'||substr(job,1,3) show_code
FROM emp;

-- 함수 혼합. 안쪽부터 함수가 적용되어 처리된다.
SELECT max(LENGTH(ENAME))
FROM emp;
SELECT lpad(ename,6,'#') "lpad예시", rpad(ename,6,'#') "rpad예시"
FROM emp;

-- ex7) job을 앞에서부터 5개를 추출하고, 전체에서 최대 크기를 확인한 수, 나머지 부분을 *로 표기하여 출력하세요.
--		ex) CLERK***
SELECT max(LENGTH(job))
FROM emp;
SELECT rpad(substr(job,1,5),9,'*') 중복함수
FROM emp;


SELECT ltrim('**#*sql*','*')
FROM dual;
-- 결과값: #*sql* : 앞에 있는 모든 * 가 삭제된다.
SELECT ltrim('xyxyxxxyy#xylastworld','xy')
FROM dual;
-- 결과값: #xylastworld : # 이전에 있는 모든 x,y가 삭제된다.


-- ex8) job에서 앞에서 MAN과 뒤에서 MAN을 삭제하여 출력하세요.
SELECT job, ltrim(job,'MAN') 앞삭제, rtrim(job,'MAN') 뒤삭제, 
rtrim(ltrim(job,'MAN'),'MAN') 앞뒤모두삭제
FROM emp;




