/*
# 테이블 만들기
1. 개념설계에 의해 도출된 엔티티entity를 실제 테이블로 만들어 간다.
2. 테이블 생성 기본형식.
	1) create table 테이블명(
		 컬럼명 데이터타입 제약조건,
		 컬럼명 데이터타입,
		 ...
		);




*/
-- sudent 테이블 생성
CREATE TABLE student(
	NO NUMBER PRIMARY KEY, 	-- 식별자키.. no라는 이름을 숫자
	name varchar2(50),				-- name이라는 이름으로 가변형 문자
	kor NUMBER,
	eng NUMBER,
	math NUMBER
);

SELECT * FROM student;

/*
# 테이블 만들기
1) 데이터 타입
	- 데이터 베이스에 저장되는 데이터는 문자, 숫자, 날짜, 이미지등과 같이 다양한 형식으로 표현할 수 있다.
	- 실무에서 칼럼에 대한 데이터 타입이나 길이의 결정은 데이터베이스 설계 단계에서 신중하게 고려해야 하는 중요한 사항.
	- 데이터베이스 설계 단계에서 잘못 설정된 데이터 타입은 응용 프로그램 개발을 어렵게 하거나 성능을 저하시키는 요인이 된다.
2) 종류
	- char(size): size의 고정길이 문자 데이터 타입.
		최대크기: 2000byte (한글은 oracle version에 따라서 다르지만 2~3byte)
		최소크기: 1byte
		ex) 고정형이라서 선언된 크기보다 작은 데이터를 넣더라도 해당 크기를 유지한다.
			남는 공간은 공백문자로 채움.
			주로 크기가 일정한 code성 데이터에 사용한다.(학번, 사번, 주민번호...)
	- varchar2(size): size 크기의 가변 길이 문자 데이터 타입.
		최대크기: 4000byte
		최소크기: 1byte
		ex) 가변형이라 최대크기보다 작은 데이터는 작은 크기로 유지된다.
			남는 공간이 없음
			일반적으로 데이터가 가변적으로 들어갈 때 활용된다.(이름, 주소....)
	- number(p,s): p,s가 들어가지 않으면 정수형 데이터.
		정밀도(p), 스케일(s)로 표현되는 숫자 데이터 타입
		p: 1~38, s:-84~127: 소수점 이하의 데이터(실수형)로 나타낼 때 활용된다.
	- date: 날짜 형식을 저장하기 위한 데이터 타입
	- blob: 대용량의 바이너리 데이터(이미지..)를 저장하기 위한 데이터 타입.
		최대 4GB, 일반적인 파일, 이미지 데이터...
	- clob: 대용량의 텍스트 데이터를 저장하기 위한 데이터 타입.
		최대 4GB, 4000byte 이상의 문자형 데이터
	- timestamp(n): date 데이터 타입의 확장된 형태
		n은 milli second 자리수로 최대 9자리가지 표현 가능하다.
			
3) 테이블 생성시 형식
	create table 테이블명(
		컬럼명1 데이터타입
		컬럼명2 데이터타입
		...
	);
*/
-- ex1) 문제은행 테이블을 만드세요. 컬럼으로, 번호, 문제구분(객/주), 문제내용, 정답
CREATE TABLE exam(
	no NUMBER PRIMARY key,
	type char(1),
	qContents varchar(1000),
	qAnser varchar(200);
);
-- ex2) 게시판 테이블을 만드세요. 게시판 번호, 게시판 title, 게시물 내용, 등록일,수정일, 작성자, 조회수
CREATE TABLE board(
	no NUMBER PRIMARY KEY,
	title varchar2(300),
	contest varchar2(2000),
	regdate DATE,
	uptdate DATE,
	writer varchar(100),
	readcnt NUMBER;
);
-- ex3) 물품 테이블을 작성하세요. 물품key, 물건명, 단가, 보유수량, 변경일
CREATE TABLE product(
	prodkey NUMBER,
	pname varchar2(100),
	pprice NUMBER,
	pcnt NUMBER,
	uptdate date
);


SELECT * FROM emp;
SELECT * FROM dept;

SELECT * FROM STUDENT;

/*
# 테이블의 제약조건 만들기
	primary key
	foreign key
	ex) 학생 테이블의 지교교수번호는 교수테이블의 없는 데이터는 들어갈 수 없다.
	not null
# 테이블의 관계 만들기
	foreign key
# 데이터 등록/수정/삭제
# 테이블 간의 join 구문.




*/

















