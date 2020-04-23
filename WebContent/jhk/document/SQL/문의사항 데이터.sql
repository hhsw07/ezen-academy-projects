/* 문의사항 */
DROP TABLE p5_question 
	CASCADE CONSTRAINTS;
/* 문의사항 */
CREATE TABLE p5_question (
	que_no NUMBER NOT NULL, /* 문의번호 */
	mem_id VARCHAR2(100) NOT NULL, /* 아이디 */
	que_name VARCHAR2(500) NOT NULL, /* 문의제목 */
	que_detail VARCHAR2(3000) NOT NULL, /* 문의내용 */
	que_date DATE NOT NULL /* 문의등록일 */
);
ALTER TABLE p5_question
	ADD
		CONSTRAINT p5_question_pk
		PRIMARY KEY (
			que_no
		);

ALTER TABLE p5_question
	ADD
		CONSTRAINT FK_p5_member_TO_p5_question
		FOREIGN KEY (
			mem_id
		)
		REFERENCES p5_member (
			mem_id
		);
CREATE SEQUENCE p5_question_seq
START WITH 1
INCREMENT BY 1
;
INSERT INTO p5_question VALUES (p5_question_seq.nextval, 'ezen01', '박스포장 되서 배송되는거맞죠??', '010 7709 8710으로 주문한 사람입니다.', to_date('2018-11-26','YYYY-MM-DD'));
INSERT INTO p5_question VALUES (p5_question_seq.nextval, 'ezen02', '주소좀', '대충 거리 적당하면 행복쇼핑에서 결제만 하고 직접 찾으러 가고싶은데 주소좀 알 수 있을까요?', to_date('2019-01-03','YYYY-MM-DD'));
INSERT INTO p5_question VALUES (p5_question_seq.nextval, 'ezen03', '재고확인 부탁드립니다.', 'CPU AMD 라이젠 5 3600 (마티스) (정품)\n메인보드 ASUS TUF B450M-PRO GAMING STCOM\n메모리 삼성전자 DDR4 8G PC4-21300 (정품)  2개\n하드디스크 Western Digital WD 1TB BLUE WD10EZEX (SATA3/7200/64M)\nSSD 마이크론 Crucial MX500 대원CTS (500GB)\n그래픽카드 갤럭시 GALAX 지포스 RTX 2070 SUPER EX BLACK OC D6 8GB\n케이스 darkFlash G-CLASS 500 RGB (화이트)\n파워 Antec NE650C TUF 80PLUS BRONZE \n쿨러/튜닝 JONSBO CR-1000 ARGB (BLACK)\n소프트웨어 Microsoft Windows 10 Home (처음사용자용 한글)\n\n재고 확인부탁드립니다.', to_date('2019-10-21','YYYY-MM-DD'));
INSERT INTO p5_question VALUES (p5_question_seq.nextval, 'ezen04', '질문요', '윈도우10 없는데 무료로 깔아주시나요?', to_date('2020-01-03','YYYY-MM-DD'));
INSERT INTO p5_question VALUES (p5_question_seq.nextval, 'ezen05', '조립하지않고 부품만 배송시 지금 주문하면 이번주가능한가요?', '조립하지 않고 부품만 배송시 지금 주문하면 이번주 수령 가능한가요?', to_date('2020-01-30','YYYY-MM-DD'));
INSERT INTO p5_question VALUES (p5_question_seq.nextval, 'ezen01', '쿨러 AEROCOOL Cylon 4 랑 인텔쿨러랑 조립법똑같나요?', '일반적인 인텔쿨러와 동일하게 하면 될까요?', to_date('2020-04-20','YYYY-MM-DD'));

SELECT * FROM p5_question;
--------------------------------------
/* 문의사항댓글 */
DROP TABLE p5_quecomm 
	CASCADE CONSTRAINTS;

/* 문의사항댓글 */
CREATE TABLE p5_quecomm (
	quec_no NUMBER NOT NULL, /* 문의댓글번호 */
	que_no NUMBER NOT NULL, /* 문의번호 */
	mem_id VARCHAR2(100) NOT NULL, /* 아이디 */
	quec_detail VARCHAR2(3000) NOT NULL, /* 문의댓글내용 */
	quec_date DATE NOT NULL /* 문의댓글등록일 */
);
ALTER TABLE p5_quecomm
	ADD
		CONSTRAINT p5_quecomm_pk
		PRIMARY KEY (
			quec_no
		);

ALTER TABLE p5_quecomm
	ADD
		CONSTRAINT FK_p5_question_TO_p5_quecomm
		FOREIGN KEY (
			que_no
		)
		REFERENCES p5_question (
			que_no
		);

ALTER TABLE p5_quecomm
	ADD
		CONSTRAINT FK_p5_member_TO_p5_quecomm
		FOREIGN KEY (
			mem_id
		)
		REFERENCES p5_member (
			mem_id
		);
CREATE SEQUENCE p5_quecomm_seq
START WITH 1
INCREMENT BY 1
;
INSERT INTO p5_quecomm VALUES (p5_quecomm_seq.nextval,1,'admin','네 안녕하세요.\n대박스 안전포장추가입금 확인했습니다. 대박스 안전포장으로 안전하게 발송하겠습니다.',to_date('2018-11-27','YYYY-MM-DD'));
INSERT INTO p5_quecomm VALUES (p5_quecomm_seq.nextval,2,'admin','안녕하세요. 통합고객만족센터입니다.\n(매장주소: 서울특별시 종로구 미려빌딩 6층)입니다.\n방문수령은 주문후에 수령시간 조정이 필요합니다.\n주문후에 판매처로 꼭 방문수령 문의주세요.\n감사합니다.',to_date('2019-01-04','YYYY-MM-DD'));
INSERT INTO p5_quecomm VALUES (p5_quecomm_seq.nextval,3,'admin','안녕하세요. 문의 주셔서 감사합니다.\n현재 문의주신 VGA 는 일시품절로 보이며\n\n갤럭시 GALAX 지포스 RTX 2070 SUPER EX WHITE OC D6 8GB\nPALIT 지포스 RTX 2070 SUPER JS D6 8GB\n기가바이트 지포스 RTX 2070 SUPER Gaming OC D6 8GB\n이엠텍 HV 지포스 RTX 2070 SUPER BLACK MONSTER OC D6 8GB\nASUS DUAL 지포스 RTX 2070 SUPER O8G EVO D6 8GB\n이엠텍 제논 지포스 RTX 2070 SUPER TURBO JET OC D6 8GB\n등이 재고 가능한것으로 보입니다.\n\n구매에 참고 부탁드립니다.\n감사합니다~',to_date('2019-10-22','YYYY-MM-DD'));
INSERT INTO p5_quecomm VALUES (p5_quecomm_seq.nextval,4,'admin','정품 추가의 경우에만 설치가 가능합니다. 감사합니다.',to_date('2020-01-04','YYYY-MM-DD'));
INSERT INTO p5_quecomm VALUES (p5_quecomm_seq.nextval,5,'admin','죄송합니다만 현재 주문량이 밀려있어 월요일에 가능할 것으로 보입니다. 감사합니다.',to_date('2020-01-31','YYYY-MM-DD'));
INSERT INTO p5_quecomm VALUES (p5_quecomm_seq.nextval,6,'admin','안녕하세요. 말씀주신 쿨러 제작은 인텔 순정쿨러와는 조립 방법이 다릅니다.\n보드를 들어낸 상태로 하셔야 합니다.\n난이도가 조금 있습니다!!',to_date('2020-04-21','YYYY-MM-DD'));
INSERT INTO p5_quecomm VALUES (p5_quecomm_seq.nextval,6,'ezen01','감사합니다.',to_date('2020-04-22','YYYY-MM-DD'));

SELECT * FROM p5_quecomm;