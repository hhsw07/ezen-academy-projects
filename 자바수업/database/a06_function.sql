/*
# 숫자 함수
1. 숫자 데이터를 처리하기 위한 함수
2. 종류
	1) round: 지정한 소수점 자리로 반올림 처리. round(데이터, 자릿수)
			자릿수가 +값은 소수점 이하 자릿수, -값은 10단위 이상의 자릿수 처리
		ex) round(222425.7552,2)	==> 222425.76
			round(222425.7552)		==> 222426
			round(222425.7552,-2)	==> 222400
	2) trunc: 지정한 소수점 자리까지 남기고 절삭처리. trunc(데이터, 자릿수)
	3) mod: 데이터베이스에서는 나머지연산자(%) 없기 때문에, 함수로 나머지 처리.
		mod(데이터|m, n): 데이터|m을 n으로 나눈 나머지
	4) ceil: 지정한 값보다 큰 수 중에서 가장 작은 정수.
		소수점 이하의 내용에 대하여 올림처리.
		ex) ceil(123.17) ==> 124
	5) floor: 지정한 값보다 작은 수 주에서 가장 큰 정수.
		ex) floor(123.9) ==> 123
		floor(123.4) < 123.4 < ceil(123.4)
		  = 123		   123.4	 = 124	
**/

SELECT round(222425.7552,-1)
FROM dual;

-- ex1) 부서번호를 %로 해서 보너스를 정하여, sal기준으로 원금+보너스를 합산 출력하되
-- 		10자리단위로 반올림 처리하여 출력하세요.
--		사원명, 급여, 보너스(%), 보너스, 총계   
SELECT ename 사원명, sal 급여, deptno||'%' "보너스(%)", sal*deptno/100 보너스, round(sal*(1+deptno/100),-1) 총계
FROM emp;

-- ex) 사번이 짝수인 사원의 사번과 이름과 급여를 출력하되, 급여는 100자리수로 절삭하여 처리하세요.
SELECT empno 사번, ename 이름, trunc(sal,-2) 급여
FROM emp
WHERE MOD(empno,2) = 0;

/*
# 날짜 함수
1. 날짜 데이터 타입에 사용하는 함수.
2. 날짜 계산은 더하기, 빼기 연산이 가능하다.
	날짜+숫자 : 해당 일자에 "일수"를 가산하여 처리.
	날짜+1/24 : 시간단위 처리
		단위처리: 1/24/60/60 시간/분/초 단위로 해당 날짜 데이터를 변경할 수 있다.
cf) sysdate: 현재 날짜 시간을 지칭
*/
SELECT sysdate 현재, sysdate-1 어제, sysdate+1 내일
FROM dual;
SELECT ename, sysdate, hiredate, hiredate+1 "입사(1일 후)", hiredate+1/24 "입사(1시간 후)",
		hiredate+1/24/60 "입사(1분 후)", CEIL(sysdate-hiredate) "입사후 현재까지 일수"
FROM emp;

-- ex) 사번, 이름과 입사후 90일 날짜, 지금까지 근무년도를 출력
SELECT empno 사번, ename 이름,hiredate 입사일, hiredate+90 "입사후 90일 날짜", floor((sysdate-hiredate)/365) "근무년도",
		substr(sysdate,1,2)-substr(hiredate,1,2)+100 근무년
FROM emp;

/*
# 날짜함수의 종류
1. sysdate: 시스템의 현재 날짜
2. months_between(날짜1, 날짜2): 날짜와 날짜 사이의 개월을 계산


3. add_months(날짜, 추가개월): 날짜에 개월을 더한 날짜 계산
4. next_day(날짜, 요일): 해당 일을 기준으로 명시된 요일의 다음 날짜를 반환하는 함수
5. last_day(날짜): 해당 날짜가 속한 달의 마지막 날짜를 반환하는 함수	

*/
SELECT ename, hiredate, MONTHS_BETWEEN(sysdate, hiredate) 근무개월
FROM emp;

-- ex) 입사후 3개월이 인턴기간이며, 인턴기간의 만료일을 출력하세요.
SELECT ename, hiredate, ADD_MONTHS(hiredate,3) 인턴만료일
FROM emp;
-- 돌아오는 일요일의 날짜 출력
SELECT NEXT_DAY(sysdate, '일') "돌아오는 일요일"
FROM dual;
-- 이달의 마지막 날짜 출력
SELECT LAST_DAY(sysdate) "마지막 날짜"
FROM dual; 
-- ex) 사원들이 입사하고 처음 토요일에 데이트를 하기로 했다. 사원의 이름과 해당 사원의 첫번쨰 토요일을 출력하세요.
--		세번째 토요일에 두번째 데이트를 한다.
SELECT ename 이름, NEXT_DAY(hiredate,'토') 데이트, NEXT_DAY(NEXT_DAY(NEXT_DAY(hiredate,'토'),'토'),'토') 세번째토요일 
FROM emp;

-- ex) 사원들의 첫 급여일을 입사한 다음달 첫날로 지정하였다. 각 사원의 이름과 첫 급여일과 급여(sal)를 출력하세요.
SELECT ename 이름, hiredate 입사일, LAST_DAY(hiredate)+1 "첫 급여일", sal 급여, LAST_DAY(hiredate)-hiredate 근무일, CEIL(sal*(LAST_DAY(hiredate)-hiredate)/365) "첫 급여" 
FROM emp;


/*
# 날짜 데이터의 round, trunc 함수
1. 함수를 적용해서 날짜 계산은 소수점 이하가 나타날 때가 많다. 이에 반올림과 절삭함수를 통해서 처리한다.
2. round 반올림, trunc 절삭처리


*/
-- ex) 오늘로 부터 3달 이후, 첫 번째 월요일을 계산하여 출력하고 오늘과의 날수를 계산하여 출력하세요.
SELECT sysdate 오늘, NEXT_DAY(ADD_MONTHS(sysdate,3) ,'월') "3달후 첫번째 월요일",
	trunc(NEXT_DAY(ADD_MONTHS(sysdate,3) ,'월') - SYSDATE)||'일' 날짜수 
FROM dual;










