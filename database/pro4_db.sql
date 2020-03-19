-- 회원
ALTER TABLE p04_member
	DROP CONSTRAINT p04_member_pk; -- 회원 기본키

-- 회원
DROP TABLE p04_member;

-- 회원
CREATE TABLE p04_member (
	mem_id       varchar2(10) NOT NULL, -- 아이디
	mem_no       number       NULL,     -- 회원번호
	mem_pass     varchar2(20) NULL,     -- 비밀번호
	mem_name     varchar2(20) NULL,     -- 이름
	mem_mail     varchar2(30) NULL,     -- 이메일
	mem_nickname varchar2(30) NULL,     -- 닉네임
	mem_birth    DATE         NULL,     -- 생년월일
	mem_phone    varchar2(15) NULL,     -- 휴대폰
	mem_code     char(1)      NULL      -- 등급 (M,H,N)
);

-- 회원 기본키
CREATE UNIQUE INDEX p04_member_pk
	ON p04_member ( -- 회원
		mem_id ASC -- 아이디
	);

-- 회원
ALTER TABLE p04_member
	ADD
		CONSTRAINT p04_member_pk -- 회원 기본키
		PRIMARY KEY (
			mem_id -- 아이디
		);

-- 회원 sequence
CREATE SEQUENCE p04_member_seq
INCREMENT BY 1
START WITH 1;

-- 회원 정보 입력 ex) 등급 (M,H,N)
INSERT INTO p04_member (mem_id, mem_no, mem_pass, mem_name, mem_mail, mem_nickname, mem_birth, mem_phone, mem_code)
VALUES ('himan'||p04_member_seq.nextval, p04_member_seq.nextval, '7777', '홍길동'||p04_member_seq.nextval, 'mail0'||p04_member_seq.nextval||'@gmail.com', '둘리'||p04_member_seq.nextval, to_date('2020-03-19','YYYY-MM-DD'), '010-1234-1001','M');

SELECT * FROM p04_member;
DROP SEQUENCE p04_member_seq;

----------------------------------------------------------------------------------------------------------------------------------------

-- 수업
ALTER TABLE p04_course
	DROP CONSTRAINT FK_p04_member_TO_p04_course; -- 회원 -> 수업

-- 수업
ALTER TABLE p04_course
	DROP CONSTRAINT p04_course_pk; -- 수업 기본키

-- 수업
DROP TABLE p04_course;

-- 수업
CREATE TABLE p04_course (
	course_no        NUMBER         NOT NULL, -- 클래스번호
	mem_id           varchar2(10)   NULL,     -- 호스트
	course_inputdate DATE           NULL,     -- 클래스등록일
	course_title     varchar2(100)  NULL,     -- 클래스명
	course_kind      varchar2(100)  NULL,     -- 클래스종류
	course_detail    varchar2(1000) NULL,     -- 상세설명
	course_curCnt    NUMBER         NULL,     -- 현인원
	course_totCnt    NUMBER         NULL,     -- 최대인원
	course_price     NUMBER         NULL,     -- 가격
	course_img       varchar2(1000) NULL,     -- 클래스이미지
	course_opendate  DATE           NULL,     -- 수강일
	coruse_category  varchar2(100)  NULL      -- 수업분류
);

-- 수업 기본키
CREATE UNIQUE INDEX p04_course_pk
	ON p04_course ( -- 수업
		course_no ASC -- 클래스번호
	);

-- 수업
ALTER TABLE p04_course
	ADD
		CONSTRAINT p04_course_pk -- 수업 기본키
		PRIMARY KEY (
			course_no -- 클래스번호
		);

-- 수업
ALTER TABLE p04_course
	ADD
		CONSTRAINT FK_p04_member_TO_p04_course -- 회원 -> 수업
		FOREIGN KEY (
			mem_id -- 호스트
		)
		REFERENCES p04_member ( -- 회원
			mem_id -- 아이디
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- 수업 sequence	
CREATE SEQUENCE p04_course_seq
INCREMENT BY 1
START WITH 1;
-- 수업 정보 입력
INSERT INTO p04_course VALUES (p04_course_seq.nextval,"홍길동1",to_date('2020-03-19','YYYY-MM-DD'),"비누만들기"||p04_course_seq.nextval,"원데이","재밌어요.",0,10,50000,"ads01_wide.jpg",to_date('2020-03-30','YYYY-MM-DD'),"다양한 취미");

SELECT * FROM p04_member;
DROP SEQUENCE p04_member_seq;

----------------------------------------------------------------------------------------------------------------------------------------
-- 수업신청
ALTER TABLE p04_request
	DROP CONSTRAINT FK_p04_member_TO_p04_request; -- 회원 -> 수업신청

-- 수업신청
ALTER TABLE p04_request
	DROP CONSTRAINT FK_p04_course_TO_p04_request; -- 수업 -> 수업신청

-- 수업신청
ALTER TABLE p04_request
	DROP CONSTRAINT p04_request_pk; -- 수업신청 기본키

-- 수업신청
DROP TABLE p04_request;

-- 수업신청
CREATE TABLE p04_request (
	req_no    NUMBER       NOT NULL, -- 신청번호
	course_no NUMBER       NULL,     -- 클래스번호
	mem_id    varchar2(10) NULL,     -- 아이디
	req_date  DATE         NULL,     -- 신청날짜
	req_code  char(1)      NULL      -- 신청상태
);

-- 수업신청 기본키
CREATE UNIQUE INDEX p04_request_pk
	ON p04_request ( -- 수업신청
		req_no ASC -- 신청번호
	);

-- 수업신청
ALTER TABLE p04_request
	ADD
		CONSTRAINT p04_request_pk -- 수업신청 기본키
		PRIMARY KEY (
			req_no -- 신청번호
		);

-- 수업신청
ALTER TABLE p04_request
	ADD
		CONSTRAINT FK_p04_member_TO_p04_request -- 회원 -> 수업신청
		FOREIGN KEY (
			mem_id -- 아이디
		)
		REFERENCES p04_member ( -- 회원
			mem_id -- 아이디
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- 수업신청
ALTER TABLE p04_request
	ADD
		CONSTRAINT FK_p04_course_TO_p04_request -- 수업 -> 수업신청
		FOREIGN KEY (
			course_no -- 클래스번호
		)
		REFERENCES p04_course ( -- 수업
			course_no -- 클래스번호
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;


-- 수업신청 sequence	
CREATE SEQUENCE p04_request_seq
INCREMENT BY 1
START WITH 1;
-- 수업신청 정보 입력 ex) code (관심목록:F 신청완료:M 신청취소:C)
INSERT INTO p04_request VALUES (p04_request_seq.nextval,1,'himan1',to_date('2020-03-19','YYYY-MM-DD'),'M');

SELECT * FROM p04_request;
DROP SEQUENCE p04_request_seq;


----------------------------------------------------------------------------------------------------------------------------------------
-- 수업후기
ALTER TABLE p04_cReview
	DROP CONSTRAINT FK_p04_request_TO_p04_cReview; -- 수업신청 -> 수업후기

-- 수업후기
ALTER TABLE p04_cReview
	DROP CONSTRAINT p04_cReview_pk; -- 수업후기 기본키

-- 수업후기
DROP TABLE p04_cReview;

-- 수업후기
CREATE TABLE p04_cReview (
	req_no         NUMBER         NOT NULL, -- 신청번호
	cReview_detail varchar2(1000) NULL,     -- 후기내용
	cReview_star   NUMBER         NULL,     -- 평점
	cReview_date   DATE           NULL      -- 등록일
);

-- 수업후기 기본키
CREATE UNIQUE INDEX p04_cReview_pk
	ON p04_cReview ( -- 수업후기
		req_no ASC -- 신청번호
	);

-- 수업후기
ALTER TABLE p04_cReview
	ADD
		CONSTRAINT p04_cReview_pk -- 수업후기 기본키
		PRIMARY KEY (
			req_no -- 신청번호
		);

-- 수업후기
ALTER TABLE p04_cReview
	ADD
		CONSTRAINT FK_p04_request_TO_p04_cReview -- 수업신청 -> 수업후기
		FOREIGN KEY (
			req_no -- 신청번호
		)
		REFERENCES p04_request ( -- 수업신청
			req_no -- 신청번호
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- 수업후기 sequence	
CREATE SEQUENCE p04_cReview_seq
INCREMENT BY 1
START WITH 1;
-- 수업후기 정보 입력 ex) 등급 (M,H,N)
INSERT INTO p04_cReview VALUES (p04_cReview_seq.nextval,"재밌어요",5,to_date('2020-03-19','YYYY-MM-DD'));

SELECT * FROM p04_cReview;
DROP SEQUENCE p04_cReview_seq;

----------------------------------------------------------------------------------------------------------------------------------------
-- 상품
ALTER TABLE p04_store
	DROP CONSTRAINT FK_p04_member_TO_p04_store; -- 회원 -> 상품

-- 상품
ALTER TABLE p04_store
	DROP CONSTRAINT p04_store_pk; -- 상품 기본키

-- 상품
DROP TABLE p04_store;

-- 상품
CREATE TABLE p04_store (
	store_no       NUMBER         NOT NULL, -- 상품번호
	mem_id         varchar2(10)   NULL,     -- 호스트
	store_title    varchar2(100)  NULL,     -- 상품명
	store_code     char(1)        NULL,     -- 승인상태
	store_price    NUMBER         NULL,     -- 가격
	store_totCnt   NUMBER         NULL,     -- 총갯수
	store_detail   varchar2(1000) NULL,     -- 상품설명
	strore_date    DATE           NULL,     -- 신청일
	store_img      varchar2(1000) NULL,     -- 상품이미지
	store_category varchar2(100)  NULL      -- 상품분류
);

-- 상품 기본키
CREATE UNIQUE INDEX p04_store_pk
	ON p04_store ( -- 상품
		store_no ASC -- 상품번호
	);

-- 상품
ALTER TABLE p04_store
	ADD
		CONSTRAINT p04_store_pk -- 상품 기본키
		PRIMARY KEY (
			store_no -- 상품번호
		);

-- 상품
ALTER TABLE p04_store
	ADD
		CONSTRAINT FK_p04_member_TO_p04_store -- 회원 -> 상품
		FOREIGN KEY (
			mem_id -- 호스트
		)
		REFERENCES p04_member ( -- 회원
			mem_id -- 아이디
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- 상품 sequence	
CREATE SEQUENCE p04_store_seq
INCREMENT BY 1
START WITH 1;
-- 상품 정보 입력  ex) code승인상태 Y/N
INSERT INTO p04_store VALUES (p04_store_seq.nextval,'himan1','라탄으로 이불 톡톡','Y',28000,30,'좋은 제품',to_date('2020-03-19','YYYY-MM-DD'),'ads01_wide.jpg','다양한 취미');

SELECT * FROM p04_store;
DROP TABLE p04_store;
DROP SEQUENCE p04_store_seq;


----------------------------------------------------------------------------------------------------------------------------------------
-- 주문
ALTER TABLE p04_order
	DROP CONSTRAINT FK_p04_member_TO_p04_order; -- 회원 -> 주문

-- 주문
ALTER TABLE p04_order
	DROP CONSTRAINT FK_p04_store_TO_p04_order; -- 상품 -> 주문

-- 주문
ALTER TABLE p04_order
	DROP CONSTRAINT p04_order_pk; -- 주문 기본키

-- 주문
DROP TABLE p04_order;

-- 주문
CREATE TABLE p04_order (
	order_no          NUMBER        NOT NULL, -- 주문번호
	mem_id            varchar2(10)  NULL,     -- 아이디
	store_no          NUMBER        NULL,     -- 상품번호
	order_date        DATE          NULL,     -- 구매날짜
	order_code        varchar2(100) NULL,     -- 주문상태
	order_cnt         NUMBER        NULL,     -- 구매갯수
	order_delicompany VARCHAR2(50)  NULL,     -- 택배회사
	order_delicode    VARCHAR2(20)  NULL      -- 운송장번호
);

-- 주문 기본키
CREATE UNIQUE INDEX p04_order_pk
	ON p04_order ( -- 주문
		order_no ASC -- 주문번호
	);

-- 주문
ALTER TABLE p04_order
	ADD
		CONSTRAINT p04_order_pk -- 주문 기본키
		PRIMARY KEY (
			order_no -- 주문번호
		);

-- 주문
ALTER TABLE p04_order
	ADD
		CONSTRAINT FK_p04_member_TO_p04_order -- 회원 -> 주문
		FOREIGN KEY (
			mem_id -- 아이디
		)
		REFERENCES p04_member ( -- 회원
			mem_id -- 아이디
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- 주문
ALTER TABLE p04_order
	ADD
		CONSTRAINT FK_p04_store_TO_p04_order -- 상품 -> 주문
		FOREIGN KEY (
			store_no -- 상품번호
		)
		REFERENCES p04_store ( -- 상품
			store_no -- 상품번호
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- 주문 sequence	
CREATE SEQUENCE p04_order_seq
INCREMENT BY 1
START WITH 1;
-- 주문 정보 입력 ex) 주문상태 (장바구니, 배송중, 배송완료, 배송준비중, 주문완료)
INSERT INTO p04_order VALUES (p04_order_seq.nextval,'himan1',1,to_date('2020-03-19','YYYY-MM-DD'),'배송완료',1,'한진택배','617600422270');

SELECT * FROM p04_order;
DROP TABLE p04_order;
DROP SEQUENCE p04_order_seq;

----------------------------------------------------------------------------------------------------------------------------------------
-- 상품후기
ALTER TABLE p04_pReview
	DROP CONSTRAINT FK_p04_order_TO_p04_pReview; -- 주문 -> 상품후기

-- 상품후기
ALTER TABLE p04_pReview
	DROP CONSTRAINT p04_pReview_pk; -- 상품후기 기본키

-- 상품후기
DROP TABLE p04_pReview;

-- 상품후기
CREATE TABLE p04_pReview (
	order_no       NUMBER         NOT NULL, -- 주문번호
	pReview_detail varchar2(1000) NULL,     -- 후기내용
	pReview_star   NUMBER         NULL,     -- 평점
	pReview_date   DATE           NULL      -- 등록일
);

-- 상품후기 기본키
CREATE UNIQUE INDEX p04_pReview_pk
	ON p04_pReview ( -- 상품후기
		order_no ASC -- 주문번호
	);

-- 상품후기
ALTER TABLE p04_pReview
	ADD
		CONSTRAINT p04_pReview_pk -- 상품후기 기본키
		PRIMARY KEY (
			order_no -- 주문번호
		);

-- 상품후기
ALTER TABLE p04_pReview
	ADD
		CONSTRAINT FK_p04_order_TO_p04_pReview -- 주문 -> 상품후기
		FOREIGN KEY (
			order_no -- 주문번호
		)
		REFERENCES p04_order ( -- 주문
			order_no -- 주문번호
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;
	
-- 상품후기 sequence	
CREATE SEQUENCE p04_pReview_seq
INCREMENT BY 1
START WITH 1;
-- 상품후기 정보 입력 
INSERT INTO p04_pReview VALUES (p04_pReview_seq.nextval,'좋은 제품입니다.',5,to_date('2020-03-19','YYYY-MM-DD'));

SELECT * FROM p04_pReview;
DROP TABLE p04_pReview;
DROP SEQUENCE p04_pReview_seq;
	
----------------------------------------------------------------------------------------------------------------------------------------
-- 배송지
ALTER TABLE p04_addr
	DROP CONSTRAINT FK_p04_member_TO_p04_addr; -- 회원 -> 배송지

-- 배송지
ALTER TABLE p04_addr
	DROP CONSTRAINT p04_addr_pk; -- 배송지 기본키

-- 배송지
DROP TABLE p04_addr;

-- 배송지
CREATE TABLE p04_addr (
	addr_no       NUMBER        NOT NULL, -- 배송지번호
	mem_id        varchar2(10)  NULL,     -- 아이디
	addr_title    varchar2(100) NULL,     -- 배송지명
	addr_name     varchar2(100) NULL,     -- 수령인
	addr_phone    varchar2(15)  NULL,     -- 연락처
	addr_phone2   varchar2(15)  NULL,     -- 추가연락처
	addr_mailAddr VARCHAR2(10)  NULL,     -- 우편번호
	addr_address  varchar2(100) NULL,     -- 주소
	addr_address2 varchar2(100) NULL      -- 상세주소
);

-- 배송지 기본키
CREATE UNIQUE INDEX p04_addr_pk
	ON p04_addr ( -- 배송지
		addr_no ASC -- 배송지번호
	);

-- 배송지
ALTER TABLE p04_addr
	ADD
		CONSTRAINT p04_addr_pk -- 배송지 기본키
		PRIMARY KEY (
			addr_no -- 배송지번호
		);

-- 배송지
ALTER TABLE p04_addr
	ADD
		CONSTRAINT FK_p04_member_TO_p04_addr -- 회원 -> 배송지
		FOREIGN KEY (
			mem_id -- 아이디
		)
		REFERENCES p04_member ( -- 회원
			mem_id -- 아이디
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- 배송지 sequence	
CREATE SEQUENCE p04_addr_seq
INCREMENT BY 1
START WITH 1;
-- 배송지 정보 입력 
INSERT INTO p04_addr VALUES (p04_addr_seq.nextval,'himan1','우리집','김길동','010-0001-1001','','01525','서울시 종로구','은마아파트 101동 101호');

SELECT * FROM p04_addr;
DROP TABLE p04_addr;
DROP SEQUENCE p04_addr_seq;

----------------------------------------------------------------------------------------------------------------------------------------
-- 마일리지
ALTER TABLE p04_point
	DROP CONSTRAINT FK_p04_member_TO_p04_point; -- 회원 -> 마일리지

-- 마일리지
ALTER TABLE p04_point
	DROP CONSTRAINT p04_point_pk; -- 마일리지 기본키2

-- 마일리지
DROP TABLE p04_point;

-- 마일리지
CREATE TABLE p04_point (
	point_no      NUMBER       NOT NULL, -- 포인트코드
	mem_id        varchar2(10) NULL,     -- 아이디
	point_date    DATE         NULL,     -- 적립/사용날짜
	point_detail  VARCHAR(200) NULL,     -- 적립/사용내역
	point_mileage NUMBER       NULL      -- 마일리지
);

-- 마일리지 기본키2
CREATE UNIQUE INDEX p04_point_pk
	ON p04_point ( -- 마일리지
		point_no ASC -- 포인트코드
	);

-- 마일리지
ALTER TABLE p04_point
	ADD
		CONSTRAINT p04_point_pk -- 마일리지 기본키2
		PRIMARY KEY (
			point_no -- 포인트코드
		);

-- 마일리지
ALTER TABLE p04_point
	ADD
		CONSTRAINT FK_p04_member_TO_p04_point -- 회원 -> 마일리지
		FOREIGN KEY (
			mem_id -- 아이디
		)
		REFERENCES p04_member ( -- 회원
			mem_id -- 아이디
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- 마일리지 sequence	
CREATE SEQUENCE p04_point_seq
INCREMENT BY 1
START WITH 1;
-- 마일리지 정보 입력 ex) 등급 (M,H,N)
INSERT INTO p04_point VALUES (p04_point_seq.nextval,'himan1',to_date('2020-03-19','YYYY-MM-DD'),'로그인 포인트',10);

SELECT * FROM p04_point;
DROP TABLE p04_point;
DROP SEQUENCE p04_point_seq;

----------------------------------------------------------------------------------------------------------------------------------------
	-- 문의
ALTER TABLE p04_inquiry
	DROP CONSTRAINT FK_p04_member_TO_p04_inquiry; -- 회원 -> 문의

-- 문의
ALTER TABLE p04_inquiry
	DROP CONSTRAINT p04_inquiry_pk; -- 문의 기본키

-- 문의
DROP TABLE p04_inquiry;

-- 문의
CREATE TABLE p04_inquiry (
	inquiry_no     NUMBER         NOT NULL, -- 문의번호
	mem_id         varchar2(10)   NULL,     -- 아이디
	inquiry_detail varchar2(1000) NULL,     -- 문의내용
	inquiry_date   DATE           NULL,     -- 문의날짜
	inquiry_re     varchar2(1000) NULL      -- 답변내용
);

-- 문의 기본키
CREATE UNIQUE INDEX p04_inquiry_pk
	ON p04_inquiry ( -- 문의
		inquiry_no ASC -- 문의번호
	);

-- 문의
ALTER TABLE p04_inquiry
	ADD
		CONSTRAINT p04_inquiry_pk -- 문의 기본키
		PRIMARY KEY (
			inquiry_no -- 문의번호
		);

-- 문의
ALTER TABLE p04_inquiry
	ADD
		CONSTRAINT FK_p04_member_TO_p04_inquiry -- 회원 -> 문의
		FOREIGN KEY (
			mem_id -- 아이디
		)
		REFERENCES p04_member ( -- 회원
			mem_id -- 아이디
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;
	
-- 문의 sequence	
CREATE SEQUENCE p04_inquiry_seq
INCREMENT BY 1
START WITH 1;
-- 문의 정보 입력
INSERT INTO p04_inquiry VALUES (p04_inquiry_seq.nextval,'himan1','문의합니다.'||p04_inquiry_seq.nextval,to_date('2020-03-19','YYYY-MM-DD'),'답변이요.'||p04_inquiry_seq.nextval);

SELECT * FROM p04_inquiry;
DROP TABLE p04_inquiry;
DROP SEQUENCE p04_inquiry_seq;
	
----------------------------------------------------------------------------------------------------------------------------------------
-- 공지사항
ALTER TABLE p04_notice
	DROP CONSTRAINT p04_notice_pk; -- 공지사항 기본키

-- 공지사항
DROP TABLE p04_notice;

-- 공지사항
CREATE TABLE p04_notice (
	noti_no     NUMBER         NOT NULL, -- 공지사항번호
	noti_title  varchar2(100)  NULL,     -- 공지제목
	noti_detail varchar2(4000) NULL,     -- 공지내용
	noti_date   DATE           NULL,     -- 공지등록일
	noti_code   char(1)        NULL      -- 중요여부
);

-- 공지사항 기본키
CREATE UNIQUE INDEX p04_notice_pk
	ON p04_notice ( -- 공지사항
		noti_no ASC -- 공지사항번호
	);

-- 공지사항
ALTER TABLE p04_notice
	ADD
		CONSTRAINT p04_notice_pk -- 공지사항 기본키
		PRIMARY KEY (
			noti_no -- 공지사항번호
		);
	
-- 공지사항 sequence	
CREATE SEQUENCE p04_notice_seq
INCREMENT BY 1
START WITH 1;
-- 공지사항 정보 입력 ex) 중요여부 (Y,N)
insert into p04_notice values (p04_notice_seq.nextval, '텀블벅 후원자님, 이용권은 이렇게 사용해주세요!', '안녕하세요.', to_date('2017-05-04','YYYY-MM-DD'), 'N');


SELECT * FROM p04_notice;
DROP TABLE p04_notice;
DROP SEQUENCE p04_notice_seq;
