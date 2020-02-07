/*
1. 묵시적 형변환과 명시적 형변환의 차이점을 예시와 함께 기술하세요.
1) 묵시적 형변환: 정확한 연산을 위해 오라클 자체에서 자동으로 형변환
to_char(hiredate,'mm') = 02
sal = '800'
2) 명시적 형변환: 사용자가 데이터 타입 변환 함수를 사용하여 직접 형변환
to_char(hiredate,'mm') = '02'
sal = to_number('800')

2. 명시적 데이터 타입 변환 함수 3가지를 기술하세요.
1) to_char
2) to_number
3) to_date


3. 분기별로 입사한 사람의 인원과, 최고급여를 출력하세요.
SELECT TO_CHAR(hiredate,'yyyy')||'년 '||TO_CHAR(hiredate,'q')||'분기' "분기" ,COUNT(empno) "인원수", max(sal)
FROM emp
GROUP BY TO_CHAR(hiredate,'yyyy'), TO_CHAR(hiredate,'q')
ORDER BY TO_CHAR(hiredate,'yyyy'), TO_CHAR(hiredate,'q');


4. 1분기에 입사한 사람은 10%, 2분기 20%, 3분기 30%, 4분기 40% 보너스를 주기로 했다.
	사원번호, 사원명, 보너스(%), 보너스를 출력하세요ㅣ
SELECT empno 사원번호, ename 사원명, to_char(hiredate,'q')*10||'%' "보너스(%)",
sal 급여, sal*to_char(hiredate,'q')*10/100 "보너스"
FROM emp;


5. 회원번호, 아이디, 패스워드, 이름, 포인트 정보가 있는 테이블을 생성하세요.
CREATE TABLE member(
	회원번호 varchar2(50) PRIMARY KEY,
	아이디 varchar2(50),
	패스워드 varchar2(50),
	이름 varchar2(50),
	포인트 number
);


6. 미국의 추수감사절은 11월 네째 목요일로 한다. dual 테이블과 함수를 이용해서 올해 추수감사절 날짜를 출력하세요.
SELECT next_day(next_day(next_day(next_day(last_day(ADD_MONTHS(sysdate,10-to_char(sysdate,'mm'))),'목'),'목'),'목'),'목') "추수감사절"
-- 10월의 마지막날에서 다음 목요일을 11월의 첫번째 목요일로 계산
FROM dual;



*/

CREATE TABLE member(
	회원번호 varchar2(50) PRIMARY KEY,
	아이디 varchar2(50),
	패스워드 varchar2(50),
	이름 varchar2(50),
	포인트 number
);

SELECT * FROM MEMBER;


SELECT next_day(next_day(next_day(next_day(last_day(ADD_MONTHS(sysdate,10-to_char(sysdate,'mm'))),'목'),'목'),'목'),'목') "추수감사절"
FROM dual;

