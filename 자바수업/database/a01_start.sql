/*
# Database 서버 구축
1. 오라클 사이트 접속 - 필요로하는 서버 설치 파일 다운로드
	ex) 11g xe
2. setup.exe 파일을 통해 실행
	1) 관리자 계정 비밀번호 설정 : 1111 
		system
	2) 설치 여부 확인.
		cmd 창에서  sqlplus 명령어 실행
		sqlplus : 기본 오라클 DB client tools
		system/1111 로 접속
3. 설치된 폴드에 주요 정보
     1) JDBC 드라이버
		D:\oraclexe\app\oracle\product\11.2.0\server\jdbc\lib\ojdbc6.jar
	 2) sample script파일
	 	D:\oraclexe\app\oracle\product\11.2.0\server\rdbms\admin\scott.sql
	 	==> 연습용 데이터베이스 접속 계정과 테이블 생성
4. scott.sql 파일변경
	계정명:대소문자 구별하지 않음.
	비밀번호 : 대소문자 구별 ==> tiger로 소문자로 변경..
5. sqlplus에서 관리자 계정으로 접속한 후, 해당 폴드	C:\Users\507-00에
	scott.sql을 위치시킨 후에, @scott.sql 명령어를 수행하여 주면 된다.
	(@ ==> run  즉, run scott.sql의 의미이다.)
	scott/tiger 계정 생성과 함께 사용할 연습테이블 emp,dept 생성됨
	conn scott/tiger;  로 접속하여
	select * from emp; 명령어를 통해서 실행한다.
6. eclipse 지원하는 database client plugin 설치
	1) 상단메뉴 help ==> market place
	2) dbeaver 검색 후, dbeaver 6.3.3 install
7. 서버와 client
	1) client가 서버에 접속할려면, 고유의 툴을 이용해서
		socket통신을 통해서 접속한다.
	2) 서버에 접속할 socket통신모듈을 만들어 놓고, 
		그 모듈(driver-java에서는 @@.jar)을 이용해서 접속한다.
8. driver를 이용해서 기본적으로 서버에 접속이 가능하다.
	0) oracle 서버에서 jdbc 드라이버 위치
		C:\oraclexe\app\oracle\product\11.2.0\server\jdbc\lib\ojdbc6.jar
	1) oracle은 위에 언급한 경로 jdbc드라이버를 사용하기 쉬운
		경로에 설정하고, 해당 jdbc드라이버를 plugin에 설정한다.
		WebContent\WEB-INF\lib\ojdbc6.jar
9. eclise dbeaver 플러그인에서 설정방법
	1) 플러그인이 설정되면 2가지 메뉴 보임  SQL편집기, 데이터베이스
	2) 데이터베이스에 드라이버관리자에 가서 oracle ==> edit 클릭
	3) add file을 통해서 WebContent\WEB-INF\lib\ojdbc6.jar에 있는
	드라이버 선택
	4) find class ==> oracle.jdbc.driver.OracleDriver 선택
	5) 데이터베이스메뉴 새데이터베이스연결 oracle 선택
		host : localhost   port:1521
		sid : XE
		계정 : scott/tiger
		test connection을 통해 확인한 후, finish
10. sql 편집기를 통해서 새 sql편집기를 통해서 저장후..
	sql 작성   ctrl + enter를 통해서 실행..
		
jdbc드라이버를 통해 서버와 연결(★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★)		
		
	
				
				
	 	 
	
			
	
	
	
	  	  	
	 	     
		
		
		
		
		
		 	

*/


SELECT * FROM emp;
-- ctrl + enter
/*
# 데이터 조회하기!!
데이터는 select 구문을 이용하여 저장된 데이터를 호출(query)할 수 있다.
1. 기본형식
	select *|| 컬럼명1, 컬럼명2
	from 테이블명
	where 조건
 * */
SELECT * FROM emp;
SELECT empno, ename, job, sal
FROM emp;
/*
2. 컬럼명 별칭처리하기.
select 컴럼명 as 별칭명, 컴럼명 별칭명
from 테이블
해당 테이블구조 안에 있는 컬럼명이, 별칭명으로 호출하여 출력할 수
있다.
	- 한글과 특수문자 및 공백을 사용할 때는 별칭을 ""으로 처리하면 된다.
**/
SELECT empno AS NO, ename name, sal "#급 여!!#"
FROM emp;
-- ex) 사원테이블을 사원번호(empno), 사원명(ename), 관리자번호(mgr)
--		급여(sal)로 별칭으로 데이터를 표현하세요.
SELECT empno "사원번호", ename "사원명", mgr "관리자 번호",
	sal "급 여"
FROM emp;	
/*
# 데이터의 산출 연산 처리와 concatnate(문자열연결)
1. 데이터 컬럼간에는 연산처리가 가능하다. +,-,*,/
2. 문자열과 컬럼 간의 연결처리는 컬럼명||컴럼명을 이용한다.
 * */
SELECT ename 이름, sal 급여, sal+10 "+급여(보너스)" 
FROM emp;
SELECT '이름은 '||ename||'님 입니다' "자기 소개"
FROM emp;
--ex1) 사원번호와 이름을 함께 출력하고, 연봉의 1/12를 출력하세요.
--  이름(사원번호)의 월급여는 @@ 입니다 - 라고 출력..
SELECT ename||'('||empno||')의 월급여는 '||sal/12||'만원 입니다!' show01
FROM emp;
--ex2) @@님의 사원번호는 @@이고, 올해 연말보너스는 연봉의 20%인 @@원입니다.
SELECT ename||'님의 사원번호는 '||empno||'이고, 올해 연말보너스는 연봉의 20%'||
	'인' || sal*0.2||'만원 입니다.' show
FROM emp;	
--ex3) @@님의 이번달 보너스는 연봉의 deptno%기준으로  지급합니다.
SELECT ename||'님의 이번달 보너스는 연봉('||sal||')의 '||deptno||'%기준으로'||
	sal*(deptno/100)||'만원 지급합니다.' show
FROM emp;
-- round(컬럼명, 소수점 자리수) : sql함수로 반올림 처리.
--ex4) @@님의 입사일은 @@이고, 현재 연봉의 1/13인 월급여 @@만원 
--  지급됩니다. (round)반올림처리)
SELECT ename||'님의 입사일은 '||hiredate||'이고, 현재 연봉('||sal||') 연봉의'||
	'1/13은 '|| round(sal/13,1)||'입니다' show
FROM emp;



	





