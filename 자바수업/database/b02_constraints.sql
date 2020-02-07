/*
# 데이터 무결성 제약조건의 개념
1. 데이터의 정확성과 일고나성을 보장.
2. 데이터의 정확서을 유지하여 다양한 종류의 업무 규칙을 고려함
	ex)
	1) student테이블에서 학년 데이터는 1,2,3,4 중의 하나만 입력
	2) 모든 학번은 유일하게 처리
	3) student테이블의 지도교수 번호는 professor 테이블의 교수번호 중의 하나와 반드시 일치
3. 데이터 무결성 제약조건의 장점
	1) 테이블 생성시 무결성 제약조건을 정의 가능.
		- 생성 후 제약조건 설정도 가능.
	2) 테이블에 대해 정의, 데이터 딕셔너리에 저장되므로 응용프로그램에서 입력된 모든 데이터에 대해 동일하게 적용
	3) 제약조건을 활성화, 비활성화 할 수 있는 융통성이 있다.
4. 무결성 제약조건의 종류
	1) not null:열이 null을 포함할 수 없음.
	2) unique: 테이블의 모든 행에서 고유한 값을 갖는 열 또는 열조항을 지정해야 한다. 
		ex) 사원번호, 주민번호, 학번... 등은 중복되지 않아야 한다.
	3) primary key: 해당 컬럼 값은 반드시 존재해야하며 유일해야 한다. not null과 unique가 결합된 형태
	4) foreign key: 한 열과 참조된 테이블의 열간에 외래 키 관계를 설정하고 시행한다.
		ex) 사원 테이블의 부서번호는 반드시 부서테이블에 있는 부서번호 이어야 한다.
	5) check: 해당 컬럼에 저장 가능한 데이터 값의 범위나 조건을 지정 처리.
		ex) student테이블의 학년을 1,2,3,4만 데이터로 넣을 수 있다.
5. 설정 형식
	1) 컬럼명 데이터타입 constraint 제약조건명 제약조건
	2) primary key 지정
	ex) create table student(
			stuno number constraint student_stuno_pk primary key,
			stuname varstr2(20); 
		);
*/
	CREATE TABLE student_exp1(
		stuno NUMBER CONSTRAINT student_stuno_pk PRIMARY key
	);
	SELECT * FROM student_exp1;
	INSERT INTO student_exp1 values(1);
--	INSERT INTO student_exp1 values(1); 중복값X
--	INSERT INTO student_exp1 values(null); null값X

--	3) not null 지정
--		constrain 이름 명명 규칙: 테이블_컬럼명_제약약자
	CREATE TABLE student_exp2(
		name varchar2(50) CONSTRAINT student_name_nn NOT NULL
	);
	SELECT * FROM student_exp2;
	INSERT INTO student_exp2 values('안녕맨');
	INSERT INTO student_exp2 values('반가맨');
	INSERT INTO student_exp2 values('반가맨'); -- 중복값O
-- 	INSERT INTO student_exp2 values(null); null값X

-- 4) check
--		컬럼명 데이터유형 constraint 제약명 check(컬럼 in(데이터1, 데이터2))
--		컬럼명 데이터유형 constraint 제약명 check(컬럼 between 데이터1 and 데이터2))
	CREATE TABLE student_exp3(
		gender varchar2(1) CONSTRAINT student_gender_ck
		CHECK(gender IN('F','M'))
	);
	SELECT * FROM student_exp3;
	INSERT INTO student_exp3 values('F');
	INSERT INTO student_exp3 values('F');
	INSERT INTO student_exp3 values('M');
	INSERT INTO student_exp3 values('M');
--	INSERT INTO student_exp3 values('G'); check에 없는 값X

	CREATE TABLE student_exp4(
		point NUMBER CONSTRAINT student_point_ck
		CHECK(point BETWEEN 0 AND 100)
	);
	SELECT * FROM student_exp4;
	INSERT INTO student_exp4 values(80);
	INSERT INTO student_exp4 values(90);
--	INSERT INTO student_exp4 values(105); check에 없는 값X
--	INSERT INTO student_exp4 values(-20); check에 없는 값X

/*
# 제약조건 추가.
1. 컬럼 추가와 제약조건 추가
ALTER TABLE 테이블 add 컬럼명 데이터 타입
alter table 테이블 add constraint 제약조건명 primary key(컬럼명);
*/
	ALTER TABLE student_exp4 ADD stud_no NUMBER;
	DELETE FROM student_exp4;
	ALTER TABLE student_exp4 ADD CONSTRAINT student_exp4_stud_no_pk PRIMARY key(stud_no);
	INSERT INTO STUDENT_EXP4 values(100,1);
	-- 데이터가 없야야 pk 설정이 가능
	DROP TABLE student_exp4;
	DROP TABLE regsubject;
/*
# 외래키 관계 설정
컬럼명 데이터유형 constraint 제약키_fk references 테이블명(컬럼명)
*/
-- ex) 수강테이블은 학생테이블의 번호가 있어야 할당이 되게 처리.
	CREATE TABLE regsubject(
		regno NUMBER PRIMARY KEY,
		stud_no NUMBER CONSTRAINT stud_no_fk references student_exp4(stud_no) 
	);
	SELECT * FROM regsubject;
	INSERT INTO regsubject VALUES (1,1);




-- ex) 
	CREATE TABLE deptartment(
		deptno NUMBER PRIMARY KEY,
		dname varchar2(50)
	);
	INSERT INTO deptartment VALUES (101,'컴퓨터공학과');
	INSERT INTO deptartment VALUES (102,'멀티미디어학과');
	SELECT * FROM DEPTARTMENT;

	CREATE TABLE student_exp5(
		studno NUMBER CONSTRAINT student_exp5_studno_pk PRIMARY key,
		name varchar2(20) CONSTRAINT student_exp5_name_nn NOT null,
		userid varchar2(50),
		grade NUMBER CONSTRAINT student_exp5_grade_ck CHECK(grade BETWEEN 1 AND 4) ,
		idnum NUMBER CONSTRAINT student_exp5_idnum_uk UNIQUE,
		birthdate DATE,
		tel varchar2(50),
		height NUMBER,
		weight NUMBER,
		deptno NUMBER CONSTRAINT student_exp5_deptno_fk REFERENCES deptartment(deptno),
		profno number
	);
	INSERT INTO student_exp5 VALUES (10101,'전인하','jun123',4,'7904021369824',
		to_date('1979/04/02','yyyy/mm/dd'),'051)781-2158',170,72,101,20);
	DROP TABLE student_exp5;
	DELETE FROM student_exp5;
	SELECT * FROM student_exp5;