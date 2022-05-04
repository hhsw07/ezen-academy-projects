/* 회원(보호자) */
CREATE TABLE PRO03_MEMBER (
	mem_id VARCHAR2(20) NOT NULL, /* 아이디 */
	mem_kind NUMBER, /* 회원분류 */
	mem_pass VARCHAR2(20), /* 비밀번호 */
	mem_name VARCHAR2(15), /* 이름 */
	mem_phone VARCHAR2(15), /* 핸드폰번호 */
	mem_email VARCHAR2(30), /* 이메일 */
	mem_addressnum CHAR(5), /* 우편번호 */
	mem_address VARCHAR2(200), /* 주소 */
	mem_profileshot VARCHAR2(100) /* 프로필사진 */
);

INSERT INTO PRO03_MEMBER VALUES('adminid', 1, 'adminpass', '관리자', '', 'admin@hellopet.com','','','');

INSERT INTO PRO03_MEMBER VALUES('mk0601', 2, 'a123456789', '최민기', '010-1234-5678', 'mk0601@hellopet.com', 21066, '인천광역시 계양구 계산새로 76 인천계양우체국', null);
INSERT INTO PRO03_MEMBER VALUES('gudwns19', 2, '1q2w3e', '김형준', 01025321279, 'skxowns19@naver.com',NULL,'경기도 남양주시',NULL);
INSERT INTO PRO03_MEMBER VALUES('hsw_puppy',1,'puppylove','한송우','010-6676-0729','kaloo7@naver.com','','','');

SELECT * FROM PRO03_MEMBER;

SELECT MEM_ID ID, MEM_NAME 이름, MEM_PHONE 휴대폰번호, MEM_EMAIL 이메일, MEM_ADDRESS 주소
FROM PRO03_MEMBER;

SELECT MEM_ID, MEM_PASS, MEM_NAME FROM PRO03_MEMBER
WHERE MEM_ID='mk0601' AND mem_phone='010-1234-5678';

UPDATE PRO03_MEMBER
SET MEM_PASS = 'abcd1234'
WHERE MEM_ID='mk0601' AND mem_phone='010-1234-5678';

---------------------------------------------------------------------------------------------------------------------------------
/* 공지사항 */
CREATE TABLE pro03_notice (
	not_num NUMBER NOT NULL, /* 글번호 */
	not_title VARCHAR2(300), /* 제목 */
	not_detail VARCHAR2(900), /* 내용 */
	not_date DATE, /* 작성일 */
	not_priority NUMBER /* 우선도 */
);
CREATE UNIQUE INDEX PK_pro03_notice
	ON pro03_notice (
		not_num ASC
	);

ALTER TABLE pro03_notice
	ADD
		CONSTRAINT PK_pro03_notice
		PRIMARY KEY (
			not_num
		);
		
SELECT not_num 공지번호, not_title 제목, not_detail 내용,
	not_date 작성일, not_priority 중요 FROM PRO03_NOTICE
ORDER BY not_num ASC;


INSERT INTO PRO03_NOTICE
VALUES(10001, '펫시터가 하는 주요 업무', 
'펫시터들은 반려동물에 대해 지속적인 관심과 돌봄을 제공하여 아이들이 맡겨진 동안 안전하게 지낼 수 있도록 노력합니다.
야외 산책, 실내놀이 뿐만 아니라 견주님들과의 원할한 소통을 원칙으로, 아이들이 안전하게 잘 지내는 모습을 보여줍니다.
추가서비스가 가능한 펫시터들에 한해서 픽업, 목욕, 발톱 관리 등의 서비스도 함게 제공합니다.
많은 이용 부탁드립니다.',
TO_DATE('20/01/10','YY/MM/DD'), 2);

INSERT INTO PRO03_NOTICE
VALUES(10002, '설 연휴를 맞이하여 비용에 할증이 발생할 수 있습니다.', 
'설 연휴 기간(01/24~01/27)동안 할증 비용이 발생할 수 있습니다.
각 펫시터님들마다 0~10,000원 사이의 할증 비용이 있을 수 있으니 날짜와 할증 비용을 꼭 체크하세요. 모두 새해 복 많이 받으시길 바랍니다~ 행복하세요.',
TO_DATE('20/01/22','YY/MM/DD'), 2);

INSERT INTO PRO03_NOTICE
VALUES(10003, '수입 정산 방법입니다.', 
'수입은 매주 수요일에 회사 수수료 및 원천세 제외한 금액을 펫시터님게 계좌로 정산해드리고 있습니다.감사합니다.',
TO_DATE('20/02/05','YY/MM/DD'), 1);

INSERT INTO PRO03_NOTICE
VALUES(10004, '펫시터 지원 자격을 알려드려요.', 
'*서울, 경기, 인천 수도권에 거주해요.
*강아지와 5년 이상 함께 했어요.
*모든일에 있어서 책임감이 강해요.
*고객에게 친절하게 대응할 수 있어요.
*시간 약속은 철저하게 지켜요.
*활동 가능일 수가 한달 20일 이상인 경우

많은 지원 바랍니다.',
TO_DATE('20/02/11','YY/MM/DD'), 1);

------------------------------------------------------------------------------------------------------------------------

/* 반려동물 프로그램 */
CREATE TABLE pro03_program (
	pro_num NUMBER NOT NULL, /* 프로그램번호 */
	pro_title VARCHAR2(300), /* 제목 */
	pro_detail VARCHAR2(900), /* 내용 */
	pro_date DATE, /* 작성일 */
	pro_max NUMBER, /* 신청가능인원 */
	pro_current NUMBER, /* 현재신청인원 */
	pro_period DATE /* 신청마감일 */
);

CREATE UNIQUE INDEX PK_pro03_program
	ON pro03_program (
		pro_num ASC
	);

ALTER TABLE pro03_program
	ADD
		CONSTRAINT PK_pro03_program
		PRIMARY KEY (
			pro_num
		);
	
SELECT * FROM PRO03_PROGRAM;
ALTER TABLE PRO03_PROGRAM ADD PRO_IMG VARCHAR2(100);

INSERT INTO PRO03_PROGRAM
VALUES(20001,'반려동물 집밥 만들기', '', SYSDATE, 20, 0, SYSDATE+10,'이미지경로/반려동물집밥.jpg');


--------------------------------------------------------------------------------------------------
