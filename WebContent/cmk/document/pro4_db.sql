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
INSERT INTO p04_member VALUES ('admin', p04_member_seq.nextval, '7777', '홍길동'||p04_member_seq.nextval, 'mail0'||p04_member_seq.nextval||'@gmail.com', '둘리'||p04_member_seq.nextval, to_date('2020-03-19','YYYY-MM-DD'), '010-1234-1001','M');
INSERT INTO p04_member VALUES ('ezen1', p04_member_seq.nextval, '7777', '홍길동'||p04_member_seq.nextval, 'mail0'||p04_member_seq.nextval||'@gmail.com', '둘리'||p04_member_seq.nextval, to_date('2020-03-19','YYYY-MM-DD'), '010-1234-1001','H');
INSERT INTO p04_member VALUES ('ezen2', p04_member_seq.nextval, '7777', '홍길동'||p04_member_seq.nextval, 'mail0'||p04_member_seq.nextval||'@gmail.com', '둘리'||p04_member_seq.nextval, to_date('2020-03-19','YYYY-MM-DD'), '010-1234-1001','H');
INSERT INTO p04_member VALUES ('ezen3', p04_member_seq.nextval, '7777', '홍길동'||p04_member_seq.nextval, 'mail0'||p04_member_seq.nextval||'@gmail.com', '둘리'||p04_member_seq.nextval, to_date('2020-03-19','YYYY-MM-DD'), '010-1234-1001','H');
INSERT INTO p04_member VALUES ('ezen4', p04_member_seq.nextval, '7777', '홍길동'||p04_member_seq.nextval, 'mail0'||p04_member_seq.nextval||'@gmail.com', '둘리'||p04_member_seq.nextval, to_date('2020-03-19','YYYY-MM-DD'), '010-1234-1001','H');
INSERT INTO p04_member VALUES ('ezen5', p04_member_seq.nextval, '7777', '홍길동'||p04_member_seq.nextval, 'mail0'||p04_member_seq.nextval||'@gmail.com', '둘리'||p04_member_seq.nextval, to_date('2020-03-19','YYYY-MM-DD'), '010-1234-1001','H');
INSERT INTO p04_member VALUES ('himan1', p04_member_seq.nextval, '7777', '홍길동'||p04_member_seq.nextval, 'mail0'||p04_member_seq.nextval||'@gmail.com', '둘리'||p04_member_seq.nextval, to_date('2020-03-19','YYYY-MM-DD'), '010-1234-1001','N');
INSERT INTO p04_member VALUES ('himan2', p04_member_seq.nextval, '7777', '홍길동'||p04_member_seq.nextval, 'mail0'||p04_member_seq.nextval||'@gmail.com', '둘리'||p04_member_seq.nextval, to_date('2020-03-19','YYYY-MM-DD'), '010-1234-1001','N');
INSERT INTO p04_member VALUES ('himan3', p04_member_seq.nextval, '7777', '홍길동'||p04_member_seq.nextval, 'mail0'||p04_member_seq.nextval||'@gmail.com', '둘리'||p04_member_seq.nextval, to_date('2020-03-19','YYYY-MM-DD'), '010-1234-1001','N');
INSERT INTO p04_member VALUES ('himan4', p04_member_seq.nextval, '7777', '홍길동'||p04_member_seq.nextval, 'mail0'||p04_member_seq.nextval||'@gmail.com', '둘리'||p04_member_seq.nextval, to_date('2020-03-19','YYYY-MM-DD'), '010-1234-1001','N');
INSERT INTO p04_member VALUES ('himan5', p04_member_seq.nextval, '7777', '홍길동'||p04_member_seq.nextval, 'mail0'||p04_member_seq.nextval||'@gmail.com', '둘리'||p04_member_seq.nextval, to_date('2020-03-19','YYYY-MM-DD'), '010-1234-1001','N');
INSERT INTO p04_member VALUES ('himan6', p04_member_seq.nextval, '7777', '홍길동'||p04_member_seq.nextval, 'mail0'||p04_member_seq.nextval||'@gmail.com', '둘리'||p04_member_seq.nextval, to_date('2020-03-19','YYYY-MM-DD'), '010-1234-1001','N');

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
	mem_id           varchar2(30)   NULL,     -- 호스트
	course_inputdate DATE           NULL,     -- 클래스등록일
	course_title     varchar2(100)  NULL,     -- 클래스명
	course_detail    varchar2(1000) NULL,     -- 상세설명
	course_img       varchar2(1000) NULL,     -- 클래스이미지
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
		);
-- 수업 sequence	
CREATE SEQUENCE p04_course_seq
INCREMENT BY 1
START WITH 1;

-- 수업 정보 입력
INSERT INTO p04_course VALUES (p04_course_seq.nextval,'ezen1',to_date('2020-03-19','YYYY-MM-DD'),'비누만들기'||p04_course_seq.nextval,'fradetail1.jpg','ads01_wide.jpg','다양한 취미');
INSERT INTO p04_course VALUES (p04_course_seq.nextval,'ezen1',to_date('2020-03-19','YYYY-MM-DD'),'비누만들기'||p04_course_seq.nextval,'fradetail1.jpg','ads01_wide.jpg','다양한 취미');
INSERT INTO p04_course VALUES (p04_course_seq.nextval,'ezen2',to_date('2020-03-19','YYYY-MM-DD'),'비누만들기'||p04_course_seq.nextval,'fradetail1.jpg','ads01_wide.jpg','다양한 취미');
INSERT INTO p04_course VALUES (p04_course_seq.nextval,'ezen3',to_date('2020-03-19','YYYY-MM-DD'),'비누만들기'||p04_course_seq.nextval,'fradetail1.jpg','ads01_wide.jpg','다양한 취미');
INSERT INTO p04_course VALUES (p04_course_seq.nextval,'ezen4',to_date('2020-03-19','YYYY-MM-DD'),'비누만들기'||p04_course_seq.nextval,'fradetail1.jpg','ads01_wide.jpg','다양한 취미');
INSERT INTO p04_course VALUES (p04_course_seq.nextval,'ezen4',to_date('2020-03-19','YYYY-MM-DD'),'비누만들기'||p04_course_seq.nextval,'fradetail1.jpg','ads01_wide.jpg','다양한 취미');
INSERT INTO p04_course VALUES (p04_course_seq.nextval,'ezen5',to_date('2020-03-19','YYYY-MM-DD'),'비누만들기'||p04_course_seq.nextval,'fradetail1.jpg','ads01_wide.jpg','다양한 취미');
INSERT INTO p04_course VALUES (p04_course_seq.nextval,'ezen2',to_date('2020-03-19','YYYY-MM-DD'),'비누만들기'||p04_course_seq.nextval,'fradetail1.jpg','ads01_wide.jpg','다양한 취미');


SELECT * FROM p04_course;
DROP SEQUENCE p04_course_seq;
---------------------------------------------------------------------------------------
-- 수업종류
ALTER TABLE p04_ckind
	DROP CONSTRAINT FK_p04_course_TO_p04_ckind; -- 수업 -> 수업종류

-- 수업종류
ALTER TABLE p04_ckind
	DROP CONSTRAINT p04_ckind_pk; -- 수업종류 기본키

-- 수업종류
DROP TABLE p04_ckind;

-- 수업종류
CREATE TABLE p04_ckind (
	ckind_no        NUMBER 				NOT NULL, -- 수업종류코드
	course_no       NUMBER             NULL,     -- 클래스번호
	course_kind     varchar2(100)      NULL,     -- 클래스종류
	course_opendate DATE               NULL,     -- 수강일
	course_price    NUMBER             NULL,     -- 가격
	course_totCnt   NUMBER             NULL,     -- 최대인원
	course_curCnt   NUMBER             NULL      -- 현인원
);

-- 수업종류 기본키
CREATE UNIQUE INDEX p04_ckind_pk
	ON p04_ckind ( -- 수업종류
		ckind_no ASC -- 수업종류코드
	);

-- 수업종류
ALTER TABLE p04_ckind
	ADD
		CONSTRAINT p04_ckind_pk -- 수업종류 기본키
		PRIMARY KEY (
			ckind_no -- 수업종류코드
		);

-- 수업종류
ALTER TABLE p04_ckind
	ADD
		CONSTRAINT FK_p04_course_TO_p04_ckind -- 수업 -> 수업종류
		FOREIGN KEY (
			course_no -- 클래스번호
		)
		REFERENCES p04_course ( -- 수업
			course_no -- 클래스번호
		);
-- 수업 sequence	
CREATE SEQUENCE p04_ckind_seq
INCREMENT BY 1
START WITH 1;

-- 수업 정보 입력
-- 수업종류코드 | 클래스번호 | 클래스종류 | 수강일 | 가격 | 최대인원  | 현인원
INSERT INTO p04_ckind VALUES (p04_ckind_seq.nextval,1,'원데이',to_date('2020-03-19','YYYY-MM-DD'),20000,10,0);
INSERT INTO p04_ckind VALUES (p04_ckind_seq.nextval,1,'원데이',to_date('2020-03-26','YYYY-MM-DD'),20000,10,0);
INSERT INTO p04_ckind VALUES (p04_ckind_seq.nextval,1,'정규',NULL,200000,10,0);
INSERT INTO p04_ckind VALUES (p04_ckind_seq.nextval,2,'정규',NULL,150000,5,0);
INSERT INTO p04_ckind VALUES (p04_ckind_seq.nextval,5,'원데이',to_date('2020-03-19','YYYY-MM-DD'),20000,10,0);
INSERT INTO p04_ckind VALUES (p04_ckind_seq.nextval,4,'원데이',to_date('2020-03-26','YYYY-MM-DD'),20000,10,0);
INSERT INTO p04_ckind VALUES (p04_ckind_seq.nextval,5,'정규',NULL,200000,10,0);
INSERT INTO p04_ckind VALUES (p04_ckind_seq.nextval,7,'정규',NULL,150000,5,0);

SELECT * FROM p04_ckind;
DROP SEQUENCE p04_ckind_seq;
----------------------------------------------------------------------------------------------------------------------------------------
-- 수업신청
ALTER TABLE p04_request
	DROP CONSTRAINT FK_p04_member_TO_p04_request; -- 회원 -> 수업신청

-- 수업신청
ALTER TABLE p04_request
	DROP CONSTRAINT FK_p04_ckind_TO_p04_request; -- 수업종류 -> 수업신청

-- 수업신청
ALTER TABLE p04_request
	DROP CONSTRAINT p04_request_pk; -- 수업신청 기본키

-- 수업신청
DROP TABLE p04_request;

-- 수업신청
CREATE TABLE p04_request (
	req_no   NUMBER       NOT NULL, -- 신청번호
	ckind_no number       NULL,     -- 수업종류코드
	mem_id   varchar2(30) NULL,     -- 아이디
	req_date DATE         NULL,     -- 신청날짜
	req_code varchar2(30) NULL      -- 신청상태
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
		);

-- 수업신청
ALTER TABLE p04_request
	ADD
		CONSTRAINT FK_p04_ckind_TO_p04_request -- 수업종류 -> 수업신청
		FOREIGN KEY (
			ckind_no -- 수업종류코드
		)
		REFERENCES p04_ckind ( -- 수업종류
			ckind_no -- 수업종류코드
		);

-- 수업신청 sequence	
CREATE SEQUENCE p04_request_seq
INCREMENT BY 1
START WITH 1;
-- 수업신청 정보 입력
-- 신청번호 | 수업종류코드 | 아이디 | 신청날짜 | 신청상태
INSERT INTO p04_request VALUES (p04_request_seq.nextval,1,'himan1',to_date('2020-03-19','YYYY-MM-DD'),'관심목록');
INSERT INTO p04_request VALUES (p04_request_seq.nextval,1,'himan2',to_date('2020-03-19','YYYY-MM-DD'),'관심목록');
INSERT INTO p04_request VALUES (p04_request_seq.nextval,3,'himan5',to_date('2020-03-19','YYYY-MM-DD'),'신청완료');
INSERT INTO p04_request VALUES (p04_request_seq.nextval,6,'himan1',to_date('2020-03-19','YYYY-MM-DD'),'신청완료');
INSERT INTO p04_request VALUES (p04_request_seq.nextval,5,'himan6',to_date('2020-03-19','YYYY-MM-DD'),'신청취소');
INSERT INTO p04_request VALUES (p04_request_seq.nextval,4,'himan3',to_date('2020-03-19','YYYY-MM-DD'),'신청취소');

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
		);

-- 수업후기 정보 입력
INSERT INTO p04_cReview VALUES (3,'재밌어요',5,to_date('2020-03-19','YYYY-MM-DD'));
INSERT INTO p04_cReview VALUES (4,'재미없어요',1,to_date('2020-03-19','YYYY-MM-DD'));

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
	mem_id         varchar2(30)   NULL,     -- 호스트
	store_title    varchar2(100)  NULL,     -- 상품명
	store_code     varchar2(100)  NULL,     -- 승인상태
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
		);
-- 상품 sequence	
CREATE SEQUENCE p04_store_seq
INCREMENT BY 1
START WITH 1;
-- 상품 정보 입력  ex) code승인상태 Y/N
INSERT INTO p04_store VALUES (p04_store_seq.nextval,'ezen1','라탄으로 이불 톡톡','승인',28000,30,'ads01_wide.jpg',to_date('2020-03-19','YYYY-MM-DD'),'ads01_wide.jpg','다양한 취미');
INSERT INTO p04_store VALUES (p04_store_seq.nextval,'ezen2','라탄으로 이불 톡톡','승인',28000,30,'ads01_wide.jpg',to_date('2020-03-19','YYYY-MM-DD'),'ads01_wide.jpg','다양한 취미');
INSERT INTO p04_store VALUES (p04_store_seq.nextval,'ezen3','라탄으로 이불 톡톡','미승인',28000,30,'ads01_wide.jpg',to_date('2020-03-19','YYYY-MM-DD'),'ads01_wide.jpg','다양한 취미');
INSERT INTO p04_store VALUES (p04_store_seq.nextval,'ezen4','라탄으로 이불 톡톡','미승인',28000,30,'ads01_wide.jpg',to_date('2020-03-19','YYYY-MM-DD'),'ads01_wide.jpg','다양한 취미');
INSERT INTO p04_store VALUES (p04_store_seq.nextval,'ezen5','라탄으로 이불 톡톡','승인',28000,30,'ads01_wide.jpg',to_date('2020-03-19','YYYY-MM-DD'),'ads01_wide.jpg','다양한 취미');

SELECT * FROM p04_store;
DROP TABLE p04_store;
DROP SEQUENCE p04_store_seq;


----------------------------------------------------------------------------------------------------------------------------------------
-- 주문
ALTER TABLE p04_order
	DROP CONSTRAINT FK_p04_store_TO_p04_order; -- 상품 -> 주문

-- 주문
ALTER TABLE p04_order
	DROP CONSTRAINT FK_p04_addr_TO_p04_order; -- 배송지 -> 주문

-- 주문
ALTER TABLE p04_order
	DROP CONSTRAINT p04_order_pk; -- 주문 기본키

-- 주문
DROP TABLE p04_order;

-- 주문
CREATE TABLE p04_order (
	order_no          NUMBER        NOT NULL, -- 주문번호
	addr_no           NUMBER        NULL,     -- 배송지번호
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
		CONSTRAINT FK_p04_store_TO_p04_order -- 상품 -> 주문
		FOREIGN KEY (
			store_no -- 상품번호
		)
		REFERENCES p04_store ( -- 상품
			store_no -- 상품번호
		);

-- 주문
ALTER TABLE p04_order
	ADD
		CONSTRAINT FK_p04_addr_TO_p04_order -- 배송지 -> 주문
		FOREIGN KEY (
			addr_no -- 배송지번호
		)
		REFERENCES p04_addr ( -- 배송지
			addr_no -- 배송지번호
		);

-- 주문 sequence	
CREATE SEQUENCE p04_order_seq
INCREMENT BY 1
START WITH 1;

order_no          NUMBER        NOT NULL, -- 주문번호
	addr_no           NUMBER        NULL,     -- 배송지번호
	store_no          NUMBER        NULL,     -- 상품번호
	order_date        DATE          NULL,     -- 구매날짜
	order_code        varchar2(100) NULL,     -- 주문상태
	order_cnt         NUMBER        NULL,     -- 구매갯수
	order_delicompany VARCHAR2(50)  NULL,     -- 택배회사
	order_delicode    VARCHAR2(20)  NULL      -- 운송장번호

-- 주문 정보 입력 ex) 주문상태 (장바구니, 배송중, 배송완료, 배송준비중, 주문완료)
INSERT INTO p04_order VALUES (p04_order_seq.nextval,1,1,to_date('2020-03-19','YYYY-MM-DD'),'배송완료',1,'한진택배','617600422270');
INSERT INTO p04_order VALUES (p04_order_seq.nextval,1,2,to_date('2020-03-19','YYYY-MM-DD'),'배송완료',1,'한진택배','617600422271');
INSERT INTO p04_order VALUES (p04_order_seq.nextval,2,1,to_date('2020-03-19','YYYY-MM-DD'),'주문완료',1,'','');
INSERT INTO p04_order VALUES (p04_order_seq.nextval,'',5,to_date('2020-03-19','YYYY-MM-DD'),'장바구니',1,'','');
INSERT INTO p04_order VALUES (p04_order_seq.nextval,'',2,to_date('2020-03-19','YYYY-MM-DD'),'장바구니',1,'','');
INSERT INTO p04_order VALUES (p04_order_seq.nextval,'',2,to_date('2020-03-19','YYYY-MM-DD'),'장바구니',1,'','');

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
		);
	
-- 상품후기 sequence	
CREATE SEQUENCE p04_pReview_seq
INCREMENT BY 1
START WITH 1;
-- 상품후기 정보 입력 
INSERT INTO p04_pReview VALUES (1,'좋은 제품입니다.',5,to_date('2020-03-19','YYYY-MM-DD'));
INSERT INTO p04_pReview VALUES (2,'그냥 제품입니다.',3,to_date('2020-03-19','YYYY-MM-DD'));

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
		);

-- 배송지 sequence	
CREATE SEQUENCE p04_addr_seq
INCREMENT BY 1
START WITH 1;
-- 배송지 정보 입력 
INSERT INTO p04_addr VALUES (p04_addr_seq.nextval,'himan1','우리집','김길동','010-0001-1001','','01525','서울시 종로구','은마아파트 101동 101호');
INSERT INTO p04_addr VALUES (p04_addr_seq.nextval,'himan1','회사','김길동','010-0001-1001','','01525','서울시 강남구','은마아파트 102동 101호');
INSERT INTO p04_addr VALUES (p04_addr_seq.nextval,'himan1','친구','김길동','010-0001-1001','','01525','서울시 노원구','은마아파트 103동 101호');
INSERT INTO p04_addr VALUES (p04_addr_seq.nextval,'himan2','우리집','김길동','010-0001-1001','','01525','서울시 종로구','은마아파트 101동 101호');
INSERT INTO p04_addr VALUES (p04_addr_seq.nextval,'himan2','우리집','김길동','010-0001-1001','','01525','서울시 종로구','은마아파트 101동 101호');
INSERT INTO p04_addr VALUES (p04_addr_seq.nextval,'himan3','우리집','김길동','010-0001-1001','','01525','서울시 종로구','은마아파트 101동 101호');
INSERT INTO p04_addr VALUES (p04_addr_seq.nextval,'himan5','우리집','김길동','010-0001-1001','','01525','서울시 종로구','은마아파트 101동 101호');

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
		);

-- 마일리지 sequence	
CREATE SEQUENCE p04_point_seq
INCREMENT BY 1
START WITH 1;

point_no      NUMBER       NOT NULL, -- 포인트코드
	mem_id        varchar2(10) NULL,     -- 아이디
	point_date    DATE         NULL,     -- 적립/사용날짜
	point_detail  VARCHAR(200) NULL,     -- 적립/사용내역
	point_mileage NUMBER       NULL      -- 마일리지

-- 마일리지 정보 입력 
INSERT INTO p04_point VALUES (p04_point_seq.nextval,'ezen1', to_date('2020-03-19','YYYY-MM-DD'), '회원가입 포인트',3000);
INSERT INTO p04_point VALUES (p04_point_seq.nextval,'ezen2', to_date('2020-03-19','YYYY-MM-DD'), '회원가입 포인트',3000);
INSERT INTO p04_point VALUES (p04_point_seq.nextval,'ezen3', to_date('2020-03-19','YYYY-MM-DD'), '회원가입 포인트',3000);
INSERT INTO p04_point VALUES (p04_point_seq.nextval,'ezen4', to_date('2020-03-19','YYYY-MM-DD'), '회원가입 포인트',3000);
INSERT INTO p04_point VALUES (p04_point_seq.nextval,'ezen5', to_date('2020-03-19','YYYY-MM-DD'), '회원가입 포인트',3000);
INSERT INTO p04_point VALUES (p04_point_seq.nextval,'himan1', to_date('2020-03-19','YYYY-MM-DD'), '회원가입 포인트',3000);
INSERT INTO p04_point VALUES (p04_point_seq.nextval,'himan2', to_date('2020-03-19','YYYY-MM-DD'), '회원가입 포인트',3000);
INSERT INTO p04_point VALUES (p04_point_seq.nextval,'himan3', to_date('2020-03-19','YYYY-MM-DD'), '회원가입 포인트',3000);
INSERT INTO p04_point VALUES (p04_point_seq.nextval,'himan4', to_date('2020-03-19','YYYY-MM-DD'), '회원가입 포인트',3000);
INSERT INTO p04_point VALUES (p04_point_seq.nextval,'himan5', to_date('2020-03-19','YYYY-MM-DD'), '회원가입 포인트',3000);
INSERT INTO p04_point VALUES (p04_point_seq.nextval,'himan6', to_date('2020-03-19','YYYY-MM-DD'), '회원가입 포인트',3000);
INSERT INTO p04_point VALUES (p04_point_seq.nextval,'himan1',to_date('2020-03-19','YYYY-MM-DD'),'상품 구매 사용',-2000);
INSERT INTO p04_point VALUES (p04_point_seq.nextval,'himan1',to_date('2020-03-19','YYYY-MM-DD'),'구매후기작성',1000);
INSERT INTO p04_point VALUES (p04_point_seq.nextval,'himan1',to_date('2020-03-19','YYYY-MM-DD'),'상품 구매 적립',320);


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
		);
	
-- 문의 sequence	
CREATE SEQUENCE p04_inquiry_seq
INCREMENT BY 1
START WITH 1;
-- 문의 정보 입력
INSERT INTO p04_inquiry VALUES (p04_inquiry_seq.nextval,'himan1','마일리지 사용에 제한이 있나요?',to_date('2020-03-19','YYYY-MM-DD'),'마일리지는 1원부터 사용 가능하며, 금액 제한은 없습니다.\n마일리지는 발급일로부터 12개월 후 자동 소멸되니, 소멸 전에 사용해주세요!');
INSERT INTO p04_inquiry VALUES (p04_inquiry_seq.nextval,'himan2','상품을 교환할 때, 배송비는 누가 부담하게 되나요?',to_date('2020-03-19','YYYY-MM-DD'),'물품의 오배송, 파손, 상품의 불량 등의 경우는 하비풀에서 배송비를 부담합니다.\n구매자의 단순변심, 배송 주소지 오류로 반송된 경우 등 상품 문제가 아닌 경우의 왕복 배송비는 고객부담입니다.');
INSERT INTO p04_inquiry VALUES (p04_inquiry_seq.nextval,'himan2','주문을 취소하고 싶어요.',to_date('2020-03-19','YYYY-MM-DD'),'상품 발송 전(결제 대기, 결제 완료 단계)까지는 주문 취소가 가능합니다.\n마이페이지>주문/배송관리>주문/배송 조회’에서 신청하신 클래스의 상세내역을 클릭하신 후,\n주문 취소 버튼을 클릭하면 주문 취소를 신청하실 수 있습니다.\n단, 주문을 취소하는 경우 해당 클래스를 포함한 정기구독 전체가 해지 됩니다.');
INSERT INTO p04_inquiry VALUES (p04_inquiry_seq.nextval,'himan3','호스트는 어떻게 신청하나요?',to_date('2020-03-19','YYYY-MM-DD'),'고객센터에서 신청해주세요.');
INSERT INTO p04_inquiry VALUES (p04_inquiry_seq.nextval,'himan1','상품을 교환하고 싶어요.',to_date('2020-03-19','YYYY-MM-DD'),'교환신청은 배송완료 후 7일 이내 가능하며,\n1:1문의(또는 메일문의)/ 대표번호(02-6948-9385)로 연락 주시면 수거 및 교환처리를 도와드리겠습니다.\n※단순 변심 교환 시, 포장 훼손을 하면 환불이 불가능하니 참고해주세요');
INSERT INTO p04_inquiry VALUES (p04_inquiry_seq.nextval,'himan3','하비풀에서의 활동 내역을 볼 수 있나요?',to_date('2020-03-19','YYYY-MM-DD'),'네. ‘마이페이지> 내 활동 내역’ 에 들어가면 \n작성한 클래스 후기, 1:1 문의내역, 마일리지 현황 등\n하비팩토리에서의 활동 내역을 한 눈에 살펴볼 수 있습니다.');
INSERT INTO p04_inquiry VALUES (p04_inquiry_seq.nextval,'himan4','호스트가 무엇인가요?',to_date('2020-03-19','YYYY-MM-DD'),'다양한 분야에서 본인의 경험과 노하우가 있으며 이를 바탕으로 하비팩토리에서 모임을 리드하는 사람들을 호스트라고 합니다.');
INSERT INTO p04_inquiry VALUES (p04_inquiry_seq.nextval,'himan2','호스트는 어떻게 신청하나요?',to_date('2020-03-19','YYYY-MM-DD'),'고객센터에서 신청해주세요.');
INSERT INTO p04_inquiry VALUES (p04_inquiry_seq.nextval,'himan5','현장에서 결제할 수 있나요?',to_date('2020-03-19','YYYY-MM-DD'),'하비팩토리는 사전에 홈페이지 또는 앱에서만 결제가 가능하며 현장에서는 결제가 불가합니다.');
INSERT INTO p04_inquiry VALUES (p04_inquiry_seq.nextval,'himan1','호스트는 어떻게 신청하나요?',to_date('2020-03-19','YYYY-MM-DD'),'고객센터에서 신청해주세요.');
INSERT INTO p04_inquiry VALUES (p04_inquiry_seq.nextval,'himan2','코로나로 취소됐어요. 환불할래요.',to_date('2020-03-19','YYYY-MM-DD'),'취소/환불 조치 진행하겠습니다. 건강 관리 잘 하시길 바랍니다.');
INSERT INTO p04_inquiry VALUES (p04_inquiry_seq.nextval,'himan1','코로나로 취소됐어요. 환불할래요.',to_date('2020-03-19','YYYY-MM-DD'),'취소/환불 조치 진행하겠습니다. 건강 관리 잘 하시길 바랍니다.');


SELECT * FROM p04_inquiry;
DROP TABLE p04_inquiry;
DROP SEQUENCE p04_inquiry_seq;
	
----------------------------------------------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------
-- 주문배송조회
SELECT order_no, order_date, store_img, store_title, order_cnt, order_code
FROM P04_ORDER o, P04_STORE s
WHERE o.STORE_NO = s.STORE_NO
AND NOT o.ORDER_CODE='장바구니';

SELECT order_no, mem_id
FROM P04_ADDR pa, P04_ORDER po 
WHERE MEM_ID = 'himan';

-- 배송지목록
SELECT addr_title, addr_name, addr_phone, 
	addr_mailAddr, addr_address, addr_address2
FROM P04_ADDR
WHERE MEM_ID = 'himan1';
-- 배송지 상세보기 
SELECT addr_title, addr_name, addr_phone, addr_mailAddr, addr_address, addr_address2
FROM P04_ADDR
WHERE MEM_ID = 'himan1' AND addr_no=1;
-- 배송지 수정
UPDATE P04_ADDR SET ADDR_TITLE='배송지명', ADDR_NAME='수령인',
	ADDR_PHONE='연락처', ADDR_PHONE2='추가연락처',
	ADDR_MAILADDR='우편번호', ADDR_ADDRESS='기본주소', ADDR_ADDRESS2='상세주소'
WHERE ADDR_NO=1
-- 배송지 삭제
DELETE P04_ADDR 
WHERE addr_no=1 

-- himan1 회원정보
SELECT mem_id, mem_name, mem_mail,mem_nickname,mem_birth,mem_phone
FROM P04_MEMBER
WHERE MEM_ID = 'himan1';

-- 회원정보 수정
UPDATE P04_MEMBER 
SET MEM_NICKNAME='닉네임', MEM_MAIL='이메일', MEM_PHONE='연락처'
WHERE MEM_ID='himan1'