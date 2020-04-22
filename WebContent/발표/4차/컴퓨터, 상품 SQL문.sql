--상품 등록
insert into p5_parts values (p5_parts_seq.nextval,'잘만 MegaMax 600W 80PLUS STANDARD',48000,100,'잘만 MegaMax 600W 80PLUS STANDARD.jpg','잘만 MegaMax 600W 80PLUS STANDARD_detail.jpg','파워','잘만','600W 이상','20핀+4핀','80 PLUS 스탠다드',' ',' ');
--상품 전체 목록(상품은 최대가 204개)
SELECT * FROM p5_parts ORDER BY parts_no asc;
--상품 분류(분류를 정확히 적어야 함)
SELECT * FROM p5_parts 
WHERE parts_mc='RAM'
ORDER BY parts_no asc;
--상품 상세
SELECT * FROM p5_parts 
WHERE parts_no=1;
--상품 삭제
DELETE FROM p5_parts
WHERE parts_no=204;
--상품 수정
UPDATE p5_parts
SET parts_name = 'name',
	parts_price = 0,
	parts_stock = 0
WHERE parts_no = 204;


-- 컴퓨터 등록
-- INSERT INTO p5_computer VALUES (p5_computer_seq.nextval, 'admin','PCCAT-WS02','워크스테이션','PCCAT-WS02.jpg','PCCAT_COMDETAIL.jpg',2873000);
-- 컴퓨터에 해당하는 견적 등록
-- INSERT INTO p5_assembly VALUES (1001,1,1);
-- 등록된 컴퓨터 전체 목록
SELECT * FROM p5_computer;
-- 전체 컴퓨터 목록(견적포함)
SELECT pa.com_no, parts_name, parts_cnt, parts_mc, 
com_name, com_kind, com_img, com_detail, com_price
FROM p5_assembly pa, p5_parts pp, p5_computer pc
WHERE pa.parts_no = pp.parts_no
AND pa.com_no = pc.com_no;
-- 컴퓨터 분류에 따른 목록
SELECT pa.com_no, parts_name, parts_cnt, parts_mc, 
com_name, com_kind, com_img, com_detail, com_price
FROM p5_assembly pa, p5_parts pp, p5_computer pc
WHERE pa.parts_no = pp.parts_no
AND pa.com_no = pc.com_no
AND pc.com_kind = '가정/사무용';
--특정 컴퓨터 상세
SELECT pa.com_no, parts_name, parts_cnt, parts_mc, 
com_name, com_kind, com_img, com_detail, com_price
FROM p5_assembly pa, p5_parts pp, p5_computer pc
WHERE pa.parts_no = pp.parts_no
AND pa.com_no = pc.com_no
AND pa.com_no = 1001;
-- 삭제(삭제는 견적-컴퓨터 순으로 삭제)
-- 컴퓨터에 해당하는 견적 삭제
DELETE FROM p5_assembly WHERE com_no=1001;
-- 컴퓨터 삭제
DELETE FROM p5_computer WHERE com_no=1001;

-- 컴퓨터 수정
UPDATE p5_computer
SET com_name = 'name',
com_kind = 'kind'
WHERE com_no=1001;
-- 컴퓨터에 해당하는 견적 수정
UPDATE p5_computer
SET parts_no = 0,
parts_cnt = 0
WHERE com_no=1001;