-- 회원
SELECT * FROM p5_member;

-- 부품
SELECT * FROM p5_parts;

-- 컴퓨터
SELECT * FROM p5_computer;

-- 견적
SELECT * FROM p5_assembly;

-- 견적문의
SELECT * FROM p5_assque;

-- 포인트
SELECT * FROM p5_point;

-- 주문
SELECT * FROM p5_order;

-- 상품주문
SELECT * FROM p5_request;

-- 결제
SELECT * FROM p5_pay;

-- as 신청
SELECT * FROM p5_as;

-- as 관리
SELECT * FROM p5_mgr;

--상품주문에 따른 가격(총가격 = 갯수*상품가격)
SELECT pr.ord_no, pr.req_no, a.parts_no, (pr.req_cnt*a.parts_price) FROM p5_request pr, 
(SELECT parts_no, parts_name, PARTS_PRICE FROM p5_parts
UNION
SELECT com_no, com_name, com_price FROM p5_computer) a
WHERE pr.REQ_NO = a.parts_no
ORDER BY ord_no asc;

--주문번호에 대한 총 가격
SELECT pr.ord_no, sum(pr.req_cnt*a.parts_price) FROM p5_request pr, 
(SELECT parts_no, parts_name, PARTS_PRICE FROM p5_parts
UNION
SELECT com_no, com_name, com_price FROM p5_computer) a
WHERE pr.REQ_NO = a.parts_no
GROUP BY ord_n
ORDER BY ord_no asc;

-----------------------------------------------------------------------
-- 주문/배송 조회
SELECT pr.ord_no, a.parts_img, a.parts_name, pr.req_cnt, (pr.req_cnt*a.parts_price) req, d.total, c.ord_date, c.ord_stat 
FROM p5_request pr, 
	(SELECT parts_no, parts_img, parts_name, PARTS_PRICE FROM p5_parts
	UNION SELECT com_no, com_img, com_name, com_price FROM p5_computer) a, P5_ORDER c,
	(SELECT pr.ord_no, sum(pr.req_cnt*a.parts_price) total FROM p5_request pr, 
		(SELECT parts_no, parts_name, PARTS_PRICE FROM p5_parts
		UNION
		SELECT com_no, com_name, com_price FROM p5_computer) a
	WHERE pr.REQ_NO = a.parts_no
	GROUP BY ord_no
	ORDER BY ord_no ASC) d
WHERE pr.REQ_NO = a.parts_no AND c.ord_no = pr.ord_no AND d.ord_no = pr.ord_no 
AND c.mem_id='ezen01'
ORDER BY ord_no DESC;

-- 주문/배송 상세정보


-- 주문하기
INSERT INTO p5_order VALUES (to_date(sysdate,'yymmdd')||p5_order_seq.nextval,?, to_date(sysdate,'YYYY-MM-DD'),?,?,?,?,?,'','결제완료','')
-- 주문 테이블에서 주문번호 받기
SELECT max(ord_no) FROM p5_order
WHERE MEM_ID = 'ezen01';
-- 받은 주문번호를 통해 상품, 수량 담기
INSERT INTO p5_request VALUES (?, ?, ?, ?);
-- 주문번호 결제방법 사용한 포인트, 최종 결제금액
INSERT INTO p5_pay VALUES (p5_pay_seq.nextval,?,?,?,?);
-- 포인트사용
SELECT b.lastpay, a.pay_point, a.pay_price 
FROM P5_PAY a, (SELECT max(pay_no) lastpay FROM p5_pay) b
WHERE a.PAY_NO = lastpay;

INSERT INTO p5_point VALUES (p5_point_seq.nextval, 'ezen01',sysdate,'상품구매사용',사용포인트)
-- 재고 수정
UPDATE P5_PARTS
SET PARTS_STOCK = PARTS_STOCK - req_cnt
WHERE PARTS_NO = req_no
-- 포인트적립
INSERT INTO p5_point VALUES (p5_point_seq.nextval, 'ezen01',sysdate,'상품구매적립',CEIL((총 금액-사용포인트)*0.01))

-- 카트담기
SELECT parts_no, parts_img, parts_name, parts_price 
FROM (SELECT parts_no, parts_img, parts_name, PARTS_PRICE FROM p5_parts
	UNION SELECT com_no, com_img, com_name, com_price FROM p5_computer) 
WHERE parts_no=10;


-----------------------------------------------------------------------------------------
-- 포인트조회
SELECT point_date, point_detail, point_pt
FROM p5_point
WHERE mem_id = 'ezen01'
ORDER BY point_no DESC;

-- 사용가능 포인트
SELECT sum(point_pt) FROM P5_POINT
WHERE mem_id = 'ezen01';
-- 총 적립포인트
SELECT sum(point_pt) FROM P5_POINT
WHERE mem_id = 'ezen01'
AND POINT_PT>=0;
-- 사용한 포인트
SELECT sum(point_pt) FROM P5_POINT
WHERE mem_id = 'ezen01'
AND POINT_PT<0;

-- 포인트계산
SELECT a.tot, b.pl, c.mi
FROM (SELECT sum(point_pt) tot FROM P5_POINT
WHERE mem_id = 'ezen01') a,
(SELECT sum(point_pt) pl FROM P5_POINT
WHERE mem_id = 'ezen01'
AND POINT_PT>=0) b,
(SELECT sum(point_pt) mi FROM P5_POINT
WHERE mem_id = 'ezen01'
AND POINT_PT<0) c;


SELECT MEM_ID, sum(point_pt) pl FROM P5_POINT
WHERE POINT_PT>=0
GROUP BY MEM_ID;
----------------------------------------------------------------------------------------------------
-- AS 리스트
SELECT as_no, as_cate, mem_id, as_date
FROM p5_as a, P5_ORDER b 
WHERE a.ORD_NO = b.ORD_NO
ORDER BY as_no DESC;

-- 주문번호 불러오기
SELECT pr.ord_no, a.parts_img, a.parts_name, pr.req_cnt, (pr.req_cnt*a.parts_price) req, c.ord_date
FROM p5_request pr, 
	(SELECT parts_no, parts_img, parts_name, PARTS_PRICE FROM p5_parts
	UNION SELECT com_no, com_img, com_name, com_price FROM p5_computer) a, P5_ORDER c
WHERE pr.REQ_NO = a.parts_no AND c.ord_no = pr.ord_no  
AND c.mem_id='ezen01'
ORDER BY ord_no ASC;

-- AS 상세조회
SELECT as_cate, mem_id, as_date, pr.ord_no, a.parts_img, a.parts_name, pr.req_cnt, a.parts_price, c.ord_date, as_detail, as_comm, as_comdate
FROM P5_AS d, p5_request pr, 
	(SELECT parts_no, parts_img, parts_name, PARTS_PRICE FROM p5_parts
	UNION SELECT com_no, com_img, com_name, com_price FROM p5_computer) a, P5_ORDER c
WHERE pr.REQ_NO = a.parts_no AND c.ord_no = pr.ord_no  
AND d.ORD_NO = c.ORD_NO
AND as_no=1;

-- AS 신청
INSERT INTO p5_as VALUES (p5_as_seq.nextval, 2001221001,'AS','컴퓨터가 안켜져요',to_date('2020-02-22','YYYY-MM-DD'),'고객님의 회원정보에 등록된 연락처로 연락드렸습니다',to_date('2020-02-24','YYYY-MM-DD'));

SELECT max(as_no) FROM P5_AS;
INSERT INTO p5_mgr VALUES (p5_mgr_seq.nextval, 1, to_date('2020-02-26','YYYY-MM-DD'), '완료','유선을 통한 점검 후 AS진행',0);




