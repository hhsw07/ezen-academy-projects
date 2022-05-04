/* 상품후기 */
DROP TABLE p5_review 
	CASCADE CONSTRAINTS;

/* 상품후기 */
CREATE TABLE p5_review (
	rev_no NUMBER NOT NULL, /* 후기번호 */
	mem_id VARCHAR2(100) NOT NULL, /* 아이디 */
	rev_name VARCHAR2(500) NOT NULL, /* 후기제목 */
	rev_detail VARCHAR2(3000) NOT NULL, /* 후기내용 */
	rev_date DATE NOT NULL /* 후기등록일 */
);
ALTER TABLE p5_review
	ADD
		CONSTRAINT p5_review_pk
		PRIMARY KEY (
			rev_no
		);

ALTER TABLE p5_review
	ADD
		CONSTRAINT FK_p5_member_TO_p5_review
		FOREIGN KEY (
			mem_id
		)
		REFERENCES p5_member (
			mem_id
		);
CREATE SEQUENCE p5_review_seq
START WITH 1
INCREMENT BY 1
;
INSERT INTO p5_review VALUES (p5_review_seq.nextval,'ezen01','PC냥이 감사의 마음으로 리뷰남겨봅니다.','1.배송:빨랐습니다. 일요일주문후 수요일에 왔으니 뭐 아주 만족합니다\n 포장상태도 3000원 추가하니 정말 안전하게 잘 포장해주셨습니다.\n2.원래는 견적에서 rx570(벌크)를 포함했으나 보라컴측에서 친절하게 바로 다음날\n 재고가 없다고 하시면서 어떻게 진행해 드리냐고 물어봐주셔서 없이 해달라고했는데\n 오늘 택배온거 보니 pci선이랑 따로 나와있게 센스있게 선정리 너무 잘해주셔서 감동했습니다 ^^\n (덕분에 그래픽카드 첨껴보는 저도 손쉽게 꼈습니다)\n3.순조롭게 윈도우까지 깔고 파스 돌려보니 점수 생각만큼 잘 나와줬네요.\n\n정말 감사합니다. 암드가 이제 대세가 될 조짐이 보이긴하지만 그래도 현시점에선\n아직 게임으론 i9100f+rx570이 킹성비조합이라 매우 만족스럽네요\n다음에도 컴퓨터 맞추거나 할땐 PC냥이 1순위로 찾겠습니다.\n친구들한테도 추천도 할거구요.. 번창하세요~',to_date('2019-05-30','YYYY-MM-DD'));
INSERT INTO p5_review VALUES (p5_review_seq.nextval,'ezen02','솔직리뷰','인터넷 이곳저곳 찾아다니다가 우연히 알게됬습니다. 컴퓨터를 사기 전에 인터넷 후기글을 봤는데 다른 미니샵들이 후기가 너무 좋지않더군요... 그래도 다른곳보다 싸서 피씨톡이란 미니샵을 믿고 구매했는데 너무너무 만족합니다. 사장님도 너무 친절하시고 톡톡문의 보내면 바로바로 답장해주시고 그리고 저번주 목요일날 시켰는데 주말에 단순 변심때문에 케이스와 쿨러 교체가 가능하냐고 조심스럽게 여쭤봤는데 바로 알겠다하시고 떻하니 오늘 교체된 부품으로 배송 왔습니다.한가지 아쉬운건 컴터를 주문할때 글카는 집에 있는걸 쓰려고 6+2핀을 미리 빼달라고 부탁드렸었는데 깜빡하셨는지 안빠져있더라구요. 근데 제가 너무 귀찮게 정신없이 톡톡을 보내서 이해는 됬습니다...ㅋㅋㅋ 그래서 6+2핀을 빼려고 옆에를 열었는데 선정리가 너무 깔끔해서 놀랐습니다.만약 나중에 컴터를 또 시키게되면 여기서 또 살거같습니다. 친구컴이랑 제컴이랑 총 2개시켰는데 친구컴도 한번 구경하러가보려구요 ㅋㅋ수고하세요~',to_date('2019-10-16','YYYY-MM-DD'));
INSERT INTO p5_review VALUES (p5_review_seq.nextval,'ezen03','물건 왔습니다~','생애 첨으로 본체를 구입했습니다.^^\n모니터가 며칠 있다가 오다보니 TV에 연결해서 셋팅 했습니다. ^^\n선정리 만족, 배송기간 만족\n많이 파세요~~^^',to_date('2020-03-10','YYYY-MM-DD'));
INSERT INTO p5_review VALUES (p5_review_seq.nextval,'ezen04','본체 잘받았습니다~','본체 받은건 저번주에 받았는데 본가에 받아서 일요일날 집에 설치후 작동확인 했고 잘됩니다.\n배송올때 박스 포장이나 에어캡도 안전하게 잘되있고 선정리도 깔끔히 잘되있습니다.\n택배박스에 기사분들한테 조심히 다뤄달라는 문구가 있는데 마음에듭니다ㅎㅎ',to_date('2020-03-17','YYYY-MM-DD'));
INSERT INTO p5_review VALUES (p5_review_seq.nextval,'ezen05','받은지 좀 됐지만 이제야 후기 ㅎ','받은지 좀 지났지만 이제야 후기 씁니다.\n현재까지 고장하나없이 아주 잘 사용하고 있습니다 ..ㅎㅎ 원래 후기 남기는 성격이 아니라서 \n깜빡하고 있다가 주변에서 다른 곳 컴퓨터 맞추다가 몇주째 교환만 계속 하는 모습보고 문득 생각나서 \n후기씁니다 ..ㅎㅎ 조립도 빠르고 배송도 몇일만에 바로 오고 케이스 전부 깨끗하고 고장하나 없이 잘 와서\n사용중이에요. 다음에도 기회가 된다면 여기에서 맞출거 같아요 ㅎ',to_date('2020-04-01','YYYY-MM-DD'));

SELECT * FROM p5_review;
--------------------------------------
/* 상품후기댓글 */
DROP TABLE p5_revcomm 
	CASCADE CONSTRAINTS;

/* 상품후기댓글 */
CREATE TABLE p5_revcomm (
	revc_no NUMBER NOT NULL, /* 후기댓글번호 */
	rev_no NUMBER NOT NULL, /* 후기번호 */
	mem_id VARCHAR2(100) NOT NULL, /* 아이디 */
	revc_detail VARCHAR2(3000) NOT NULL, /* 후기댓글내용 */
	revc_date DATE NOT NULL /* 후기댓글등록일 */
);
ALTER TABLE p5_revcomm
	ADD
		CONSTRAINT p5_revcomm_pk
		PRIMARY KEY (
			revc_no
		);

ALTER TABLE p5_revcomm
	ADD
		CONSTRAINT FK_p5_review_TO_p5_revcomm
		FOREIGN KEY (
			rev_no
		)
		REFERENCES p5_review (
			rev_no
		);

ALTER TABLE p5_revcomm
	ADD
		CONSTRAINT FK_p5_member_TO_p5_revcomm
		FOREIGN KEY (
			mem_id
		)
		REFERENCES p5_member (
			mem_id
		);
CREATE SEQUENCE p5_revcomm_seq
START WITH 1
INCREMENT BY 1;
	
INSERT INTO p5_revcomm VALUES (p5_revcomm_seq.nextval, 1, 'admin', '좋은 리뷰~ 정말 감사합니다.\n새로운 컴퓨터와 함께 좋은 날들 되시기를 바랍니다.\n감사합니다.',to_date('2019-05-31','YYYY-MM-DD'));
INSERT INTO p5_revcomm VALUES (p5_revcomm_seq.nextval, 2, 'admin', '안녕하세요. 통합 고객만족센터입니다.\n우선 그래픽카드 핀 못 빼놓은 것은 죄송합니다.\n최근 인력 교체가 발생하면서 회사내에서 내용을 놓친 것 같습니다.\n또한 너무나도 좋은 리뷰, 정말 감사드립니다.\n이런 리뷰를 보면 일하는 것이 행복해집니다. ^^\n앞으로 더 노력하는 회사가 되도록 하겠습니다.\n감사합니다.',to_date('2019-10-16','YYYY-MM-DD'));
INSERT INTO p5_revcomm VALUES (p5_revcomm_seq.nextval, 3, 'admin', '안녕하세요. 통합 고객만족센터입니다.\n좋은 리뷰, 너무 감사합니다.\n오랫동안 잘 사용하시기 바랍니다.\n감사합니다. ^^',to_date('2020-03-11','YYYY-MM-DD'));
INSERT INTO p5_revcomm VALUES (p5_revcomm_seq.nextval, 4, 'admin', '안녕하세요. 통합 고객만족센터입니다.\n요즘처럼 어려운 때에 좋은 리뷰를 써주셔서 진심으로 감사드립니다.\n정말 큰 힘이 됩니다.\n건승하시기를 바랍니다.^^',to_date('2020-03-18','YYYY-MM-DD'));
INSERT INTO p5_revcomm VALUES (p5_revcomm_seq.nextval, 5, 'admin', '좋은 리뷰 너무나 감사드립니다. ^^\n최선을 다하고 있습니다.\n코로나19 때문에 많이 어려운 상황인데\n건승하시기를 바랍니다.\n감사합니다.',to_date('2020-04-12','YYYY-MM-DD'));


SELECT * FROM p5_revcomm;