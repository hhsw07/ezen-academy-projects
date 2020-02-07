/* 학생 */
CREATE TABLE SCOTT.student1 (
	std_no CHAR(8) NOT NULL, /* 학번 */
	name VARCHAR2(30), /* 이름 */
	grade NUMBER, /* 학년 */
	subject VARCHAR2(50) /* 전공 */
);
COMMENT ON TABLE SCOTT.student1 IS '학생';
COMMENT ON COLUMN SCOTT.student1.std_no IS '학번';
COMMENT ON COLUMN SCOTT.student1.name IS '이름';
COMMENT ON COLUMN SCOTT.student1.grade IS '학년';
COMMENT ON COLUMN SCOTT.student1.subject IS '전공';
CREATE UNIQUE INDEX SCOTT.PK_student
	ON SCOTT.student1 (
		std_no ASC
	);
ALTER TABLE SCOTT.student1
	ADD
		CONSTRAINT PK_student
		PRIMARY KEY (
			std_no
		);