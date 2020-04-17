-- 회원정보
INSERT INTO p5_member VALUES ('ezen01','ezen01','김형준',to_date('1991-01-06','YYYY-MM-DD'),'ezen01@naver.com','010-1010-6015',to_date('2020-01-15','YYYY-MM-DD'));
INSERT INTO p5_member VALUES ('ezen02','ezen02','전현규',to_date('1992-02-07','YYYY-MM-DD'),'ezen02@naver.com','010-2011-7016',to_date('2020-02-24','YYYY-MM-DD'));
INSERT INTO p5_member VALUES ('ezen03','ezen03','최민기',to_date('1993-03-08','YYYY-MM-DD'),'ezen03@naver.com','010-3012-8017',to_date('2020-03-06','YYYY-MM-DD'));
INSERT INTO p5_member VALUES ('ezen04','ezen04','한송우',to_date('1994-04-09','YYYY-MM-DD'),'ezen04@naver.com','010-4013-9018',to_date('2020-03-31','YYYY-MM-DD'));
INSERT INTO p5_member VALUES ('ezen05','ezen05','홍길동',to_date('1995-05-10','YYYY-MM-DD'),'ezen05@naver.com','010-5014-1019',sysdate);
-- 포인트
INSERT INTO p5_point VALUES(p5_point_seq.nextval,'ezen01',to_date('2020-01-15','YYYY-MM-DD'),'회원가입 포인트', 3000);
INSERT INTO p5_point VALUES(p5_point_seq.nextval,'ezen01',to_date('2020-01-22','YYYY-MM-DD'),'상품구매 사용', -3000);
INSERT INTO p5_point VALUES(p5_point_seq.nextval,'ezen01',to_date('2020-01-29','YYYY-MM-DD'),'상품구매 적립', CEIL((1000000-3000)*0.008));
INSERT INTO p5_point VALUES(p5_point_seq.nextval,'ezen01',to_date('2020-02-17','YYYY-MM-DD'),'상품구매 사용', -7976);
INSERT INTO p5_point VALUES(p5_point_seq.nextval,'ezen02',to_date('2020-02-24','YYYY-MM-DD'),'회원가입 포인트', 3000);
-- MSI 지포스 RTX 2080 Ti 게이밍 X 트리오 D6 11GB 트라이프로져',1809000
INSERT INTO p5_point VALUES(p5_point_seq.nextval,'ezen01',to_date('2020-02-25','YYYY-MM-DD'),'상품구매 적립', CEIL((1809000-7976)*0.008));

INSERT INTO p5_point VALUES(p5_point_seq.nextval,'ezen02',to_date('2020-02-28','YYYY-MM-DD'),'상품구매 사용', -3000);
INSERT INTO p5_point VALUES(p5_point_seq.nextval,'ezen03',to_date('2020-03-06','YYYY-MM-DD'),'회원가입 포인트', 3000); 
INSERT INTO p5_point VALUES(p5_point_seq.nextval,'ezen02',to_date('2020-03-06','YYYY-MM-DD'),'상품구매 적립', CEIL((1100000-3000)*0.008));
INSERT INTO p5_point VALUES(p5_point_seq.nextval,'ezen03',to_date('2020-03-17','YYYY-MM-DD'),'상품구매 사용', -3000);
INSERT INTO p5_point VALUES(p5_point_seq.nextval,'ezen03',to_date('2020-03-25','YYYY-MM-DD'),'상품구매 적립', CEIL((1200000-3000)*0.008));
INSERT INTO p5_point VALUES(p5_point_seq.nextval,'ezen04',to_date('2020-03-31','YYYY-MM-DD'),'회원가입 포인트', 3000);
INSERT INTO p5_point VALUES(p5_point_seq.nextval,'ezen04',to_date('2020-04-06','YYYY-MM-DD'),'상품구매 사용', -3000);
INSERT INTO p5_point VALUES(p5_point_seq.nextval,'ezen04',to_date('2020-04-13','YYYY-MM-DD'),'상품구매 적립', CEIL((1500000-3000)*0.008));

INSERT INTO p5_point VALUES(p5_point_seq.nextval,'ezen05',sysdate,'회원가입 포인트', 3000);
INSERT INTO p5_point VALUES(p5_point_seq.nextval,'ezen05',sysdate,'상품구매사용', -3000);



-- 주문
-- to_number(to_char(sysdate,'yymmdd'))||p5_order_seq.nextval
-- 주문번호 아이디 주문일 수령인 연락처 우편번호 주소 상세주소 요청사항 주문상태 운송장
INSERT INTO p5_order VALUES (200122||p5_order_seq.nextval,'ezen01',to_date('2020-01-22','YYYY-MM-DD'),'김형준','010-1010-6015','03190','서울 종로구 종로 78','미려빌딩 6층','배송 전 연락부탁드립니다','배송완료',355766247001);
INSERT INTO p5_order VALUES (200217||p5_order_seq.nextval,'ezen01',to_date('2020-02-17','YYYY-MM-DD'),'김형준','010-1010-6015','03190','서울 종로구 종로 78','미려빌딩 6층','배송 전 연락부탁드립니다','배송완료',359049584692);
INSERT INTO p5_order VALUES (200228||p5_order_seq.nextval,'ezen02',to_date('2020-02-28','YYYY-MM-DD'),'전현규','010-2011-7016','03780','서울 서대문구 신촌로 141','은하빌딩 1층','배송 전 연락부탁드립니다','배송완료',363250336305);
INSERT INTO p5_order VALUES (200317||p5_order_seq.nextval,'ezen03',to_date('2020-03-17','YYYY-MM-DD'),'최민기','010-3012-8017','07222','서울 영등포구 당산로49길 4','태인빌딩 1F','배송 전 연락부탁드립니다','배송완료',358535261416);
INSERT INTO p5_order VALUES (200406||p5_order_seq.nextval,'ezen04',to_date('2020-04-06','YYYY-MM-DD'),'한송우','010-4013-9018','01695','서울 노원구 상계로 64','화랑빌딩 7F','배송 전 연락부탁드립니다','배송완료',355937227170);

INSERT INTO p5_order VALUES (to_number(to_char(sysdate,'yymmdd'))||p5_order_seq.nextval,'ezen05',sysdate,'홍길동','010-4013-9018','01695','서울 노원구 상계로 64',' 화랑빌딩 7F ','배송 전 연락부탁드립니다','결제완료',null);

-- 상품주문
/*
2001221001 (p5_computer_seq.nextval, 'ezen01','ezen01님의 컴퓨터','개인사양','PCCAT-USER01.jpg','',1000000);
2002171002  (p5_parts_seq.nextval,'MSI 지포스 RTX 2080 Ti 게이밍 X 트리오 D6 11GB 트라이프로져',1809000,100,'MSI 지포스 RTX 2080 Ti 게이밍 X 트리오 D6 11GB 트라이프로져.jpg','MSI 지포스 RTX 2080 Ti 게이밍 X 트리오 D6 11GB 트라이프로져_detail.jpg','그래픽카드','MSI','NVIDIA',' ',' ',' ',' ');
2002281003 (p5_computer_seq.nextval, 'ezen02','ezen02님의 컴퓨터','개인사양','PCCAT-USER02.jpg','',1100000);
2003171004 (p5_computer_seq.nextval, 'ezen03','ezen03님의 컴퓨터','개인사양','PCCAT-USER03.jpg','',1200000);
2004061005 (p5_computer_seq.nextval, 'ezen04','ezen04님의 컴퓨터','개인사양','PCCAT-USER04.jpg','',1500000);

to_number(to_char(sysdate,'yymmdd'))1006  (p5_parts_seq.nextval,'삼성전자 970 EVO Plus M.2 2280(1TB)',340780,100,'삼성전자 970 EVO Plus M.2 2280(1TB).jpg','삼성전자 970 EVO Plus M.2 2280(1TB)_detail.jpg','SSD','삼성전자','1TB','M.2',' ',' ',' ');
										 (p5_parts_seq.nextval,'인텔 코어i7-9세대 9700K (커피레이크-R) (정품)',558660,100,'인텔 코어i7-9세대 9700K (커피레이크-R) (정품).jpg','인텔 코어i7-9세대 9700K (커피레이크-R) (정품)_detail.jpg','CPU','인텔','95W','인텔(코어i7-9세대)','8코어','정품','3.5 ~ 3.99 GHz');

 */

-- 결제
/*
2001221001 (p5_computer_seq.nextval, 'ezen01','ezen01님의 컴퓨터','개인사양','PCCAT-USER01.jpg','',1000000);
2002171002  (p5_parts_seq.nextval,'MSI 지포스 RTX 2080 Ti 게이밍 X 트리오 D6 11GB 트라이프로져',1809000,100,'MSI 지포스 RTX 2080 Ti 게이밍 X 트리오 D6 11GB 트라이프로져.jpg','MSI 지포스 RTX 2080 Ti 게이밍 X 트리오 D6 11GB 트라이프로져_detail.jpg','그래픽카드','MSI','NVIDIA',' ',' ',' ',' ');
2002281003 (p5_computer_seq.nextval, 'ezen02','ezen02님의 컴퓨터','개인사양','PCCAT-USER02.jpg','',1100000);
2003171004 (p5_computer_seq.nextval, 'ezen03','ezen03님의 컴퓨터','개인사양','PCCAT-USER03.jpg','',1200000);
2004061005 (p5_computer_seq.nextval, 'ezen04','ezen04님의 컴퓨터','개인사양','PCCAT-USER04.jpg','',1500000);

to_number(to_char(sysdate,'yymmdd'))1006
 */

INSERT INTO p5_pay VALUES (p5_pay_seq.nextval,2001221001,'신용카드',3000,(1000000-3000));
INSERT INTO p5_pay VALUES (p5_pay_seq.nextval,2002171002,'신용카드',7976,(1809000-7976));
INSERT INTO p5_pay VALUES (p5_pay_seq.nextval,2002281003,'신용카드',3000,(1100000-3000));
INSERT INTO p5_pay VALUES (p5_pay_seq.nextval,2003171004,'신용카드',3000,(1200000-3000));
INSERT INTO p5_pay VALUES (p5_pay_seq.nextval,2004061005,'신용카드',3000,(1500000-3000));

INSERT INTO p5_pay VALUES (p5_pay_seq.nextval,to_number(to_char(sysdate,'yymmdd'))1006,'신용카드',3000,(340780+558660-3000))









































