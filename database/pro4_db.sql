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
INSERT INTO p04_course VALUES (p04_course_seq.nextval,'홍길동1',to_date('2020-03-19','YYYY-MM-DD'),'비누만들기'||p04_course_seq.nextval,'원데이','fradetail1.jpg',0,10,50000,'ads01_wide.jpg',to_date('2020-03-30','YYYY-MM-DD'),'다양한 취미');

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
INSERT INTO p04_cReview VALUES (p04_cReview_seq.nextval,'재밌어요',5,to_date('2020-03-19','YYYY-MM-DD'));

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
INSERT INTO p04_store VALUES (p04_store_seq.nextval,'ezen1','라탄으로 이불 톡톡','Y',28000,30,'ads01_wide.jpg',to_date('2020-03-19','YYYY-MM-DD'),'ads01_wide.jpg','다양한 취미');
INSERT INTO p04_store VALUES (p04_store_seq.nextval,'ezen1','라탄으로 이불 톡톡','Y',28000,30,'ads01_wide.jpg',to_date('2020-03-19','YYYY-MM-DD'),'ads01_wide.jpg','다양한 취미');

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
INSERT INTO p04_order VALUES (202003190000+p04_order_seq.nextval,'himan1',1,to_date('2020-03-19','YYYY-MM-DD'),'배송완료',1,'한진택배','617600422270');

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
insert into p04_notice values (p04_notice_seq.nextval, '텀블벅 후원자님, 이용권은 이렇게 사용해주세요!', '안녕하세요! 하비풀입니다. 텀블벅 프로젝트가 끝나고,\n\n\n지금까지 기다려주신 후원자님께 정말 감사드립니다. :)\n\n\n\n하비풀 사이트 오픈과 함께, 오늘 (29일) 부터 ‘클래스 선택’  기간이 되어 보내드린 이용권의 사용법을 안내드립니다.\n\n\n\n\n\n 기간 안내\n \n \n \n \n \n- 이용권 쿠폰 발송: 5/29(월) - 클래스 1개월 (30,000원) 을 구독할 수 있는 30,000마일리지 쿠폰 발송 완료\n\n\n\n- 클래스 선택 기간: 5/29(월) -  6/2(금) 오전 9시 (5일간)\n\n\n\n- 결제 확정: 6/2일(금) 오전 10시에 문자 발송 예정\n\n\n\n- 배송일: 6/7(수)\n\n\n\n(선택 기간 안에 선택이 완료되어야  6/7일에 배송이 완료될 수 있으니 참고부탁드립니다. 혹시 기간 안에 신청을 못하신 분들은 17일에 다시 한번 발송 예정입니다)\n\n\n\n\n- 신청 방법은 아래 가이드를 잘 따라해주세요 :)\n\n\n \n 신청 방법\n \n \n \n1. 준비물: 문자로 발송한 개인별 ‘이용권 쿠폰번호’ (총 16자리 영문)\n\n\n\n2. https://hobbyful.co.kr/ 에 접속합니다.\n \n \n \n3. 홈페이지 상단을 통해 회원가입 후, 로그인 해주세요!\n\n\n\n4. 마이페이지> 나의 활동 내역> 쿠폰 현황에서 ‘쿠폰등록’ 에 문자 혹은 메일로 받은 번호 16자리를 입력해 쿠폰을 등록한 후, 바로 아래 쿠폰 내역에 ‘충전’ 을 눌러주세요!\n\n\n\n''''''''''''''''마일리지 등록을 끝냈으니, 이제 클래스를 고를 시간 ! ''''''''''''''''\n\n\n\n\n\n5. 상단메뉴 중 ‘취미 정기구독’ 을 클릭 후, 여섯가지 클래스를 자세히 살펴본 후 원하는 클래스를 골라\n\n‘정기구독박스에 담기’ > ‘정기구독 신청하기’를 클릭합니다.\n\n(하나의 이용권으로 하나의 클래스를 선택할 수 있고, 추가 정기구독을 원할 시 다른 클래스를 추가로 담은 후 차액을 결제할 수 있습니다.)\n\n\n\n6. 할인정보에 마일리지 금액 입력 후 적용을 클릭합니다.\n\n\n\n(추가 신청 시 결제수단을 등록해 추가 결제를 진행해주셔야 합니다)\n\n\n\n7. 나머지 정보 입력 후 구독신청하기를 누른 후, 완료페이지가 뜨면 신청 완료!\n\n\n\n\n>>>\n\n클래스 선택 기간(5/29-6/2 오전 9시) 내에 신청을 마쳐주시면, 배송은 6월 7일에 시작됩니다!\n\n\n\n여러분은 첫번째 구독으로 어떤 클래스를 신청하셨나요?\n\n\n\n기다려주시고 응원 보내주신 후원자분들께 감사인사 드리면서,\n\n\n\n설레는 마음으로 후원자님들의 선택을 기다리고 있겠습니다 :D\n\n\n\n\n\n우리, 어서 만나요!\n\n\n\n\n\n\n\n하비팩토리 드림.\n', to_date('2017-05-04','YYYY-MM-DD'), 'N');
insert into p04_notice values (p04_notice_seq.nextval, '하비풀 사이트 오픈', '하비풀 사이트 오픈했습니다. 하비풀 드림.', to_date('2017-05-14','YYYY-MM-DD'), 'N');
insert into p04_notice values (p04_notice_seq.nextval, '개인정보취급방침 변경 공지', '안녕하세요 하비풀입니다.\n\n\n하비풀 서비스(https://hobbyful.co.kr)를 이용해주시는 고객님들께 감사드리며, 새로운 개인정보 취급방침 적용에 관한 안내 말씀 드립니다. 하비풀은 이용자 여러분의 개인정보를 무엇보다 소중하게 취급하고 있으며, 어떤 사안보다 우선하여 안전하게 관리하고 있습니다.\n\n\n[개정 사항]\n\n1. 수집하는 개인정보 항목 및 수집 방법\n\n- 제 3자인증 수단을 통한 회원 가입/로그인 시 수집하는 개인정보 및 수집방법에 대한 내용이 추가되었습니다.\n\n\n\n2. 개인정보 자동수집 장치의 설치, 운영 및 그 거부에 관한 사항\n\n- 구글 애널리틱스를 이용한 웹로그 분석에 대한 내용이 추가되었습니다.\n\n\n\n3. 기타\n\n- 서비스 내에 링크되어있는 타 서비스의 개인정보 수집 행위에 대한 하비풀의 방침 안내가 추가되었습니다.\n\n\n\n4. 고지의 의무\n\n- 개인정보취급방침 변경 시 고지 의무에 대한 안내가 추가되었습니다.\n\n\n\n변경된 개인정보취급방침에 대한 상세한 내용은 하비풀 홈페이지 하단의 ''''개인정보취급방침''''에서 확인하실 수 있습니다.\n\n\n\n감사합니다.\n', to_date('2017-07-14','YYYY-MM-DD'), 'N');
insert into p04_notice values (p04_notice_seq.nextval, '서비스 접속 장애 발생 안내 말씀드립니다.', '안녕하세요 하비풀입니다.\n\n \n\n어제(8월 5일) 밤 부터 홈페이지 접속 오류가 발생하고 있습니다.\n\n현재 서비스 복구 작업 진행 중에 있으며 최대한 빠른 시간 내에 정상적인 서비스를 제공할 수 있도록 하겠습니다.\n\n \n\n서비스 장애와 관련하여 진심으로 사과의 말씀 전하며,\n\n이용에 불편을 드린 점 죄송합니다.\n\n\n\n감사합니다.\n\n하비풀 드림\n', to_date('2017-08-06','YYYY-MM-DD'), 'N');
insert into p04_notice values (p04_notice_seq.nextval, '긴~연휴를 맞아 추석 배송 일정을 안내드립니다.', ' 추석 배송 안내 \n\n\n\n안녕하세요 하비풀입니다!\n\n \n\n추석 연휴로 인해 변경된 배송일정을 안내드립니다. \n\n\n\n*추석 전 마지막 배송 : 9/24일 까지 \n9월24일 23시 59분까지 결제 완료된 주문에 한 해 27일에 발송됩니다. \n\n\n\n\n\n*연휴 기간 주문건 배송: 10/10일 발송 \n9월 25일~10월 4월 23시 59분 주문건은 7일이 아닌 10일에 발송됩니다. \n\n\n\n*CS 일정 안내\n\n연휴기간 동안에는 부득이하게 전화, 메일 등의 답변이 불가능함을 알려드립니다. 연휴가 끝난 후 복귀해 모두 답변드리도록 할게요! \n\n\n\n*놓치면 아까운 하비풀의 추석 선물!\n\n9월 24일(D-3) 까지 주문건에 대해서는 추석선물로 포송이 페이퍼아트 키트를 선물로 함께 드리고 있으니, \n\n\n\n놓지지 말고 연휴 전에 꼭 받아서 더 취미로운 연휴가 되시길 바랄게요 :) \n\n\n\n그럼, 하비풀은 더 좋은 소식을 들고 찾아오도록 하겠습니다.\n\n\n\n감사합니다!\n', to_date('2017-09-21','YYYY-MM-DD'), 'N');
insert into p04_notice values (p04_notice_seq.nextval, '4월 7일 배송 출발 지연 안내', '안녕하세요 취미로운 일상을 전하는 하비팩토리입니다.\n\n\n\n이번 4월 7일이 주말인 관계로 택배사 휴무에 의해 배송 출발이 지연됨을 알려드립니다.\n\n\n\n주말이 지나고 월요일인 4월 9일에 출고되는 점 참고 부탁드립니다.\n\n\n\n\n\n[4월 9일 배송 출발 대상 주문]\n\n\n\n- 기존 정기배송일이 7일인 주문\n\n \n\n- 4월 4일까지 신청한 신규 구독 주문\n\n \n\n \n\n※ 4월 5일부터 신청해주신 구독은 4월 17일에 배송 출발합니다.\n\n\n\n \n\n항상 취미와 함께하는 즐거운 일상 보내세요.\n\n \n\n감사합니다.\n', to_date('2018-04-03','YYYY-MM-DD'), 'N');
insert into p04_notice values (p04_notice_seq.nextval, '워크샵으로 인한 고객센터 휴무 안내', '안녕하세요. 취미 클래스 하비팩토리입니다.\n\n\n\n\n\n전사 워크샵으로 인해 아래 기간 동안 고객센터 휴무를 알려드립니다.\n\n\n\n \n\n[고객센터 휴무 일정]\n\n \n\n2018년 5월 31일(목) ~ 6월 1일(금)\n\n \n\n \n\n전화, 이메일 및 1:1 문의 답변이 어려우니 참고 부탁드립니다.\n\n \n\n \n\n \n\n \n\n더 나은 하비풀이 되기 위해 충분히 고민하는 시간 가지고 돌아올게요 <3\n\n \n\n \n\n감사합니다.\n', to_date('2018-05-28','YYYY-MM-DD'), 'N');
insert into p04_notice values (p04_notice_seq.nextval, '택배사 파업으로 인한 배송 지연 안내', '안녕하세요.\n\n \n\nCJ대한통운 택배사 파업 이슈로 인해 영남권 지역의 배송 지연 안내드립니다.\n\n \n\n▶ 배송 지연 지역 : 울산, 창원, 김해, 경주, 의성\n\n \n\n1일 정도 배송 지연이 이루어지고 있으며, 배송조회 오류가 발생할 수 있습니다.\n\n \n\n또한, 빠른 배송을 위해 CJ대한통운이 아닌 다른 택배사에서 상품을 배송해드릴 수도 있는 점 안내드립니다.\n\n \n\n이용에 불편드린 점 양해 부탁 드리며, 빠른 시간 내에 배송될 수 있도록 노력하겠습니다.\n\n \n\n감사합니다.\n', to_date('2018-07-13','YYYY-MM-DD'), 'N');
insert into p04_notice values (p04_notice_seq.nextval, '추석 연휴기간 배송 및 고객센터 휴무 안내', '안녕하세요.\n\n \n\n추석 연휴에 따른 배송 및 고객센터 휴무 안내드립니다.\n\n \n\n \n\n[9월 27일 정기배송]\n\n \n\n9월 27일 정기 배송 건은 정상 출고합니다. 택배사 사정에 따라 1~2일 정도 배송이 지연될 수 있습니다.\n\n \n\n \n\n[고객센터 운영]\n\n \n\n1:1 문의, 이메일, 전화 등 고객 상담은 9월 21일 정오(오후 12시)까지 운영 후, 26일까지 휴무이오니 참고 부탁드립니다.\n\n \n\n \n\n즐거운 한가위 보내세요 <3\n\n \n\n감사합니다.\n', to_date('2018-09-19','YYYY-MM-DD'), 'N');
insert into p04_notice values (p04_notice_seq.nextval, '10/05(금) 고객센터 휴무 안내', '안녕하세요. 취미 클래스 하비팩토리입니다.\n\n \n\n \n\n전사 워크샵으로 인해 고객센터 휴무 일정 알려드립니다.\n\n \n\n \n\n[고객센터 휴무 일정]\n\n \n\n2018년 10월 05일 금요일\n\n \n\n \n\n전화 문의 답변이 어려우며, 이메일 및 1:1 문의 남겨주시면 최대한 빠르게 답변드리겠습니다.\n\n \n\n \n\n더 나은 하비팩토리가 되기 위해 충분히 고민하는 시간 가지고 돌아올게요 <3\n\n \n\n \n\n감사합니다.\n', to_date('2018-10-04','YYYY-MM-DD'), 'N');
insert into p04_notice values (p04_notice_seq.nextval, 'CJ대한통운 파업으로 인한 일부지역 배송지연 안내', '안녕하세요.\n\n \n\n취미 클래스 하비팩토리 입니다.\n\n \n\nCJ대한통운 택배기사 파업 이슈로 인해 일부 지역의 배송 지연 안내드립니다.\n\n \n\n▶ 배송 지연 지역 : 여주, 수원, 성남, 안산, 이천, 평택,  거제, 김해, 창원, 경주, 김천, 광주, 대구, 울산, 청주의 일부 지역\n\n \n\n1~2일 정도 배송 지연이 이루어지고 있으며, 배송조회 오류가 발생할 수 있습니다.\n\n \n\n또한, 빠른 배송을 위해 CJ대한통운이 아닌 우체국 택배에서 상품을 배송해드릴 수도 있는 점 안내드립니다.\n\n \n\n이용에 불편드린 점 양해 부탁 드리며, 빠른 시간 내에 배송될 수 있도록 노력하겠습니다.\n\n \n\n감사합니다.\n', to_date('2018-11-22','YYYY-MM-DD'), 'N');
insert into p04_notice values (p04_notice_seq.nextval, '개인정보처리방침 변경 안내', '안녕하세요 하비팩토리입니다.\n\n \n\n하비팩토리 개인정보처리방침이 아래와 같이 변경됩니다.\n\n서비스 이용에 불편이 없도록 참고 부탁드립니다.\n\n \n\n \n\n○ 변경 사유\n\n- 한국인터넷진흥원 개인정보 보호조치 모니터링 결과에 따른 개선권고\n\n \n\n \n\n○ 변경 내용\n\n7.이용자 및 법정대리인의 권리와 그 행사방법\n\n \n\n \n\n○ 적용 일시 : 2019년 6월 10일\n\n \n\n○ 상세 내용\n\n \n\n[개정 전]\n\n7. 이용자 및 법정대리인의 권리와 그 행사방법\n\n① 이용자는 언제든지 등록되어 있는 자신의 개인정보를 조회하거나 수정할 수 있으며 가입해지를 요청할 수도 있습니다.\n② 이용자들의 개인정보 조회,수정을 위해서는 \"개인정보변경\"(또는 \"회원정보수정\" 등)을 가입해지(동의철회)를 위해서는 \"회원탈퇴\"를 클릭하여 본인 확인 절차를 거치신 후 직접 열람, 정정 또는 탈퇴가 가능합니다.\n③ 혹은 개인정보관리책임자에게 서면, 전화 또는 이메일로 연락하시면 지체 없이 조치하겠습니다.\n④ 귀하가 개인정보의 오류에 대한 정정을 요청하신 경우에는 정정을 완료하기 전까지 당해 개인정보를 이용 또는 제공하지 않습니다. 또한 잘못된 개인정보를 제3자에게 이미 제공한 경우에는 정정 처리결과를 제3자에게 지체 없이 통지하여 정정이 이루어지도록 하겠습니다.\n⑤ 회사는 이용자의 요청에 의해 해지 또는 삭제된 개인정보는 \"회사가 수집하는 개인정보의 보유 및 이용기간\"에 명시된 바에 따라 처리하고 그 외의 용도로 열람 또는 이용할 수 없도록 처리하고 있습니다.\n\n \n\n \n\n[개정 후]\n\n7. 이용자 및 법정대리인의 권리와 그 행사방법\n\n회사는 이용자(만 14세 미만자인 경우에는 법정대리인)의 권리를 다음과 같이 보호하고 있습니다.\n\n① 이용자는 언제든지 등록되어 있는 자신의 개인정보 또는 법정대리인의 경우 만 14세 미만자의 개인정보를 조회하거나 수정할 수 있으며 가입해지를 요청할 수도 있습니다.\n\n② 이용자들의 개인정보 조회,수정을 위해서는 \"개인정보변경\"(또는 \"회원정보수정\" 등)을 가입해지(동의철회)를 위해서는 \"회원탈퇴\"를 클릭하여 본인 확인 절차를 거치신 후 직접 열람, 정정 또는 탈퇴가 가능합니다.\n③ 혹은 개인정보관리책임자에게 서면, 전화 또는 이메일로 연락하시면 지체 없이 조치하겠습니다.\n④ 귀하가 개인정보의 오류에 대한 정정을 요청하신 경우에는 정정을 완료하기 전까지 당해 개인정보를 이용 또는 제공하지 않습니다. 또한 잘못된 개인정보를 제3자에게 이미 제공한 경우에는 정정 처리결과를 제3자에게 지체 없이 통지하여 정정이 이루어지도록 하겠습니다.\n⑤ 회사는 이용자의 요청에 의해 해지 또는 삭제된 개인정보는 \"회사가 수집하는 개인정보의 보유 및 이용기간\"에 명시된 바에 따라 처리하고 그 외의 용도로 열람 또는 이용할 수 없도록 처리하고 있습니다.\n', to_date('2019-05-31','YYYY-MM-DD'), 'Y');
insert into p04_notice values (p04_notice_seq.nextval, '홈페이지 서버 점검 안내', '안녕하세요.\n\n \n\n서비스 개편을 위해 아래와 같이 서버 점검을 진행할 예정입니다.\n\n \n\n서버 점검 시간 동안에는 클래스 영상 수강을 포함하여, 홈페이지 접속이 제한되오니 이용에 참고 부탁드립니다.\n\n \n\n \n\n서버 점검 일정 : 2019년 7월 17일 수요일 00시 ~ 07시(완료시까지)\n\n \n\n \n\n감사합니다.\n', to_date('2019-07-16','YYYY-MM-DD'), 'Y');
insert into p04_notice values (p04_notice_seq.nextval, '2019년 추석 연휴 배송 및 고객센터 휴무 일정 안내', '안녕하세요 하비팩토리입니다.\n\n \n\n \n\n추석 연휴에 따른 배송 및 고객센터 휴무 일정 안내드립니다.\n\n \n\n \n\n- 추석 연휴 전 배송 마감일 : 9월 9일 오후 2시\n\n \n\n- 고객센터 휴무일 : 9월 11일 오후 3시 ~ 9월 15일까지\n\n \n\n \n\n9월 9일 오후 2시 주문까지 추석 연휴 전 배송 가능하며, 이후 주문은 9월 16일부터 순차적으로 발송됩니다.\n\n \n\n채팅, 1:1 문의, 이메일, 전화 등 고객 상담은 9월 11일 오후 3시 부터 15일까지 휴무이오니 참고 부탁드립니다.\n\n \n\n \n\n하트 여러분 모두 즐거운 한가위 보내세요 <3\n\n \n\n감사합니다.\n', to_date('2019-09-05','YYYY-MM-DD'), 'N');
insert into p04_notice values (p04_notice_seq.nextval, 'NH농협카드, KB국민카드 전산시스템 작업 안내', '안녕하세요 하비팩토리입니다.\n\n \n\nNH농협카드, KB국민카드 전산 시스템 개편 작업으로 인하여 결제 서비스 이용이 제한 될 예정입니다.\n \n\n카드사별 중단 일정을 확인하시고, 연휴 기간 내 카드 이용에 불편 없으시길 바랍니다.\n\n \n\n\n \n즐거운 한가위 연휴 보내시길 바랄게요 :)\n\n \n\n감사합니다.\n', to_date('2019-09-09','YYYY-MM-DD'), 'N');
insert into p04_notice values (p04_notice_seq.nextval, '서비스 이용약관 개정 안내', '안녕하세요 하비팩토리입니다.\n\n\n\n2019년 11월 2일부터 하비풀 서비스 이용약관이 아래와 같이 개정되어 안내드립니다.\n\n\n\n1. 주요 변경 내용\n\n- 취소/교환/반품 정책 개정(제 4장 17조)\n\n- 서비스 부정 이용 금지 및 규제 항목 추가(제 5장 23조)\n\n- 이용자 게시물 저작권 이용에 관한 항목 추가 및 개정(제 6장 24조)\n\n\n\n2. 이용약관 개정 시행일\n\n- 이용약관(개정본 포함) 전체보기 : ttps://hobbyful.co.kr/term-provision.html\n\n\n\n개정 시행일 전까지 별도의 거부 의사를 표시하지 않은 회원은 변경된 약관에 동의한 것으로 간주됩니다. \n\n궁금하신 사항은 고객센터를 통해 문의주시기 바랍니다.\n\n\n\n감사합니다.\n\n하비팩토리 드림', to_date('2019-10-02','YYYY-MM-DD'), 'N');
insert into p04_notice values (p04_notice_seq.nextval, '설 연휴 배송 일정 및 고객센터 휴무 안내', '안녕하세요, 하비팩토리입니다.\n\n \n\n설 연휴에 따른 배송 일정 및 고객센터 휴무 안내드립니다.\n\n\n\n[배송 일정]\n\n\n\n1월 22일(수) 오후 2시까지의 주문은 당일 발송되며,\n\n1월 23일(목)~1월 27일(월) 주문건에 대해서는 1월 28일(화)부터 순차 발송됩니다.\n\n\n\n\n\n[고객센터 휴무]\n\n \n\n기간: 1월 24일(금)~1월 27일(월)\n\n내용: 1:1 문의/유선/실시간 채팅 등 고객센터 휴무\n\n*해당 기간동안 접수된 문의는 01/28(화)부터 순차 답변드릴 예정입니다.\n\n\n\n새해 복 많이 받으세요 :)\n\n\n\n감사합니다.\n', to_date('2020-01-20','YYYY-MM-DD'), 'Y');
insert into p04_notice values (p04_notice_seq.nextval, '고객센터 전화상담 운영 임시중단 안내', '안녕하세요. 하비팩토리입니다.\n\n하비팩토리는 고객과 임직원의 코로나19 감염 예방을 위해, 전직원 재택 근무를 결정하였습니다.\n\n\n\n이에 따라 고객센터 전화상담 운영을 임시 중단하오니, 1:1 문의 및 채팅 상담을 이용해주시기 바랍니다.\n\n※ 전화상담 중단 기간 : 2월 25일 ~ 추후 공지\n\n\n\n전화상담 외에 모든 업무는 정상 진행됨을 알려드리며, 이용에 불편을 드리게 된 점 죄송한 말씀드립니다.\n\n하루 빨리 사태가 마무리되고, 고객 여러분 모두 건강지키시길 기원하겠습니다.\n\n\n\n감사합니다.\n\n하비팩토리 드림\n', to_date('2020-02-25','YYYY-MM-DD'), 'Y');



SELECT * FROM p04_notice;
DROP TABLE p04_notice;
DROP SEQUENCE p04_notice_seq;
SELECT '''''''' FROM dual;
