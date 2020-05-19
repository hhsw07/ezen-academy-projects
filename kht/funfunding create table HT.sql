-- 프로젝트
ALTER TABLE project
	DROP CONSTRAINT FK_maker_TO_project; -- 메이커 -> 프로젝트

-- 프로젝트
ALTER TABLE project
	DROP CONSTRAINT FK_category_TO_project; -- 카테고리 -> 프로젝트

-- 프로젝트
ALTER TABLE project
	DROP CONSTRAINT PK_project; -- 프로젝트 기본키

-- 프로젝트
DROP TABLE project;

-- 프로젝트
CREATE TABLE project (
	pro_code        NUMBER         NOT NULL, -- 프로젝트 번호
	maker_code      NUMBER         NOT NULL, -- 메이커 번호
	pro_reg_date    DATE           NULL,     -- 프로젝트 신청 날짜
	pro_sub_date    DATE           NULL,     -- 프로젝트 승인 날짜
	pro_title       VARCHAR2(100)  NULL,     -- 프로젝트 명
	cate_title      VARCHAR2(30)   NOT NULL, -- 카테고리 이름
	pro_target      NUMBER         NOT NULL, -- 프로젝트 목표 금액
	pro_start_date  DATE           NOT NULL, -- 프로젝트 시작 날짜
	pro_finish_date DATE           NOT NULL, -- 프로젝트 종료 날짜
	pro_image       VARCHAR2(100)  NULL,     -- 프로젝트 대표 이미지
	pro_story       VARCHAR2(2000) NULL,     -- 프로젝트 상세 스토리
	pro_docu        VARCHAR2(100)  NULL,     -- 프로젝트 리워드 인증 서류
	pro_keyword     VARCHAR2(100)  NULL,     -- 프로젝트 키워드
	pro_curr        VARCHAR2(30)   NOT NULL CHECK (pro_curr IN('정상', '정지'))     -- 프로젝트 상태
);


-- 프로젝트 기본키
CREATE UNIQUE INDEX PK_project
	ON project ( -- 프로젝트
		pro_code ASC -- 프로젝트 번호
	);

-- 프로젝트
ALTER TABLE project
	ADD
		CONSTRAINT PK_project -- 프로젝트 기본키
		PRIMARY KEY (
			pro_code -- 프로젝트 번호
		);

-- 프로젝트
ALTER TABLE project
	ADD
		CONSTRAINT FK_maker_TO_project -- 메이커 -> 프로젝트
		FOREIGN KEY (
			maker_code -- 메이커 번호
		)
		REFERENCES maker ( -- 메이커
			maker_code -- 메이커 번호
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- 프로젝트
ALTER TABLE project
	ADD
		CONSTRAINT FK_category_TO_project -- 카테고리 -> 프로젝트
		FOREIGN KEY (
			cate_title -- 카테고리 이름
		)
		REFERENCES category ( -- 카테고리
			cate_title -- 카테고리 이름
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;
		
	
	
-- 프로젝트 옵션
ALTER TABLE pro_option
	DROP CONSTRAINT FK_project_TO_pro_option; -- 프로젝트 -> 프로젝트 옵션

-- 프로젝트 옵션
ALTER TABLE pro_option
	DROP CONSTRAINT PK_pro_option; -- 프로젝트 옵션 기본키

-- 프로젝트 옵션
DROP TABLE pro_option;

-- 프로젝트 옵션
CREATE TABLE pro_option (
	opt_code         NUMBER        NOT NULL, -- 프로젝트 옵션 번호
	pro_code         NUMBER        NOT NULL, -- 프로젝트 번호
	opt_price        NUMBER        NOT NULL, -- 프로젝트 옵션 금액
	opt_title        VARCHAR2(100) NOT NULL, -- 프로젝트 옵션 명
	opt_detail       VARCHAR2(300) NOT NULL, -- 프로젝트 옵션 상세 설명
	opt_condition    VARCHAR2(300) NULL,     -- 프로젝트 옵션 옵션 조건
	opt_delivery     VARCHAR2(100) NULL,     -- 프로젝트 옵션 배송 조건
	opt_max          NUMBER        NULL,     -- 프로젝트 옵션 제한 수량
	opt_deliver_date DATE          NULL      -- 프로젝트 옵션 발송 시작일
);

-- 프로젝트 옵션 기본키
CREATE UNIQUE INDEX PK_pro_option
	ON pro_option ( -- 프로젝트 옵션
		opt_code ASC -- 프로젝트 옵션 번호
	);

-- 프로젝트 옵션
ALTER TABLE pro_option
	ADD
		CONSTRAINT PK_pro_option -- 프로젝트 옵션 기본키
		PRIMARY KEY (
			opt_code -- 프로젝트 옵션 번호
		);

-- 프로젝트 옵션
ALTER TABLE pro_option
	ADD
		CONSTRAINT FK_project_TO_pro_option -- 프로젝트 -> 프로젝트 옵션
		FOREIGN KEY (
			pro_code -- 프로젝트 번호
		)
		REFERENCES project ( -- 프로젝트
			pro_code -- 프로젝트 번호
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;
		
	
-- 프로젝트/리워드스토어 문의
ALTER TABLE qna
	DROP CONSTRAINT FK_project_TO_qna; -- 프로젝트 -> 프로젝트/리워드스토어 문의

-- 프로젝트/리워드스토어 문의
ALTER TABLE qna
	DROP CONSTRAINT FK_member_TO_qna; -- 회원 -> 프로젝트/리워드스토어 문의

-- 프로젝트/리워드스토어 문의
ALTER TABLE qna
	DROP CONSTRAINT FK_store_TO_qna; -- 리워드스토어 -> 프로젝트/리워드스토어 문의

-- 프로젝트/리워드스토어 문의
ALTER TABLE qna
	DROP CONSTRAINT PK_qna; -- 프로젝트/리워드스토어 문의 기본키

-- 프로젝트/리워드스토어 문의
DROP TABLE qna;

-- 프로젝트/리워드스토어 문의
CREATE TABLE qna (
	qna_code         NUMBER        NOT NULL, -- 프로/리워드 문의 번호
	qna_type         VARCHAR2(20)  NOT NULL, -- 프로/리워드 문의 구분
	pro_code         NUMBER        NULL,     -- 프로젝트 번호
	sto_code         NUMBER        NULL,     -- 리워드스토어 번호
	mem_code         NUMBER        NOT NULL, -- 회원 번호
	qna_detail       VARCHAR2(600) NOT NULL, -- 프로/리워드 문의내용
	qna_reg_date     DATE          NOT NULL, -- 프로/리워드 문의 등록 날짜
	qna_open         VARCHAR2(2)   NOT NULL, -- 프로/리워드 문의 비밀 여부
	qna_ans          VARCHAR2(600) NULL,     -- 프로/리워드 문의 답변
	qna_ans_reg_date DATE          NULL,     -- 프로/리워드 문의 답변 등록 날짜
	qna_chk          VARCHAR2(2)   NULL CHECK (qna_chk IN('Y', 'N'))     -- 프로/리워드 문의 확인 여부
);

-- 프로젝트/리워드스토어 문의 기본키
CREATE UNIQUE INDEX PK_qna
	ON qna ( -- 프로젝트/리워드스토어 문의
		qna_code ASC -- 프로/리워드 문의 번호
	);

-- 프로젝트/리워드스토어 문의
ALTER TABLE qna
	ADD
		CONSTRAINT PK_qna -- 프로젝트/리워드스토어 문의 기본키
		PRIMARY KEY (
			qna_code -- 프로/리워드 문의 번호
		);

-- 프로젝트/리워드스토어 문의
ALTER TABLE qna
	ADD
		CONSTRAINT FK_project_TO_qna -- 프로젝트 -> 프로젝트/리워드스토어 문의
		FOREIGN KEY (
			pro_code -- 프로젝트 번호
		)
		REFERENCES project ( -- 프로젝트
			pro_code -- 프로젝트 번호
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- 프로젝트/리워드스토어 문의
ALTER TABLE qna
	ADD
		CONSTRAINT FK_member_TO_qna -- 회원 -> 프로젝트/리워드스토어 문의
		FOREIGN KEY (
			mem_code -- 회원 번호
		)
		REFERENCES member ( -- 회원
			mem_code -- 회원 번호
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- 프로젝트/리워드스토어 문의
ALTER TABLE qna
	ADD
		CONSTRAINT FK_store_TO_qna -- 리워드스토어 -> 프로젝트/리워드스토어 문의
		FOREIGN KEY (
			sto_code -- 리워드스토어 번호
		)
		REFERENCES store ( -- 리워드스토어
			sto_code -- 리워드스토어 번호
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;
		
	
	
	
	
-- 메이커
ALTER TABLE maker
	DROP CONSTRAINT FK_member_TO_maker; -- 회원 -> 메이커

-- 메이커
ALTER TABLE maker
	DROP CONSTRAINT PK_maker; -- 메이커 기본키

-- 메이커
DROP TABLE maker;

-- 메이커
CREATE TABLE maker (
	maker_code     NUMBER        NOT NULL, -- 메이커 번호
	mem_code       NUMBER        NOT NULL, -- 회원 번호
	maker_profile  VARCHAR2(100) NOT NULL, -- 메이커 프로필 이미지
	maker_type     VARCHAR2(30)  NOT NULL CHECK (maker_type IN('법인 사업자', '개인 사업자', '개인')), -- 메이커 구분
	maker_name     VARCHAR2(100) NOT NULL, -- 메이커명
	maker_email    VARCHAR2(100) NOT NULL, -- 이메일
	maker_curr     DATE          NULL,     -- 메이커 상태
	maker_bankbook VARCHAR2(100) NOT NULL  -- 통장 사본 이미지
);

-- 메이커 기본키
CREATE UNIQUE INDEX PK_maker
	ON maker ( -- 메이커
		maker_code ASC -- 메이커 번호
	);

-- 메이커
ALTER TABLE maker
	ADD
		CONSTRAINT PK_maker -- 메이커 기본키
		PRIMARY KEY (
			maker_code -- 메이커 번호
		);

-- 메이커
ALTER TABLE maker
	ADD
		CONSTRAINT FK_member_TO_maker -- 회원 -> 메이커
		FOREIGN KEY (
			mem_code -- 회원 번호
		)
		REFERENCES member ( -- 회원
			mem_code -- 회원 번호
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;
		
	
	
	
	
	
	
-- 위험요인
ALTER TABLE risk
	DROP CONSTRAINT FK_project_TO_risk; -- 프로젝트 -> 위험요인

-- 위험요인
ALTER TABLE risk
	DROP CONSTRAINT PK_risk; -- 위험요인 기본키

-- 위험요인
DROP TABLE risk;

-- 위험요인
CREATE TABLE risk (
	risk_code   NUMBER        NOT NULL, -- 위험요인 번호
	pro_code    NUMBER        NOT NULL, -- 프로젝트 번호
	risk_detail VARCHAR2(300) NOT NULL  -- 내용
);

-- 위험요인 기본키
CREATE UNIQUE INDEX PK_risk
	ON risk ( -- 위험요인
		risk_code ASC -- 위험요인 번호
	);

-- 위험요인
ALTER TABLE risk
	ADD
		CONSTRAINT PK_risk -- 위험요인 기본키
		PRIMARY KEY (
			risk_code -- 위험요인 번호
		);

-- 위험요인
ALTER TABLE risk
	ADD
		CONSTRAINT FK_project_TO_risk -- 프로젝트 -> 위험요인
		FOREIGN KEY (
			pro_code -- 프로젝트 번호
		)
		REFERENCES project ( -- 프로젝트
			pro_code -- 프로젝트 번호
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;	
		
	
COMMIT;


