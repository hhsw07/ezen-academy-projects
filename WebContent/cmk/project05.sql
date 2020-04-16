-- 회원정보
INSERT INTO p5_member VALUES ('ezen01','ezen01','김형준',to_date('1991-01-06','YYYY-MM-DD'),'ezen01@naver.com','010-1010-6015',to_date('2020-01-15','YYYY-MM-DD'));
INSERT INTO p5_member VALUES ('ezen02','ezen02','전현규',to_date('1992-02-07','YYYY-MM-DD'),'ezen02@naver.com','010-2011-7016',to_date('2020-02-24','YYYY-MM-DD'));
INSERT INTO p5_member VALUES ('ezen03','ezen03','최민기',to_date('1993-03-08','YYYY-MM-DD'),'ezen03@naver.com','010-3012-8017',to_date('2020-03-06','YYYY-MM-DD'));
INSERT INTO p5_member VALUES ('ezen04','ezen04','한송우',to_date('1994-04-09','YYYY-MM-DD'),'ezen04@naver.com','010-4013-9018',to_date('2020-03-31','YYYY-MM-DD'));
INSERT INTO p5_member VALUES ('ezen05','ezen05','홍길동',to_date('1995-05-10','YYYY-MM-DD'),'ezen05@naver.com','010-5014-1019',sysdate);
-- 포인트
INSERT INTO p5_point VALUES(p5_point_seq.nextval,'ezen01',to_date('2020-01-22','YYYY-MM-DD'),'상품구매 사용', -3000);
INSERT INTO p5_point VALUES(p5_point_seq.nextval,'ezen01',to_date('2020-01-29','YYYY-MM-DD'),'상품구매 적립', CEIL(1000000*0.07));

INSERT INTO p5_point VALUES(p5_point_seq.nextval,'ezen02',to_date('2020-02-13','YYYY-MM-DD'),'상품구매 사용', -3000);
INSERT INTO p5_point VALUES(p5_point_seq.nextval,'ezen02',to_date('2020-02-21','YYYY-MM-DD'),'상품구매 적립', CEIL(1100000*0.07));

INSERT INTO p5_point VALUES(p5_point_seq.nextval,'ezen03',to_date('2020-01-22','YYYY-MM-DD'),'상품구매 사용', -3000);
INSERT INTO p5_point VALUES(p5_point_seq.nextval,'ezen03',to_date('2020-01-29','YYYY-MM-DD'),'상품구매 적립', CEIL(1200000*0.07));

INSERT INTO p5_point VALUES(p5_point_seq.nextval,'ezen04',to_date('2020-02-13','YYYY-MM-DD'),'상품구매 사용', -3000);
INSERT INTO p5_point VALUES(p5_point_seq.nextval,'ezen04',to_date('2020-02-21','YYYY-MM-DD'),'상품구매 적립', CEIL(1500000*0.07));

INSERT INTO p5_point VALUES(p5_point_seq.nextval,'ezen01',to_date('2020-02-13','YYYY-MM-DD'),'상품구매 사용', -3000);




-- 주문
-- to_number(to_char(sysdate,'yymmdd'))||p5_order_seq.nextval
-- 주문번호 아이디 주문일 수령인 연락처 우편번호 주소 상세주소 요청사항 주문상태 운송장
INSERT INTO p5_order VALUES (200122||p5_order_seq.nextval,'ezen01',to_date('2020-01-22','YYYY-MM-DD'),'김형준','010-1010-6015','03190','서울 종로구 종로 78','미려빌딩 6층','배송 전 연락부탁드립니다','배송완료',355766247001);
INSERT INTO p5_order VALUES (200122||p5_order_seq.nextval,'ezen02',to_date('2020-02-13','YYYY-MM-DD'),'전현규','010-2011-7016','03780','서울 서대문구 신촌로 141','은하빌딩 1층','배송 전 연락부탁드립니다','배송완료',363250336305);
INSERT INTO p5_order VALUES (200122||p5_order_seq.nextval,'ezen03',to_date('2020-01-22','YYYY-MM-DD'),'최민기','010-3012-8017','07222','서울 영등포구 당산로49길 4','태인빌딩 1F','배송 전 연락부탁드립니다','배송완료',358535261416);
INSERT INTO p5_order VALUES (200122||p5_order_seq.nextval,'ezen01',to_date('2020-01-22','YYYY-MM-DD'),'김형준','010-1010-6015','03190','서울 종로구 종로 78','미려빌딩 6층','배송 전 연락부탁드립니다','배송완료',359049584692);
INSERT INTO p5_order VALUES (to_number(to_char(sysdate,'yymmdd'))||p5_order_seq.nextval,'ezen04',sysdate,'한송우','010-4013-9018','01695','서울 노원구 상계로 64',' 화랑빌딩 7F ','배송 전 연락부탁드립니다','결제완료',null);










































