/*
1. 함수의 유형을 2가지 형으로 분류하고, 차이점을 예제 sql을 통해 기술하세요.
1) 단일행: 1개 데이터에 함수처리 ex) nvl(comm,0), lpad(job,*)...
2) 복수행: 여러 데이터를 1개의 결과값으로 함수처리 ex) max(sal), avg(comm)...


2. 문자함수의 종류 3가지와 대표적인 함수 내용을 기술하세요.
1) 대소문자 변환 : initcap, lower, upper
2) 문자 조작: substr(문자열 일부 추출), instr(문자열에서 특정 문자가 위치한 자리), lpad(채움), ltrim(삭제)
3) 문자열 길이: length, lengthb


3. length, lengthb 함수의 차이점을 기술하세요.
1) length: 문자열의 길이
2) lengthb: 문자열의 btye 크기(영문은 1자=1byte로 서로 같지만, 한글 및 특수문자는 2~3byte로 다르다)


4. 다음과 같이 데이터를 출력하려고 한다. 함수를 적용하여 처리하세요.
	- 조회 데이터 job의 er ==> 대소문자 구분없이 조회 가능.
	- Smith는 7369를 사번으로하고, 직책은 Clerk입니다.
select initcap(ename)||'는 '||empno||'를 사번으로 하고, 직책은 '||
		initcap(job)||'입니다.' show
FROM emp
WHERE job LIKE '%'|| upper('er') ||'%';


5. 2월에 입사한 사람을 사원번호, 입사일, 이름으로 출력하세요.
select empno 사원번호, hiredate 입사일, ename 이름
from emp
where SUBSTR(hiredate,4,2) = 2;


6. job에 MAN으로 끝나는 데이터를 검색하여 MAN은 삭제하고 이름, 사번, 직책을 출력하세요.
select ename 이름, empno 사번, rtrim(job,'MAN') 직책
from emp;
-- cf) trim(컬럼) : 양옆에 공백을 제거 하여 처리한다.

7. 사원명과 급여를 출력하면서, sal를 5자리로 만들어 5자리가 되지 않는 데이터는 ##800 형식으로 출력하세요.
select ename 사원명, lpad(sal,5,'#') 급여
from emp;
-- cf) ''||sal  ==> 문자열로 형변환(casting)

8. 숫자 함수를 올림, 내림 및 반올림 기능으로 분류하고, 자리수 처리 되는지 여부를 표시하세요.
올림: ceil(12.345) ==> 13 자리수처리X(정수로 처리)
내림: floor(12.345) ==> 12 자리수처리X(정수로 처리)
	 trunc(12.345, 1) ==> 12.3 자리수 처리O
반올림: round(12.345, 2)  ==> 12.35 자리수 처리O



9. 사번이 홀수인 사원을 검색하되, 급여를 10 단위로 절삭하여 사원번호, 사원명, 급여를 출력하세요. 
select empno 사원번호, ename 사원명, trunc(sal,-1) 급여
from emp
where mod(empno,2) = 1;


10. 오늘로부터 100일 후를 dual 테이블을 통해서 출력하세요.
select sysdate "오늘 날짜", sysdate+100 "100일 후 날짜"
from dual;


*/



