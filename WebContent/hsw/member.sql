CREATE TABLE member (
	"mem_id"       varchar2(10) NOT NULL, -- 아이디
	"mem_pass"     varchar2(20) NULL,     -- 비밀번호
	"mem_name"     varchar2(20) NULL,     -- 이름
	"mem_mail"     varchar2(30) NULL,     -- 이메일
	"mem_nickname" varchar2(30) NULL,     -- 닉네임
	"mem_birth"    DATE         NULL,     -- 생년월일
	"mem_phone"    varchar2(15) NULL,     -- 휴대폰
	"mem_code"     char(1)      NULL,     -- 등급
	"mem_mileage"  NUMBER       NULL      -- 마일리지
);

CREATE SEQUENCE member_seq
	INCREMENT BY 1
	START WITH 1;

INSERT INTO MEMBER
VALUES ()