/*
# 데이터 타입의 변환
1. 숫자나 날짜 타입을 문자와 함께 결합하거나 보고서 양식에 맞추기 위해 주로 사용한다.

# 묵시적 데이터 타입 변환(pormote)
1. 묵시적인 데이터 타입 변환은 정확한 연산을 위하여 오라클에서 데이터 타입을 내부적으로 변환하는 경우

# 명시적 데이터 타입 변환
1. 사용자가 데이터 타입 변환 함수를 이용하여 명시적으로 데이터 타입을 변환 처리하는 것으 말한다.
2. 명시적 데이터 타입 변환 함수
	1) to_char: 숫자/날짜 타입을 문자로 변환
	2) to_number: 문자열을 숫자 타입으로 변환
	3) to_date: 문자열을 날짜 타입으로 변환

# to_char
1. 기본형식
	to_char(number||date, 'format')
2. 여러가지 출력 형식
	to_char(날짜, 형식)
	1) 'Q': 분기. @
	2) 'MM': 월. @@
	3) 'MONTH': 문자열표기. @@월
	4) 'WW': 연단위 주표기. @@년도의 @@째주
	5) 'W': 월단위 주표기. @@월의 @@째주
	6) 'DD': 일표기
	7) 'DY'|'DAY': 요일 표기 

*/
-- 아래와 같이 sal은 숫자형이지만 '800' 문자가 묵시적 형변환이 되어 해당 데이터를 확인할 수 있다.
SELECT *
FROM emp
WHERE sal = '800';

SELECT *
FROM emp
WHERE sal = TO_NUMBER('800'); -- 형변환 메서드를 이용하여 처리한다.

-- to_char 함수
SELECT SYSDATE,
		to_char(sysdate, 'CC'), 	-- 세기표현
		to_char(sysdate, 'yyyy'), 	-- 연도 YYYY형식 표현
		to_char(sysdate, 'yy'),		-- 연도 YY형식 표현
		to_char(sysdate, 'y')
FROM DUAL;
-- ex) 1980년도에 입사한 사람을 출력하세요.
SELECT *
FROM emp
WHERE to_char(hiredate,'yyyy') = '1980';

SELECT ename, hiredate,
		to_char(hiredate,'YYYY') 년도,
		to_char(hiredate,'Q') 분기,
		to_char(hiredate,'MM') 월,
		to_char(hiredate,'MONTH') 월2,
		to_char(hiredate,'WW') 연단위주,
		to_char(hiredate,'W') 월단위주,
		to_char(hiredate,'DD') 일,
		to_char(hiredate,'DY')요일
FROM emp;

-- ex) 1981년도 1/4분기에 입사한 사원의 이름과 입사년/월/분기를 출력하세요.
SELECT ename 이름,
		hiredate 입사년월일,
		to_char(hiredate,'yyyy') 입사년,
		to_char(hiredate,'mm') 입사월,
		to_char(hiredate,'q') 입사분기
FROM emp
WHERE to_char(hiredate,'yyyy q') = '1981 1';

SELECT ename 이름, hiredate 입사년월일,
		to_char(hiredate,'yyyy"년도" mm"월" q"분기"') "입사년/월/분기"
FROM emp
WHERE to_char(hiredate,'yyyy q') = '1981 1';





