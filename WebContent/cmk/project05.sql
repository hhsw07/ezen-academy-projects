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
ORDER BY ord_no asc;

-- 주문/배송 상세정보


-- 주문하기
--INSERT INTO p5_order VALUES (to_date(sysdate,'yymmdd')||p5_order_seq.nextval,'ezen01', to_date(sysdate,'YYYY-MM-DD'),'홍길동','010-5014-1019','06611','서울 서초구 서초대로77길 54','서초더블유타워 13층','','결제완료','')
SELECT max(ord_no) FROM p5_order
WHERE MEM_ID = 'ezen01';

-- 재고 수정
UPDATE P5_PARTS
SET PARTS_STOCK = PARTS_STOCK - req_cnt
WHERE PARTS_NO = req_no


-- 카트담기
SELECT parts_no, parts_img, parts_name, parts_price 
FROM (SELECT parts_no, parts_img, parts_name, PARTS_PRICE FROM p5_parts
	UNION SELECT com_no, com_img, com_name, com_price FROM p5_computer) 
WHERE parts_no=10;


(SELECT pr.ord_no, sum(pr.req_cnt*a.parts_price) FROM p5_request pr, 
(SELECT parts_no, parts_name, PARTS_PRICE FROM p5_parts
UNION
SELECT com_no, com_name, com_price FROM p5_computer) a
WHERE pr.REQ_NO = a.parts_no
GROUP BY ord_no
ORDER BY ord_no ASC) d;


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


-- AS 리스트
SELECT as_no, as_cate, mem_id, as_date
FROM p5_as a, P5_ORDER b 
WHERE a.ORD_NO = b.ORD_NO
ORDER BY as_no DESC;
-- AS 상세조회
