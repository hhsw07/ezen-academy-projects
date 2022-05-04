/* 회원 */
DROP TABLE p5_member; 
	CASCADE CONSTRAINTS;

/* 회원 */
CREATE TABLE p5_member (
	mem_id VARCHAR2(100) NOT NULL, /* 아이디 */
	mem_pw VARCHAR2(100) NOT NULL, /* 비밀번호 */
	mem_name VARCHAR2(100) NOT NULL, /* 이름 */
	mem_birth DATE NOT NULL, /* 생년월일 */
	mem_email VARCHAR2(100) NOT NULL, /* 이메일 */
	mem_tel VARCHAR2(100) NOT NULL, /* 휴대폰 */
	mem_jdate DATE NOT NULL /* 회원가입일 */
);

ALTER TABLE p5_member
	ADD
		CONSTRAINT p5_member_pk
		PRIMARY KEY (
			mem_id
		);

--
INSERT INTO p5_member VALUES ('admin','admin','관리자',to_date('1990-01-01','YYYY-MM-DD'),'admin@naver.com','010-0000-0000',to_date('2020-01-01','YYYY-MM-DD'));
INSERT INTO p5_member VALUES ('ezen01','ezen01','김형준',to_date('1991-01-06','YYYY-MM-DD'),'ezen01@naver.com','010-1010-6015',to_date('2020-01-15','YYYY-MM-DD'));
INSERT INTO p5_member VALUES ('ezen02','ezen02','전현규',to_date('1992-02-07','YYYY-MM-DD'),'ezen02@naver.com','010-2011-7016',to_date('2020-02-24','YYYY-MM-DD'));
INSERT INTO p5_member VALUES ('ezen03','ezen03','최민기',to_date('1993-03-08','YYYY-MM-DD'),'ezen03@naver.com','010-3012-8017',to_date('2020-03-06','YYYY-MM-DD'));
INSERT INTO p5_member VALUES ('ezen04','ezen04','한송우',to_date('1994-04-09','YYYY-MM-DD'),'ezen04@naver.com','010-4013-9018',to_date('2020-03-31','YYYY-MM-DD'));
INSERT INTO p5_member VALUES ('ezen05','ezen05','홍길동',to_date('1995-05-10','YYYY-MM-DD'),'ezen05@naver.com','010-5014-1019',to_date('2020-04-17','YYYY-MM-DD'));



SELECT * FROM p5_member;

--------------------------------------------
/* 컴퓨터부품 */
DROP TABLE p5_parts 
	CASCADE CONSTRAINTS;

/* 컴퓨터부품 */
CREATE TABLE p5_parts (
	parts_no NUMBER NOT NULL, /* 부품번호 */
	parts_name VARCHAR2(200) NOT NULL, /* 부품명 */
	parts_price NUMBER NOT NULL, /* 부품가격 */
	parts_stock NUMBER NOT NULL, /* 부품재고량 */
	parts_img VARCHAR2(200) NOT NULL, /* 부품썸네일 */
	parts_detail VARCHAR2(200) NOT NULL, /* 부품상세 */
	parts_mc VARCHAR2(100) NOT NULL, /* 대분류 */
	parts_sc1 VARCHAR2(100), /* 소분류1 */
	parts_sc2 VARCHAR2(100), /* 소분류2 */
	parts_sc3 VARCHAR2(100), /* 소분류3 */
	parts_sc4 VARCHAR2(100), /* 소분류4 */
	parts_sc5 VARCHAR2(100), /* 소분류5 */
	parts_sc6 VARCHAR2(100) /* 소분류6 */
);

ALTER TABLE p5_parts
	ADD
		CONSTRAINT p5_parts_pk
		PRIMARY KEY (
			parts_no
		);

CREATE SEQUENCE p5_parts_seq
START WITH 1
INCREMENT BY 1;

insert into p5_parts values (p5_parts_seq.nextval,'AMD RYZEN 3 2200G (레이븐 릿지)(정품)',121890,100,'AMD RYZEN 3 2200G (레이븐 릿지)(정품).jpg','AMD RYZEN 3 2200G (레이븐 릿지)(정품)_detail.jpg','CPU','AMD','65W','AMD(라이젠 3)','4코어','정품','3.5 ~ 3.99 GHz');
insert into p5_parts values (p5_parts_seq.nextval,'AMD RYZEN 3 3200G (피카소)(정품)',137280,100,'AMD RYZEN 3 3200G (피카소)(정품).jpg','AMD RYZEN 3 3200G (피카소)(정품)_detail.jpg','CPU','AMD','65W','AMD(라이젠 3)','4코어','정품','3.5 ~ 3.99 GHz');
insert into p5_parts values (p5_parts_seq.nextval,'AMD RYZEN 5 3500 (마티스)(멀티팩)',189350,100,'AMD RYZEN 5 3500 (마티스)(멀티팩).jpg','AMD RYZEN 5 3500 (마티스)(멀티팩)_detail.jpg','CPU','AMD','65W','AMD(라이젠 5)','6코어','정품','3.5 ~ 3.99 GHz');
insert into p5_parts values (p5_parts_seq.nextval,'AMD RYZEN 5 3500X (마티스)(멀티팩)',204090,100,'AMD RYZEN 5 3500X (마티스)(멀티팩).jpg','AMD RYZEN 5 3500X (마티스)(멀티팩)_detail.jpg','CPU','AMD','65W','AMD(라이젠 5)','6코어','정품','3.5 ~ 3.99 GHz');
insert into p5_parts values (p5_parts_seq.nextval,'AMD RYZEN 5 3600 (마티스)(정품)',272830,100,'AMD RYZEN 5 3600 (마티스)(정품).jpg','AMD RYZEN 5 3600 (마티스)(정품)_detail.jpg','CPU','AMD','65W','AMD(라이젠 5)','6코어','정품','3.5 ~ 3.99 GHz');
insert into p5_parts values (p5_parts_seq.nextval,'AMD RYZEN 7 3700X (마티스)(정품)',438420,100,'AMD RYZEN 7 3700X (마티스)(정품).jpg','AMD RYZEN 7 3700X (마티스)(정품)_detail.jpg','CPU','AMD','65W','AMD(라이젠 9)','8코어','정품','3.5 ~ 3.99 GHz');
insert into p5_parts values (p5_parts_seq.nextval,'AMD RYZEN 9 3900X (마티스)(정품)',702790,100,'AMD RYZEN 9 3900X (마티스)(정품).jpg','AMD RYZEN 9 3900X (마티스)(정품)_detail.jpg','CPU','AMD','105W','AMD(라이젠 8)','12코어','정품','3.5 ~ 3.99 GHz');
insert into p5_parts values (p5_parts_seq.nextval,'인텔 코어i3-9세대 9100F (커피레이크-R)(정품)',99170,100,'인텔 코어i3-9세대 9100F (커피레이크-R)(정품).jpg','인텔 코어i3-9세대 9100F (커피레이크-R)(정품)_detail.jpg','CPU','인텔','65W','인텔(코어i3-9세대)','4코어','정품','3.5 ~ 3.99 GHz');
insert into p5_parts values (p5_parts_seq.nextval,'인텔 코어i5-9세대 9400F (커피레이크-R)(정품)',253800,100,'인텔 코어i5-9세대 9400F (커피레이크-R)(정품).jpg','인텔 코어i5-9세대 9400F (커피레이크-R)(정품)_detail.jpg','CPU','인텔','65W','인텔(코어i5-9세대)','6코어','정품','2.5 ~ 2.99 GHz');
insert into p5_parts values (p5_parts_seq.nextval,'인텔 코어i5-9세대 9600KF (커피레이크-R)(정품)',265030,100,'인텔 코어i5-9세대 9600KF (커피레이크-R)(정품).jpg','인텔 코어i5-9세대 9600KF (커피레이크-R)(정품)_detail.jpg','CPU','인텔','95W','인텔(코어i5-9세대)','6코어','정품','3.5 ~ 3.99 GHz');
insert into p5_parts values (p5_parts_seq.nextval,'인텔 코어i7-9세대 9700F (커피레이크-R)(정품)',433790,100,'인텔 코어i7-9세대 9700F (커피레이크-R)(정품).jpg','인텔 코어i7-9세대 9700F (커피레이크-R)(정품)_detail.jpg','CPU','인텔','65W','인텔(코어i7-9세대)','8코어','정품','3.0 ~ 3.49 GHz');
insert into p5_parts values (p5_parts_seq.nextval,'인텔 코어i7-9세대 9700K (커피레이크-R) (정품)',558660,100,'인텔 코어i7-9세대 9700K (커피레이크-R) (정품).jpg','인텔 코어i7-9세대 9700K (커피레이크-R) (정품)_detail.jpg','CPU','인텔','95W','인텔(코어i7-9세대)','8코어','정품','3.5 ~ 3.99 GHz');
insert into p5_parts values (p5_parts_seq.nextval,'인텔 코어i9-9세대 9900K (커피레이크-R)(정품)',720330,100,'인텔 코어i9-9세대 9900K (커피레이크-R)(정품).jpg','인텔 코어i9-9세대 9900K (커피레이크-R)(정품)_detail.jpg','CPU','인텔','95W','인텔(코어i9-9세대)','8코어','정품','3.5 ~ 3.99 GHz');
insert into p5_parts values (p5_parts_seq.nextval,'인텔 코어X-시리즈 i9-10900X (캐스케이드레이크)(정품)',1340780,100,'인텔 코어X-시리즈 i9-10900X (캐스케이드레이크)(정품).jpg','인텔 코어X-시리즈 i9-10900X (캐스케이드레이크)(정품)_detail.jpg','CPU','인텔','165W','인텔(코어X-시리즈)','10코어','정품','3.5 ~ 3.99 GHz');
insert into p5_parts values (p5_parts_seq.nextval,'ASRock A320M-HDV R4.0',73000,100,'ASRock A320M-HDV R4.0.jpg','ASRock A320M-HDV R4.0_detail.jpg','메인보드','ASRock','(AMD) A320','DDR4','2','1개',' ');
insert into p5_parts values (p5_parts_seq.nextval,'ASRock B365M PRO4',110000,100,'ASRock B365M PRO4.jpg','ASRock B365M PRO4_detail.jpg','메인보드','ASRock','(인텔) B365','DDR4','4','2개',' ');
insert into p5_parts values (p5_parts_seq.nextval,'ASRock B450M PRO4',110000,100,'ASRock B450M PRO4.jpg','ASRock B450M PRO4_detail.jpg','메인보드','ASRock','(AMD) B450','DDR4','4','2개',' ');
insert into p5_parts values (p5_parts_seq.nextval,'ASRock B450M 스틸레전드',118000,100,'ASRock B450M 스틸레전드.jpg','ASRock B450M 스틸레전드_detail.jpg','메인보드','ASRock','(AMD) B450','DDR4','4','2개',' ');
insert into p5_parts values (p5_parts_seq.nextval,'ASRock B450M-HDV R4.0',93000,100,'ASRock B450M-HDV R4.0.jpg','ASRock B450M-HDV R4.0_detail.jpg','메인보드','ASRock','(AMD) B450','DDR4','2','1개',' ');
insert into p5_parts values (p5_parts_seq.nextval,'ASRock H310CM-HDV Plus',84000,100,'ASRock H310CM-HDV Plus.jpg','ASRock H310CM-HDV Plus_detail.jpg','메인보드','ASRock','(인텔) H310','DDR4','2','0개',' ');
insert into p5_parts values (p5_parts_seq.nextval,'ASRock Z390 EXTREME4',239000,100,'ASRock Z390 EXTREME4.jpg','ASRock Z390 EXTREME4_detail.jpg','메인보드','ASRock','(인텔) Z390','DDR4','4','2개',' ');
insert into p5_parts values (p5_parts_seq.nextval,'ASUS EX A320M-GAMING',94970,100,'ASUS EX A320M-GAMING.jpg','ASUS EX A320M-GAMING_detail.jpg','메인보드','ASUS','(AMD) A320','DDR4','4','1개',' ');
insert into p5_parts values (p5_parts_seq.nextval,'ASUS PRIME B365M-A',121790,100,'ASUS PRIME B365M-A.jpg','ASUS PRIME B365M-A_detail.jpg','메인보드','ASUS','(인텔) B365','DDR4','4','2개',' ');
insert into p5_parts values (p5_parts_seq.nextval,'ASUS PRIME H310M-A R2.0',84000,100,'ASUS PRIME H310M-A R2.0.jpg','ASUS PRIME H310M-A R2.0_detail.jpg','메인보드','ASUS','(인텔) H310','DDR4','2','1개',' ');
insert into p5_parts values (p5_parts_seq.nextval,'ASUS PRIME Z390-A',275980,100,'ASUS PRIME Z390-A.jpg','ASUS PRIME Z390-A_detail.jpg','메인보드','ASUS','(인텔) Z390','DDR4','4','2개',' ');
insert into p5_parts values (p5_parts_seq.nextval,'ASUS ROG STRIX X570-F GAMING',435000,100,'ASUS ROG STRIX X570-F GAMING.jpg','ASUS ROG STRIX X570-F GAMING_detail.jpg','메인보드','ASUS','(AMD) X570','DDR4','4','2개',' ');
insert into p5_parts values (p5_parts_seq.nextval,'ASUS TUF B450M-PRO GAMING',143000,100,'ASUS TUF B450M-PRO GAMING.jpg','ASUS TUF B450M-PRO GAMING_detail.jpg','메인보드','ASUS','(AMD) B450','DDR4','4','2개',' ');
insert into p5_parts values (p5_parts_seq.nextval,'ASUS TUF Gaming X570-PLUS',316000,100,'ASUS TUF Gaming X570-PLUS.jpg','ASUS TUF Gaming X570-PLUS_detail.jpg','메인보드','ASUS','(AMD) X570','DDR4','4','2개',' ');
insert into p5_parts values (p5_parts_seq.nextval,'BIOSTAR A320MH',61450,100,'BIOSTAR A320MH.jpg','BIOSTAR A320MH_detail.jpg','메인보드','BIOSTAR','(AMD) A320','DDR4','2','0개',' ');
insert into p5_parts values (p5_parts_seq.nextval,'BIOSTAR B450MH',85470,100,'BIOSTAR B450MH.jpg','BIOSTAR B450MH_detail.jpg','메인보드','BIOSTAR','(AMD) B450','DDR4','2','1개',' ');
insert into p5_parts values (p5_parts_seq.nextval,'BIOSTAR H81A BTC',65920,100,'BIOSTAR H81A BTC.jpg','BIOSTAR H81A BTC_detail.jpg','메인보드','BIOSTAR','(인텔) H81','DDR3','2','0개',' ');
insert into p5_parts values (p5_parts_seq.nextval,'BIOSTAR H310MHD PRO2',70950,100,'BIOSTAR H310MHD PRO2.jpg','BIOSTAR H310MHD PRO2_detail.jpg','메인보드','BIOSTAR','(인텔) H310','DDR4','2','1개',' ');
insert into p5_parts values (p5_parts_seq.nextval,'BIOSTAR H310MHP',67040,100,'BIOSTAR H310MHP.jpg','BIOSTAR H310MHP_detail.jpg','메인보드','BIOSTAR','(인텔) H310','DDR4','2','0개',' ');
insert into p5_parts values (p5_parts_seq.nextval,'BIOSTAR RACING B450GT3',103910,100,'BIOSTAR RACING B450GT3.jpg','BIOSTAR RACING B450GT3_detail.jpg','메인보드','BIOSTAR','(AMD) B450','DDR4','4','1개',' ');
insert into p5_parts values (p5_parts_seq.nextval,'BIOSTAR RACING X570GT',169830,100,'BIOSTAR RACING X570GT.jpg','BIOSTAR RACING X570GT_detail.jpg','메인보드','BIOSTAR','(AMD) X570','DDR4','4','1개',' ');
insert into p5_parts values (p5_parts_seq.nextval,'GIGABYTE B365M DS3H 듀러블에디션',99440,100,'GIGABYTE B365M DS3H 듀러블에디션.jpg','GIGABYTE B365M DS3H 듀러블에디션_detail.jpg','메인보드','GIGABYTE','(인텔) B365','DDR4','4','1개',' ');
insert into p5_parts values (p5_parts_seq.nextval,'GIGABYTE GA-A320M-S2H 듀러블에디션',75980,100,'GIGABYTE GA-A320M-S2H 듀러블에디션.jpg','GIGABYTE GA-A320M-S2H 듀러블에디션_detail.jpg','메인보드','GIGABYTE','(AMD) A320','DDR4','2','1개',' ');
insert into p5_parts values (p5_parts_seq.nextval,'GIGABYTE H310M DS2V 2.0 듀러블에디션',78210,100,'GIGABYTE H310M DS2V 2.0 듀러블에디션.jpg','GIGABYTE H310M DS2V 2.0 듀러블에디션_detail.jpg','메인보드','GIGABYTE','(인텔) H310','DDR4','2','0개',' ');
insert into p5_parts values (p5_parts_seq.nextval,'GIGABYTE X570 AORUS ELITE',299000,100,'GIGABYTE X570 AORUS ELITE.jpg','GIGABYTE X570 AORUS ELITE_detail.jpg','메인보드','GIGABYTE','(AMD) X570','DDR4','4','2개',' ');
insert into p5_parts values (p5_parts_seq.nextval,'GIGABYTE X570 AORUS MASTER',532000,100,'GIGABYTE X570 AORUS MASTER.jpg','GIGABYTE X570 AORUS MASTER_detail.jpg','메인보드','GIGABYTE','(AMD) X570','DDR4','4','3개',' ');
insert into p5_parts values (p5_parts_seq.nextval,'GIGABYTE X570 I AORUS PRO WIFI',363000,100,'GIGABYTE X570 I AORUS PRO WIFI.jpg','GIGABYTE X570 I AORUS PRO WIFI_detail.jpg','메인보드','GIGABYTE','(AMD) X570','DDR4','2','2개',' ');
insert into p5_parts values (p5_parts_seq.nextval,'GIGABYTE Z390 AORUS ELITE',255000,100,'GIGABYTE Z390 AORUS ELITE.jpg','GIGABYTE Z390 AORUS ELITE_detail.jpg','메인보드','GIGABYTE','(인텔) Z390','DDR4','4','2개',' ');
insert into p5_parts values (p5_parts_seq.nextval,'MSI A320M-A PRO',65000,100,'MSI A320M-A PRO.jpg','MSI A320M-A PRO_detail.jpg','메인보드','MSI','(AMD) A320','DDR4','2','0개',' ');
insert into p5_parts values (p5_parts_seq.nextval,'MSI B360M 박격포',116200,100,'MSI B360M 박격포.jpg','MSI B360M 박격포_detail.jpg','메인보드','MSI','(인텔) B360','DDR4','4','2개',' ');
insert into p5_parts values (p5_parts_seq.nextval,'MSI B450 게이밍 프로 카본 AC',164000,100,'MSI B450 게이밍 프로 카본 AC.jpg','MSI B450 게이밍 프로 카본 AC_detail.jpg','메인보드','MSI','(AMD) B450','DDR4','4','2개',' ');
insert into p5_parts values (p5_parts_seq.nextval,'MSI H310M PRO-VD PLUS',75000,100,'MSI H310M PRO-VD PLUS.jpg','MSI H310M PRO-VD PLUS_detail.jpg','메인보드','MSI','(인텔) H310','DDR4','2','0개',' ');
insert into p5_parts values (p5_parts_seq.nextval,'MSI MAG B365M 박격포',113970,100,'MSI MAG B365M 박격포.jpg','MSI MAG B365M 박격포_detail.jpg','메인보드','MSI','(인텔) B365','DDR4','4','1개',' ');
insert into p5_parts values (p5_parts_seq.nextval,'MSI MAG B450M 박격포',121000,100,'MSI MAG B450M 박격포.jpg','MSI MAG B450M 박격포_detail.jpg','메인보드','MSI','(AMD) B450 ','DDR4','4','2개',' ');
insert into p5_parts values (p5_parts_seq.nextval,'MSI X570-A PRO',209000,100,'MSI X570-A PRO.jpg','MSI X570-A PRO_detail.jpg','메인보드','MSI','(AMD) X570','DDR4','4','2개',' ');
insert into p5_parts values (p5_parts_seq.nextval,'ADATA XPG DDR4 8G PC4-21300 CL16 SPECTRIX D41 크림슨 레드',57060,100,'ADATA XPG DDR4 8G PC4-21300 CL16 SPECTRIX D41 크림슨 레드.jpg','ADATA XPG DDR4 8G PC4-21300 CL16 SPECTRIX D41 크림슨 레드_detail.jpg','RAM','ADATA','2,666MHz','8GB','DDR4',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'ADATA XPG DDR4 16G PC4-21300 CL16 SPECTRIX D41 크림슨 레드 (8Gx2)',107340,100,'ADATA XPG DDR4 16G PC4-21300 CL16 SPECTRIX D41 크림슨 레드 (8Gx2).jpg','ADATA XPG DDR4 16G PC4-21300 CL16 SPECTRIX D41 크림슨 레드 (8Gx2)_detail.jpg','RAM','ADATA','2,666MHz','16GB','DDR4',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'ADATA XPG DDR4 16G PC4-25600 CL16 SPECTRIX D60G RGB (8Gx2)',143500,100,'ADATA XPG DDR4 16G PC4-25600 CL16 SPECTRIX D60G RGB (8Gx2).jpg','ADATA XPG DDR4 16G PC4-25600 CL16 SPECTRIX D60G RGB (8Gx2)_detail.jpg','RAM','ADATA','3,200MHz','16GB','DDR4',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'ADATA XPG DDR4 16G PC4-25600 CL16 SPECTRIX D80 레드 (8Gx2)',141240,100,'ADATA XPG DDR4 16G PC4-25600 CL16 SPECTRIX D80 레드 (8Gx2).jpg','ADATA XPG DDR4 16G PC4-25600 CL16 SPECTRIX D80 레드 (8Gx2)_detail.jpg','RAM','ADATA','3,200MHz','16GB','DDR4',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'ADATA XPG DDR4 16G PC4-28800 CL17 SPECTRIX D60G RGB (8Gx2)',210730,100,'ADATA XPG DDR4 16G PC4-28800 CL17 SPECTRIX D60G RGB (8Gx2).jpg','ADATA XPG DDR4 16G PC4-28800 CL17 SPECTRIX D60G RGB (8Gx2)_detail.jpg','RAM','ADATA','3,600MHz','16GB','DDR4',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'ADATA XPG DDR4 16G PC4-28800 CL17 SPECTRIX D80 레드 (8Gx2)',201130,100,'ADATA XPG DDR4 16G PC4-28800 CL17 SPECTRIX D80 레드 (8Gx2).jpg','ADATA XPG DDR4 16G PC4-28800 CL17 SPECTRIX D80 레드 (8Gx2)_detail.jpg','RAM','ADATA','3,600MHz','16GB','DDR4',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'ADATA XPG DDR4 16G PC4-33000 CL19-19-19 SPECTRIX D60G RGB (8Gx2)',248590,100,'ADATA XPG DDR4 16G PC4-33000 CL19-19-19 SPECTRIX D60G RGB (8Gx2).jpg','ADATA XPG DDR4 16G PC4-33000 CL19-19-19 SPECTRIX D60G RGB (8Gx2)_detail.jpg','RAM','ADATA','4,133MHz','16GB','DDR4',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'GeIL DDR4 4G PC4-21300 CL19 PRISTINE',24290,100,'GeIL DDR4 4G PC4-21300 CL19 PRISTINE.jpg','GeIL DDR4 4G PC4-21300 CL19 PRISTINE_detail.jpg','RAM','GeIL','2,666MHz','4GB','DDR4',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'GeIL DDR4 8G PC4-19200 CL17 PRISTINE',47800,100,'GeIL DDR4 8G PC4-19200 CL17 PRISTINE.jpg','GeIL DDR4 8G PC4-19200 CL17 PRISTINE_detail.jpg','RAM','GeIL','2,400MHz','8GB','DDR4',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'GeIL DDR4 8G PC4-21300 CL19 PRISTINE',42490,100,'GeIL DDR4 8G PC4-21300 CL19 PRISTINE.jpg','GeIL DDR4 8G PC4-21300 CL19 PRISTINE_detail.jpg','RAM','GeIL','2,666MHz','8GB','DDR4',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'GeIL DDR4 8G PC4-24000 CL16 EVO SPEAR',50960,100,'GeIL DDR4 8G PC4-24000 CL16 EVO SPEAR.jpg','GeIL DDR4 8G PC4-24000 CL16 EVO SPEAR_detail.jpg','RAM','GeIL','3,000MHz','8GB','DDR4',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'GeIL DDR4 8G PC4-25600 CL22 PRISTINE',47260,100,'GeIL DDR4 8G PC4-25600 CL22 PRISTINE.jpg','GeIL DDR4 8G PC4-25600 CL22 PRISTINE_detail.jpg','RAM','GeIL','3,200MHz','8GB','DDR4',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'GeIL DDR4 16G PC4-25600 CL16 EVO X II AMD Gray RGB (8Gx2)',127460,100,'GeIL DDR4 16G PC4-25600 CL16 EVO X II AMD Gray RGB (8Gx2).jpg','GeIL DDR4 16G PC4-25600 CL16 EVO X II AMD Gray RGB (8Gx2)_detail.jpg','RAM','GeIL','3,200MHz','16GB','DDR4',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'GeIL DDR4 16G PC4-25600 CL16 SUPER LUCE RGB Sync 블랙 (8Gx2)',122150,100,'GeIL DDR4 16G PC4-25600 CL16 SUPER LUCE RGB Sync 블랙 (8Gx2).jpg','GeIL DDR4 16G PC4-25600 CL16 SUPER LUCE RGB Sync 블랙 (8Gx2)_detail.jpg','RAM','GeIL','3,200MHz','16GB','DDR4',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'TeamGroup DDR4 8G PC4-25600 Elite',49720,100,'TeamGroup DDR4 8G PC4-25600 Elite.jpg','TeamGroup DDR4 8G PC4-25600 Elite_detail.jpg','RAM','TeamGroup','3,200MHz','8GB','DDR4',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'TeamGroup T-Force DDR4 8G PC4-21300 CL16 Delta RGB 화이트',58420,100,'TeamGroup T-Force DDR4 8G PC4-21300 CL16 Delta RGB 화이트.jpg','TeamGroup T-Force DDR4 8G PC4-21300 CL16 Delta RGB 화이트_detail.jpg','RAM','TeamGroup','2,666MHz','8GB','DDR4',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'TeamGroup T-Force DDR4 16G PC4-25600 CL16 Delta RGB (8Gx2)',127460,100,'TeamGroup T-Force DDR4 16G PC4-25600 CL16 Delta RGB (8Gx2).jpg','TeamGroup T-Force DDR4 16G PC4-25600 CL16 Delta RGB (8Gx2)_detail.jpg','RAM','TeamGroup','3,200MHz','16GB','DDR4',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'TeamGroup T-Force DDR4 16G PC4-25600 CL16 Delta RGB 화이트 (8Gx2)',127460,100,'TeamGroup T-Force DDR4 16G PC4-25600 CL16 Delta RGB 화이트 (8Gx2).jpg','TeamGroup T-Force DDR4 16G PC4-25600 CL16 Delta RGB 화이트 (8Gx2)_detail.jpg','RAM','TeamGroup','3,200MHz','16GB','DDR4',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'TeamGroup T-Force DDR4 16G PC4-25600 CL16 XTREEM ARGB (8Gx2)',169940,100,'TeamGroup T-Force DDR4 16G PC4-25600 CL16 XTREEM ARGB (8Gx2).jpg','TeamGroup T-Force DDR4 16G PC4-25600 CL16 XTREEM ARGB (8Gx2)_detail.jpg','RAM','TeamGroup','3,200MHz','16GB','DDR4',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'TeamGroup T-Force DDR4 32G PC4-25600 CL16 Delta RGB (16Gx2)',238980,100,'TeamGroup T-Force DDR4 32G PC4-25600 CL16 Delta RGB (16Gx2).jpg','TeamGroup T-Force DDR4 32G PC4-25600 CL16 Delta RGB (16Gx2)_detail.jpg','RAM','TeamGroup','3,200MHz','32GB','DDR4',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'TeamGroup T-Force DDR4 32G PC4-25600 CL16 Delta RGB 화이트 (16Gx2)',238980,100,'TeamGroup T-Force DDR4 32G PC4-25600 CL16 Delta RGB 화이트 (16Gx2).jpg','TeamGroup T-Force DDR4 32G PC4-25600 CL16 Delta RGB 화이트 (16Gx2)_detail.jpg','RAM','TeamGroup','3,200MHz','32GB','DDR4',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'마이크론 Crucial Ballistix DDR4 16G PC4-21300 CL16 Tactical Tracer RGB (8Gx2)',112990,100,'마이크론 Crucial Ballistix DDR4 16G PC4-21300 CL16 Tactical Tracer RGB (8Gx2).jpg','마이크론 Crucial Ballistix DDR4 16G PC4-21300 CL16 Tactical Tracer RGB (8Gx2)_detail.jpg','RAM','마이크론','2,666MHz','16GB','DDR4',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'마이크론 Crucial Ballistix DDR4 16G PC4-25600 CL16 RGB Red (8Gx2)',143020,100,'마이크론 Crucial Ballistix DDR4 16G PC4-25600 CL16 RGB Red (8Gx2).jpg','마이크론 Crucial Ballistix DDR4 16G PC4-25600 CL16 RGB Red (8Gx2)_detail.jpg','RAM','마이크론','3,200MHz','16GB','DDR4',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'마이크론 Crucial Ballistix DDR4 16G PC4-25600 CL16 RGB White (8Gx2)',143020,100,'마이크론 Crucial Ballistix DDR4 16G PC4-25600 CL16 RGB White (8Gx2).jpg','마이크론 Crucial Ballistix DDR4 16G PC4-25600 CL16 RGB White (8Gx2)_detail.jpg','RAM','마이크론','3,200MHz','16GB','DDR4',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'마이크론 Crucial DDR4 8G PC4-21300 CL19',44070,100,'마이크론 Crucial DDR4 8G PC4-21300 CL19.jpg','마이크론 Crucial DDR4 8G PC4-21300 CL19_detail.jpg','RAM','마이크론','2,666MHz','8GB','DDR4',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'삼성전자 DDR3 8G PC3-12800(정품)',66670,100,'삼성전자 DDR3 8G PC3-12800(정품).jpg','삼성전자 DDR3 8G PC3-12800(정품)_detail.jpg','RAM','삼성전자','1,600MHz','8GB','DDR3',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'삼성전자 DDR4 4G PC4-21300(정품)',21130,100,'삼성전자 DDR4 4G PC4-21300(정품).jpg','삼성전자 DDR4 4G PC4-21300(정품)_detail.jpg','RAM','삼성전자','2,666MHz','4GB','DDR4',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'삼성전자 DDR4 8G PC4-19200(정품)',55370,100,'삼성전자 DDR4 8G PC4-19200(정품).jpg','삼성전자 DDR4 8G PC4-19200(정품)_detail.jpg','RAM','삼성전자','2,400MHz','8GB','DDR4',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'삼성전자 DDR4 8G PC4-21300(정품)',42490,100,'삼성전자 DDR4 8G PC4-21300(정품).jpg','삼성전자 DDR4 8G PC4-21300(정품)_detail.jpg','RAM','삼성전자','2,666MHz','8GB','DDR4',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'삼성전자 DDR4 16G PC4-19200(정품)',109600,100,'삼성전자 DDR4 16G PC4-19200(정품).jpg','삼성전자 DDR4 16G PC4-19200(정품)_detail.jpg','RAM','삼성전자','2,400MHz','16GB','DDR4',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'삼성전자 DDR4 16G PC4-21300(정품)',82940,100,'삼성전자 DDR4 16G PC4-21300(정품).jpg','삼성전자 DDR4 16G PC4-21300(정품)_detail.jpg','RAM','삼성전자','2,666MHz','16GB','DDR4',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'삼성전자 DDR4 32G PC4-21300(정품)',172880,100,'삼성전자 DDR4 32G PC4-21300(정품).jpg','삼성전자 DDR4 32G PC4-21300(정품)_detail.jpg','RAM','삼성전자','2,666MHz','32GB','DDR4',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'ASRock 라데온 RX 5700 CHALLENGER D OC D6 8GB',430860,100,'ASRock 라데온 RX 5700 CHALLENGER D OC D6 8GB.jpg','ASRock 라데온 RX 5700 CHALLENGER D OC D6 8GB_detail.jpg','그래픽카드','ASRock','AMD',' ',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'ASUS ROG STRIX 라데온 RX 5700 O8G GAMING D6 8GB',592000,100,'ASUS ROG STRIX 라데온 RX 5700 O8G GAMING D6 8GB.jpg','ASUS ROG STRIX 라데온 RX 5700 O8G GAMING D6 8GB_detail.jpg','그래픽카드','ASUS','AMD',' ',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'ASUS ROG STRIX 라데온 RX 5700 XT O8G GAMING D6 8GB',681000,100,'ASUS ROG STRIX 라데온 RX 5700 XT O8G GAMING D6 8GB.jpg','ASUS ROG STRIX 라데온 RX 5700 XT O8G GAMING D6 8GB_detail.jpg','그래픽카드','ASUS','AMD',' ',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'ASUS ROG STRIX 지포스 RTX 2080 Ti O11G GAMING D6 11GB',2093000,100,'ASUS ROG STRIX 지포스 RTX 2080 Ti O11G GAMING D6 11GB.jpg','ASUS ROG STRIX 지포스 RTX 2080 Ti O11G GAMING D6 11GB_detail.jpg','그래픽카드','ASUS','NVIDIA',' ',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'ASUS TURBO 지포스 RTX 2080 Ti D6 11GB',1817000,100,'ASUS TURBO 지포스 RTX 2080 Ti D6 11GB.jpg','ASUS TURBO 지포스 RTX 2080 Ti D6 11GB_detail.jpg','그래픽카드','ASUS','NVIDIA',' ',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'EVGA 지포스 RTX 2080 Ti FTW3 ULTRA GAMING D6 11GB',2090500,100,'EVGA 지포스 RTX 2080 Ti FTW3 ULTRA GAMING D6 11GB.jpg','EVGA 지포스 RTX 2080 Ti FTW3 ULTRA GAMING D6 11GB_detail.jpg','그래픽카드','EVGA','NVIDIA',' ',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'GIGABYTE AORUS 지포스 RTX 2080 D6 8GB',1050280,100,'GIGABYTE AORUS 지포스 RTX 2080 D6 8GB.jpg','GIGABYTE AORUS 지포스 RTX 2080 D6 8GB_detail.jpg','그래픽카드','GIGABYTE','NVIDIA',' ',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'GIGABYTE 라데온 RX 5700 D6 8GB',499440,100,'GIGABYTE 라데온 RX 5700 D6 8GB.jpg','GIGABYTE 라데온 RX 5700 D6 8GB_detail.jpg','그래픽카드','GIGABYTE','AMD',' ',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'GIGABYTE 라데온 RX 5700 Gaming OC D6 8GB',516200,100,'GIGABYTE 라데온 RX 5700 Gaming OC D6 8GB.jpg','GIGABYTE 라데온 RX 5700 Gaming OC D6 8GB_detail.jpg','그래픽카드','GIGABYTE','AMD',' ',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'GIGABYTE 지포스 GTX 1660 Ti UDV OC D6 6GB',408940,100,'GIGABYTE 지포스 GTX 1660 Ti UDV OC D6 6GB.jpg','GIGABYTE 지포스 GTX 1660 Ti UDV OC D6 6GB_detail.jpg','그래픽카드','GIGABYTE','NVIDIA',' ',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'GIGABYTE 지포스 RTX 2060 UDV OC D6 6GB',456980,100,'GIGABYTE 지포스 RTX 2060 UDV OC D6 6GB.jpg','GIGABYTE 지포스 RTX 2060 UDV OC D6 6GB_detail.jpg','그래픽카드','GIGABYTE','NVIDIA',' ',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'MSI 라데온 RX 5700 XT 게이밍 X D6 8GB 트윈프로져7',549000,100,'MSI 라데온 RX 5700 XT 게이밍 X D6 8GB 트윈프로져7.jpg','MSI 라데온 RX 5700 XT 게이밍 X D6 8GB 트윈프로져7_detail.jpg','그래픽카드','MSI','AMD',' ',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'MSI 라데온 RX 5700 XT 메크 OC D6 8GB',469000,100,'MSI 라데온 RX 5700 XT 메크 OC D6 8GB.jpg','MSI 라데온 RX 5700 XT 메크 OC D6 8GB_detail.jpg','그래픽카드','MSI','AMD',' ',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'MSI 라데온 RX 5700 게이밍 X D6 8GB 트윈프로져7',458000,100,'MSI 라데온 RX 5700 게이밍 X D6 8GB 트윈프로져7.jpg','MSI 라데온 RX 5700 게이밍 X D6 8GB 트윈프로져7_detail.jpg','그래픽카드','MSI','AMD',' ',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'MSI 라데온 RX 5700 메크 OC D6 8GB',399000,100,'MSI 라데온 RX 5700 메크 OC D6 8GB.jpg','MSI 라데온 RX 5700 메크 OC D6 8GB_detail.jpg','그래픽카드','MSI','AMD',' ',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'MSI 지포스 GTX 1660 Ti 벤투스 S D6 6GB',384360,100,'MSI 지포스 GTX 1660 Ti 벤투스 S D6 6GB.jpg','MSI 지포스 GTX 1660 Ti 벤투스 S D6 6GB_detail.jpg','그래픽카드','MSI','NVIDIA',' ',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'MSI 지포스 RTX 2060 벤투스 S OC D6 6GB',458100,100,'MSI 지포스 RTX 2060 벤투스 S OC D6 6GB.jpg','MSI 지포스 RTX 2060 벤투스 S OC D6 6GB_detail.jpg','그래픽카드','MSI','NVIDIA',' ',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'MSI 지포스 RTX 2080 Ti 게이밍 X 트리오 D6 11GB 트라이프로져',1809000,100,'MSI 지포스 RTX 2080 Ti 게이밍 X 트리오 D6 11GB 트라이프로져.jpg','MSI 지포스 RTX 2080 Ti 게이밍 X 트리오 D6 11GB 트라이프로져_detail.jpg','그래픽카드','MSI','NVIDIA',' ',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'MSI 지포스 RTX 2080 Ti 벤투스 GP D6 11GB',1490000,100,'MSI 지포스 RTX 2080 Ti 벤투스 GP D6 11GB.jpg','MSI 지포스 RTX 2080 Ti 벤투스 GP D6 11GB_detail.jpg','그래픽카드','MSI','NVIDIA',' ',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'MSI 지포스 RTX 2080 시호크 X D6 8GB',1010000,100,'MSI 지포스 RTX 2080 시호크 X D6 8GB.jpg','MSI 지포스 RTX 2080 시호크 X D6 8GB_detail.jpg','그래픽카드','MSI','NVIDIA',' ',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'SAPPHIRE 라데온 RX 5700 XT NITRO+ OC D6 8GB Tri-X',616760,100,'SAPPHIRE 라데온 RX 5700 XT NITRO+ OC D6 8GB Tri-X.jpg','SAPPHIRE 라데온 RX 5700 XT NITRO+ OC D6 8GB Tri-X_detail.jpg','그래픽카드','SAPPHIRE','AMD',' ',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'SAPPHIRE 라데온 RX 5700 XT NITRO+ Special Edition OC D6 8GB Tri-X',639660,100,'SAPPHIRE 라데온 RX 5700 XT NITRO+ Special Edition OC D6 8GB Tri-X.jpg','SAPPHIRE 라데온 RX 5700 XT NITRO+ Special Edition OC D6 8GB Tri-X_detail.jpg','그래픽카드','SAPPHIRE','AMD',' ',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'ZOTAC GAMING 지포스 RTX 2080 AMP EXTREME D6 8GB',1106150,100,'ZOTAC GAMING 지포스 RTX 2080 AMP EXTREME D6 8GB.jpg','ZOTAC GAMING 지포스 RTX 2080 AMP EXTREME D6 8GB_detail.jpg','그래픽카드','ZOTAC','NVIDIA',' ',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'이엠텍 HV 지포스 RTX 2060 STORM X Dual V2 OC D6 6GB',460340,100,'이엠텍 HV 지포스 RTX 2060 STORM X Dual V2 OC D6 6GB.jpg','이엠텍 HV 지포스 RTX 2060 STORM X Dual V2 OC D6 6GB_detail.jpg','그래픽카드','이엠텍','NVIDIA',' ',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'이엠텍 XENON 지포스 GTX 1660 Ti STORM X Dual D6 6GB WHITE',397770,100,'이엠텍 XENON 지포스 GTX 1660 Ti STORM X Dual D6 6GB WHITE.jpg','이엠텍 XENON 지포스 GTX 1660 Ti STORM X Dual D6 6GB WHITE_detail.jpg','그래픽카드','이엠텍','NVIDIA',' ',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'이엠텍 XENON 지포스 GTX 1660 Ti STORM X Dual OC D6 6GB WHITE',396000,100,'이엠텍 XENON 지포스 GTX 1660 Ti STORM X Dual OC D6 6GB WHITE.jpg','이엠텍 XENON 지포스 GTX 1660 Ti STORM X Dual OC D6 6GB WHITE_detail.jpg','그래픽카드','이엠텍','NVIDIA',' ',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'이엠텍 지포스 RTX 2060 MIRACLE D6 6GB',456980,100,'이엠텍 지포스 RTX 2060 MIRACLE D6 6GB.jpg','이엠텍 지포스 RTX 2060 MIRACLE D6 6GB_detail.jpg','그래픽카드','이엠텍','NVIDIA',' ',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'이엠텍 지포스 RTX 2060 STORM X Dual OC D6 6GB',486030,100,'이엠텍 지포스 RTX 2060 STORM X Dual OC D6 6GB.jpg','이엠텍 지포스 RTX 2060 STORM X Dual OC D6 6GB_detail.jpg','그래픽카드','이엠텍','NVIDIA',' ',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'이엠텍 지포스 RTX 2080 Ti BLACK EDITION V2 OC D6 11GB',1620000,100,'이엠텍 지포스 RTX 2080 Ti BLACK EDITION V2 OC D6 11GB.jpg','이엠텍 지포스 RTX 2080 Ti BLACK EDITION V2 OC D6 11GB_detail.jpg','그래픽카드','이엠텍','NVIDIA',' ',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'이엠텍 지포스 RTX 2080 Ti D6 11GB BLOWER',1531000,100,'이엠텍 지포스 RTX 2080 Ti D6 11GB BLOWER.jpg','이엠텍 지포스 RTX 2080 Ti D6 11GB BLOWER_detail.jpg','그래픽카드','이엠텍','NVIDIA',' ',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'Seagate Maxtor Z1 SSD(240GB)',54190,100,'Seagate Maxtor Z1 SSD(240GB).jpg','Seagate Maxtor Z1 SSD(240GB)_detail.jpg','SSD','Seagate','240GB','2.5'' SSD',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'Seagate 바라쿠다 120 SSD(1TB)',184130,100,'Seagate 바라쿠다 120 SSD(1TB).jpg','Seagate 바라쿠다 120 SSD(1TB)_detail.jpg','SSD','Seagate','1TB','2.5'' SSD',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'Seagate 바라쿠다 120 SSD(2TB)',356760,100,'Seagate 바라쿠다 120 SSD(2TB).jpg','Seagate 바라쿠다 120 SSD(2TB)_detail.jpg','SSD','Seagate','2TB','2.5'' SSD',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'Seagate 바라쿠다 120 SSD(250GB)',68490,100,'Seagate 바라쿠다 120 SSD(250GB).jpg','Seagate 바라쿠다 120 SSD(250GB)_detail.jpg','SSD','Seagate','250GB','2.5'' SSD',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'Seagate 바라쿠다 120 SSD(500GB)',102460,100,'Seagate 바라쿠다 120 SSD(500GB).jpg','Seagate 바라쿠다 120 SSD(500GB)_detail.jpg','SSD','Seagate','500GB','2.5'' SSD',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'Seagate 파이어쿠다 520 M.2 SSD(1TB)',389000,100,'Seagate 파이어쿠다 520 M.2 SSD(1TB).jpg','Seagate 파이어쿠다 520 M.2 SSD(1TB)_detail.jpg','SSD','Seagate','1TB','M.2',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'Seagate 파이어쿠다 520 M.2 SSD(500GB)',199000,100,'Seagate 파이어쿠다 520 M.2 SSD(500GB).jpg','Seagate 파이어쿠다 520 M.2 SSD(500GB)_detail.jpg','SSD','Seagate','500GB','M.2',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'Western Digital WD Blue 3D SSD(1TB)',184360,100,'Western Digital WD Blue 3D SSD(1TB).jpg','Western Digital WD Blue 3D SSD(1TB)_detail.jpg','SSD','WD','1TB','2.5'' SSD',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'Western Digital WD Blue 3D SSD(250GB)',67040,100,'Western Digital WD Blue 3D SSD(250GB).jpg','Western Digital WD Blue 3D SSD(250GB)_detail.jpg','SSD','WD','250GB','2.5'' SSD',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'Western Digital WD Blue 3D SSD(500GB)',100560,100,'Western Digital WD Blue 3D SSD(500GB).jpg','Western Digital WD Blue 3D SSD(500GB)_detail.jpg','SSD','WD','500GB','2.5'' SSD',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'Western Digital WD Blue SN550 M.2 2280(1TB)',184360,100,'Western Digital WD Blue SN550 M.2 2280(1TB).jpg','Western Digital WD Blue SN550 M.2 2280(1TB)_detail.jpg','SSD','WD','1TB','M.2',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'Western Digital WD Blue SN550 M.2 2280(500GB)',105030,100,'Western Digital WD Blue SN550 M.2 2280(500GB).jpg','Western Digital WD Blue SN550 M.2 2280(500GB)_detail.jpg','SSD','WD','500GB','M.2',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'Western Digital WD Green SSD(120GB)',36870,100,'Western Digital WD Green SSD(120GB).jpg','Western Digital WD Green SSD(120GB)_detail.jpg','SSD','WD','120GB','2.5'' SSD',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'Western Digital WD Green SSD(240GB)',53500,100,'Western Digital WD Green SSD(240GB).jpg','Western Digital WD Green SSD(240GB)_detail.jpg','SSD','WD','240GB','2.5'' SSD',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'마이크론 Crucial BX500 (120GB)',37990,100,'마이크론 Crucial BX500 (120GB).jpg','마이크론 Crucial BX500 (120GB)_detail.jpg','SSD','마이크론','120GB','2.5'' SSD',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'마이크론 Crucial BX500 (240GB)',55870,100,'마이크론 Crucial BX500 (240GB).jpg','마이크론 Crucial BX500 (240GB)_detail.jpg','SSD','마이크론','240GB','2.5'' SSD',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'마이크론 Crucial MX500 (1TB)',179890,100,'마이크론 Crucial MX500 (1TB).jpg','마이크론 Crucial MX500 (1TB)_detail.jpg','SSD','마이크론','1TB','2.5'' SSD',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'마이크론 Crucial MX500 (250GB)',63690,100,'마이크론 Crucial MX500 (250GB).jpg','마이크론 Crucial MX500 (250GB)_detail.jpg','SSD','마이크론','250GB','2.5'' SSD',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'마이크론 Crucial MX500 (500GB)',94970,100,'마이크론 Crucial MX500 (500GB).jpg','마이크론 Crucial MX500 (500GB)_detail.jpg','SSD','마이크론','500GB','2.5'' SSD',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'마이크론 Crucial MX500 M.2 2280 (250GB)',61450,100,'마이크론 Crucial MX500 M.2 2280 (250GB).jpg','마이크론 Crucial MX500 M.2 2280 (250GB)_detail.jpg','SSD','마이크론','250GB','M.2',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'마이크론 Crucial P1 M.2 2280 (500GB)',98320,100,'마이크론 Crucial P1 M.2 2280 (500GB).jpg','마이크론 Crucial P1 M.2 2280 (500GB)_detail.jpg','SSD','마이크론','500GB','M.2',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'삼성전자 860 EVO(1TB)',244690,100,'삼성전자 860 EVO(1TB).jpg','삼성전자 860 EVO(1TB)_detail.jpg','SSD','삼성전자','1TB','2.5'' SSD',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'삼성전자 860 EVO(250GB)',75980,100,'삼성전자 860 EVO(250GB).jpg','삼성전자 860 EVO(250GB)_detail.jpg','SSD','삼성전자','250GB','2.5'' SSD',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'삼성전자 860 EVO(500GB)',122910,100,'삼성전자 860 EVO(500GB).jpg','삼성전자 860 EVO(500GB)_detail.jpg','SSD','삼성전자','500GB','2.5'' SSD',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'삼성전자 970 EVO M.2 2280(1TB)',290500,100,'삼성전자 970 EVO M.2 2280(1TB).jpg','삼성전자 970 EVO M.2 2280(1TB)_detail.jpg','SSD','삼성전자','1TB','M.2',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'삼성전자 970 EVO M.2 2280(500GB)',149720,100,'삼성전자 970 EVO M.2 2280(500GB).jpg','삼성전자 970 EVO M.2 2280(500GB)_detail.jpg','SSD','삼성전자','500GB','M.2',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'삼성전자 970 EVO Plus M.2 2280(1TB)',340780,100,'삼성전자 970 EVO Plus M.2 2280(1TB).jpg','삼성전자 970 EVO Plus M.2 2280(1TB)_detail.jpg','SSD','삼성전자','1TB','M.2',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'삼성전자 970 EVO Plus M.2 2280(500GB)',178770,100,'삼성전자 970 EVO Plus M.2 2280(500GB).jpg','삼성전자 970 EVO Plus M.2 2280(500GB)_detail.jpg','SSD','삼성전자','500GB','M.2',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'Seagate 1TB BarraCuda ST1000DM010 (SATA3-7200-64M)',61000,100,'Seagate 1TB BarraCuda ST1000DM010 (SATA3-7200-64M).jpg','Seagate 1TB BarraCuda ST1000DM010 (SATA3-7200-64M)_detail.jpg','HDD','Seagate','1TB','7,200 RPM',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'Seagate 2TB BarraCuda ST2000DM008 (SATA3-7200-256M)',79440,100,'Seagate 2TB BarraCuda ST2000DM008 (SATA3-7200-256M).jpg','Seagate 2TB BarraCuda ST2000DM008 (SATA3-7200-256M)_detail.jpg','HDD','Seagate','2TB','7,200 RPM',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'Seagate 3TB BarraCuda ST3000DM007 (SATA3-5400-256M)',109000,100,'Seagate 3TB BarraCuda ST3000DM007 (SATA3-5400-256M).jpg','Seagate 3TB BarraCuda ST3000DM007 (SATA3-5400-256M)_detail.jpg','HDD','Seagate','3TB','5,400 RPM',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'Seagate 4TB BarraCuda ST4000DM004 (SATA3-5400-256M)',126000,100,'Seagate 4TB BarraCuda ST4000DM004 (SATA3-5400-256M).jpg','Seagate 4TB BarraCuda ST4000DM004 (SATA3-5400-256M)_detail.jpg','HDD','Seagate','4TB','5,400 RPM',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'Seagate 4TB IronWolf Pro ST4000NE001 (SATA3-7200-128M)',259000,100,'Seagate 4TB IronWolf Pro ST4000NE001 (SATA3-7200-128M).jpg','Seagate 4TB IronWolf Pro ST4000NE001 (SATA3-7200-128M)_detail.jpg','HDD','Seagate','4TB','7,200 RPM',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'Seagate 4TB IronWolf ST4000VN008 (SATA3-5900-64M)',165000,100,'Seagate 4TB IronWolf ST4000VN008 (SATA3-5900-64M).jpg','Seagate 4TB IronWolf ST4000VN008 (SATA3-5900-64M)_detail.jpg','HDD','Seagate','4TB','5,900 RPM',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'Seagate 8TB BarraCuda ST8000DM004 (SATA3-5400-256M)',275000,100,'Seagate 8TB BarraCuda ST8000DM004 (SATA3-5400-256M).jpg','Seagate 8TB BarraCuda ST8000DM004 (SATA3-5400-256M)_detail.jpg','HDD','Seagate','8TB','5,400 RPM',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'Toshiba 1TB P300 HDWD110 (SATA3-7200-64M)',57000,100,'Toshiba 1TB P300 HDWD110 (SATA3-7200-64M).jpg','Toshiba 1TB P300 HDWD110 (SATA3-7200-64M)_detail.jpg','HDD','Toshiva','1TB','7,200 RPM',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'Toshiba 2TB P300 HDWD120 (SATA3-7200-64M)',74000,100,'Toshiba 2TB P300 HDWD120 (SATA3-7200-64M).jpg','Toshiba 2TB P300 HDWD120 (SATA3-7200-64M)_detail.jpg','HDD','Toshiva','2TB','7,200 RPM',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'Toshiba 3TB DT01ACA300 (SATA3-7200-64M)',103910,100,'Toshiba 3TB DT01ACA300 (SATA3-7200-64M).jpg','Toshiba 3TB DT01ACA300 (SATA3-7200-64M)_detail.jpg','HDD','Toshiva','3TB','7,200 RPM',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'Toshiba 3TB P300 HDWD130 (SATA3-7200-64M)',103000,100,'Toshiba 3TB P300 HDWD130 (SATA3-7200-64M).jpg','Toshiba 3TB P300 HDWD130 (SATA3-7200-64M)_detail.jpg','HDD','Toshiva','3TB','7,200 RPM',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'Toshiba 4TB N300 HDWQ140 (SATA3-7200-128M)',155000,100,'Toshiba 4TB N300 HDWQ140 (SATA3-7200-128M).jpg','Toshiba 4TB N300 HDWQ140 (SATA3-7200-128M)_detail.jpg','HDD','Toshiva','4TB','7,200 RPM',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'Toshiba 4TB X300 HDWE140 (SATA3-7200-128M)',145000,100,'Toshiba 4TB X300 HDWE140 (SATA3-7200-128M).jpg','Toshiba 4TB X300 HDWE140 (SATA3-7200-128M)_detail.jpg','HDD','Toshiva','4TB','7,200 RPM',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'Toshiba 10TB X300 HDWR11A (SATA3-7200-256M)',410000,100,'Toshiba 10TB X300 HDWR11A (SATA3-7200-256M).jpg','Toshiba 10TB X300 HDWR11A (SATA3-7200-256M)_detail.jpg','HDD','Toshiva','10TB','7,200 RPM',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'Western Digital 4TB Ultrastar DC HC310 HUS726T4TALA6L4 패키지 (SATA3-7200-256M)',189940,100,'Western Digital 4TB Ultrastar DC HC310 HUS726T4TALA6L4 패키지 (SATA3-7200-256M).jpg','Western Digital 4TB Ultrastar DC HC310 HUS726T4TALA6L4 패키지 (SATA3-7200-256M)_detail.jpg','HDD','WD','4TB','7,200 RPM',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'Western Digital 10TB Ultrastar DC HC330 WUS721010ALE6L4 (SATA3-7200-256M)',465120,100,'Western Digital 10TB Ultrastar DC HC330 WUS721010ALE6L4 (SATA3-7200-256M).jpg','Western Digital 10TB Ultrastar DC HC330 WUS721010ALE6L4 (SATA3-7200-256M)_detail.jpg','HDD','WD','10TB','7,200 RPM',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'Western Digital 12TB Ultrastar DC HC520 HUH721212ALE600 패키지 (SATA3-7200-256M-2PACK)',1050000,100,'Western Digital 12TB Ultrastar DC HC520 HUH721212ALE600 패키지 (SATA3-7200-256M-2PACK).jpg','Western Digital 12TB Ultrastar DC HC520 HUH721212ALE600 패키지 (SATA3-7200-256M-2PACK)_detail.jpg','HDD','WD','12TB','7,200 RPM',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'Western Digital WD 1TB BLUE WD10EZEX (SATA3-7200-64M)',62000,100,'Western Digital WD 1TB BLUE WD10EZEX (SATA3-7200-64M).jpg','Western Digital WD 1TB BLUE WD10EZEX (SATA3-7200-64M)_detail.jpg','HDD','WD','1TB','7,200 RPM',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'Western Digital WD 2TB BLUE WD20EZAZ (SATA3-5400-256M)',78000,100,'Western Digital WD 2TB BLUE WD20EZAZ (SATA3-5400-256M).jpg','Western Digital WD 2TB BLUE WD20EZAZ (SATA3-5400-256M)_detail.jpg','HDD','WD','2TB','5,400 RPM',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'Western Digital WD 4TB BLUE WD40EZRZ (SATA3-5400-64M)',129000,100,'Western Digital WD 4TB BLUE WD40EZRZ (SATA3-5400-64M).jpg','Western Digital WD 4TB BLUE WD40EZRZ (SATA3-5400-64M)_detail.jpg','HDD','WD','4TB','5,400 RPM',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'Western Digital WD 4TB Red WD40EFRX (SATA3-5400-64M)',174590,100,'Western Digital WD 4TB Red WD40EFRX (SATA3-5400-64M).jpg','Western Digital WD 4TB Red WD40EFRX (SATA3-5400-64M)_detail.jpg','HDD','WD','4TB','5,400 RPM',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'ABKO NCORE 미라클 강화유리 LUMIA',59000,100,'ABKO NCORE 미라클 강화유리 LUMIA.jpg','ABKO NCORE 미라클 강화유리 LUMIA_detail.jpg','케이스','ABKO','미들타워','3',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'ABKO NCORE 새턴 풀 아크릴 슬렌더',40670,100,'ABKO NCORE 새턴 풀 아크릴 슬렌더.jpg','ABKO NCORE 새턴 풀 아크릴 슬렌더_detail.jpg','케이스','ABKO','미들타워','3',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'ABKO NCORE 식스팬 풀 아크릴 LUNAR(블랙)',33000,100,'ABKO NCORE 식스팬 풀 아크릴 LUNAR(블랙).jpg','ABKO NCORE 식스팬 풀 아크릴 LUNAR(블랙)_detail.jpg','케이스','ABKO','미들타워','2',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'ABKO NCORE 아수라 풀 아크릴',43000,100,'ABKO NCORE 아수라 풀 아크릴.jpg','ABKO NCORE 아수라 풀 아크릴_detail.jpg','케이스','ABKO','미들타워','3',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'ABKO SUITMASTER 322S 인테이커 강화유리 스펙트럼 Dualight',92000,100,'ABKO SUITMASTER 322S 인테이커 강화유리 스펙트럼 Dualight.jpg','ABKO SUITMASTER 322S 인테이커 강화유리 스펙트럼 Dualight_detail.jpg','케이스','ABKO','미들타워','2',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'ABKO SUITMASTER 361G 칼리스토 강화유리 DOUBLING',85500,100,'ABKO SUITMASTER 361G 칼리스토 강화유리 DOUBLING.jpg','ABKO SUITMASTER 361G 칼리스토 강화유리 DOUBLING_detail.jpg','케이스','ABKO','미들타워','7',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'COX A3 그랜드 메쉬 강화유리 Duplex',50500,100,'COX A3 그랜드 메쉬 강화유리 Duplex.jpg','COX A3 그랜드 메쉬 강화유리 Duplex_detail.jpg','케이스','COX','미들타워','2',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'COX A3 엘리시움 풀 아크릴 HALO',32400,100,'COX A3 엘리시움 풀 아크릴 HALO.jpg','COX A3 엘리시움 풀 아크릴 HALO_detail.jpg','케이스','COX','미들타워','2',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'DAVEN FT903 MESH 강화유리',43580,100,'DAVEN FT903 MESH 강화유리.jpg','DAVEN FT903 MESH 강화유리_detail.jpg','케이스','DAVEN','미들타워','4',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'DAVEN 크리스탈 3.0 풀 아크릴',22350,100,'DAVEN 크리스탈 3.0 풀 아크릴.jpg','DAVEN 크리스탈 3.0 풀 아크릴_detail.jpg','케이스','DAVEN','미들타워','2',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'대양케이스 FREEZER X 강화유리(블랙)',81560,100,'대양케이스 FREEZER X 강화유리(블랙).jpg','대양케이스 FREEZER X 강화유리(블랙)_detail.jpg','케이스','대양케이스','미들타워','4',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'대양케이스 ME NO.8 RGB 강화유리',81500,100,'대양케이스 ME NO.8 RGB 강화유리.jpg','대양케이스 ME NO.8 RGB 강화유리_detail.jpg','케이스','대양케이스','미들타워','4',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'아이구주 G50SE 풀 아크릴',41340,100,'아이구주 G50SE 풀 아크릴.jpg','아이구주 G50SE 풀 아크릴_detail.jpg','케이스','아이구주','미들타워','4',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'아이구주 Ssonny NO.7',44690,100,'아이구주 Ssonny NO.7.jpg','아이구주 Ssonny NO.7_detail.jpg','케이스','아이구주','미들타워','2',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'잘만 N5 MF',40000,100,'잘만 N5 MF.jpg','잘만 N5 MF_detail.jpg','케이스','잘만','미들타워','4',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'잘만 N5 OF',37320,100,'잘만 N5 OF.jpg','잘만 N5 OF_detail.jpg','케이스','잘만','미들타워','4',' ',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'FSP HEXA 85+ 550W 80PLUS BRONZE 프리볼트',62630,100,'FSP HEXA 85+ 550W 80PLUS BRONZE 프리볼트.jpg','FSP HEXA 85+ 550W 80PLUS BRONZE 프리볼트_detail.jpg','파워','FSP','500W 이상','20핀+4핀','80 PLUS 브론즈',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'FSP HEXA 85+ 650W 80PLUS BRONZE 프리볼트',77000,100,'FSP HEXA 85+ 650W 80PLUS BRONZE 프리볼트.jpg','FSP HEXA 85+ 650W 80PLUS BRONZE 프리볼트_detail.jpg','파워','FSP','600W 이상','20핀+4핀','80 PLUS 브론즈',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'FSP HYDRO PRO 600W 80PLUS Bronze 230V EU',72760,100,'FSP HYDRO PRO 600W 80PLUS Bronze 230V EU.jpg','FSP HYDRO PRO 600W 80PLUS Bronze 230V EU_detail.jpg','파워','FSP','600W 이상','24핀 전용','80 PLUS 브론즈',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'FSP HYDRO PRO 700W 80PLUS Bronze 230V EU',86860,100,'FSP HYDRO PRO 700W 80PLUS Bronze 230V EU.jpg','FSP HYDRO PRO 700W 80PLUS Bronze 230V EU_detail.jpg','파워','FSP','700W 이상','24핀 전용','80 PLUS 브론즈',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'FSP HYPER K 500W 80PLUS Standard 230V EU',45810,100,'FSP HYPER K 500W 80PLUS Standard 230V EU.jpg','FSP HYPER K 500W 80PLUS Standard 230V EU_detail.jpg','파워','FSP','500W 이상','24핀 전용','80 PLUS 스탠다드',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'FSP HYPER K 600W 80PLUS Standard 230V EU',57000,100,'FSP HYPER K 600W 80PLUS Standard 230V EU.jpg','FSP HYPER K 600W 80PLUS Standard 230V EU_detail.jpg','파워','FSP','600W 이상','24핀 전용','80 PLUS 스탠다드',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'FSP HYPER K 700W 80PLUS Standard 230V EU',78210,100,'FSP HYPER K 700W 80PLUS Standard 230V EU.jpg','FSP HYPER K 700W 80PLUS Standard 230V EU_detail.jpg','파워','FSP','700W 이상','24핀 전용','80 PLUS 스탠다드',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'마이크로닉스 ASTRO GD 750W 80PLUS GOLD 풀모듈러 FDB',124580,100,'마이크로닉스 ASTRO GD 750W 80PLUS GOLD 풀모듈러 FDB.jpg','마이크로닉스 ASTRO GD 750W 80PLUS GOLD 풀모듈러 FDB_detail.jpg','파워','마이크로닉스','700W 이상','20핀+4핀','80 PLUS 골드',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'마이크로닉스 Classic II 500W +12V Single Rail 85+',47500,100,'마이크로닉스 Classic II 500W +12V Single Rail 85+.jpg','마이크로닉스 Classic II 500W +12V Single Rail 85+_detail.jpg','파워','마이크로닉스','500W 이상','20핀+4핀','80 PLUS 스탠다드',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'마이크로닉스 Classic II 600W +12V Single Rail 85+',58000,100,'마이크로닉스 Classic II 600W +12V Single Rail 85+.jpg','마이크로닉스 Classic II 600W +12V Single Rail 85+_detail.jpg','파워','마이크로닉스','600W 이상','20핀+4핀','80 PLUS 스탠다드',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'마이크로닉스 Classic II 650W 80PLUS Bronze 230V EU HDB PINK',77090,100,'마이크로닉스 Classic II 650W 80PLUS Bronze 230V EU HDB PINK.jpg','마이크로닉스 Classic II 650W 80PLUS Bronze 230V EU HDB PINK_detail.jpg','파워','마이크로닉스','600W 이상','20핀+4핀','80 PLUS 브론즈',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'마이크로닉스 Classic II 650W 80PLUS Bronze 230V EU HDB',75500,100,'마이크로닉스 Classic II 650W 80PLUS Bronze 230V EU HDB.jpg','마이크로닉스 Classic II 650W 80PLUS Bronze 230V EU HDB_detail.jpg','파워','마이크로닉스','600W 이상','20핀+4핀','80 PLUS 브론즈',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'마이크로닉스 Classic II 700W +12V Single Rail 85+',73500,100,'마이크로닉스 Classic II 700W +12V Single Rail 85+.jpg','마이크로닉스 Classic II 700W +12V Single Rail 85+_detail.jpg','파워','마이크로닉스','700W 이상','20핀+4핀','80 PLUS 스탠다드',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'마이크로닉스 Classic II 800W 80PLUS 230V EU',86500,100,'마이크로닉스 Classic II 800W 80PLUS 230V EU.jpg','마이크로닉스 Classic II 800W 80PLUS 230V EU_detail.jpg','파워','마이크로닉스','800W 이상','20핀+4핀','80 PLUS 스탠다드',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'시소닉 CORE GOLD GX-650 Full Modular',105000,100,'시소닉 CORE GOLD GX-650 Full Modular.jpg','시소닉 CORE GOLD GX-650 Full Modular_detail.jpg','파워','시소닉','600W 이상','24핀 전용','80 PLUS 골드',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'시소닉 FOCUS GOLD GX-650 Full Modular',133000,100,'시소닉 FOCUS GOLD GX-650 Full Modular.jpg','시소닉 FOCUS GOLD GX-650 Full Modular_detail.jpg','파워','시소닉','600W 이상','24핀 전용','80 PLUS 골드',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'시소닉 FOCUS GOLD GX-750 Full Modular',151000,100,'시소닉 FOCUS GOLD GX-750 Full Modular.jpg','시소닉 FOCUS GOLD GX-750 Full Modular_detail.jpg','파워','시소닉','700W 이상','24핀 전용','80 PLUS 골드',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'시소닉 FOCUS GOLD GX-850 Full Modular',172000,100,'시소닉 FOCUS GOLD GX-850 Full Modular.jpg','시소닉 FOCUS GOLD GX-850 Full Modular_detail.jpg','파워','시소닉','800W 이상','24핀 전용','80 PLUS 골드',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'시소닉 PRIME GOLD GX-1000 Full Modular',294040,100,'시소닉 PRIME GOLD GX-1000 Full Modular.jpg','시소닉 PRIME GOLD GX-1000 Full Modular_detail.jpg','파워','시소닉','1000W 이상','24핀 전용','80 PLUS 골드',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'시소닉 PRIME TITANIUM TX-1000 Full Modular',469270,100,'시소닉 PRIME TITANIUM TX-1000 Full Modular.jpg','시소닉 PRIME TITANIUM TX-1000 Full Modular_detail.jpg','파워','시소닉','1000W 이상','24핀 전용','80 PLUS 티타늄',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'시소닉 S12III Bronze SSR-550GB3 Single Rail',65000,100,'시소닉 S12III Bronze SSR-550GB3 Single Rail.jpg','시소닉 S12III Bronze SSR-550GB3 Single Rail_detail.jpg','파워','시소닉','500W 이상','20핀+4핀','80 PLUS 브론즈',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'잘만 EcoMax 500W 83+',32400,100,'잘만 EcoMax 500W 83+.jpg','잘만 EcoMax 500W 83+_detail.jpg','파워','잘만','500W 이상','20핀+4핀','없음',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'잘만 EcoMax 600W 83+',40340,100,'잘만 EcoMax 600W 83+.jpg','잘만 EcoMax 600W 83+_detail.jpg','파워','잘만','600W 이상','20핀+4핀','없음',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'잘만 GigaMax 550W 80PLUS Bronze 230V EU',52500,100,'잘만 GigaMax 550W 80PLUS Bronze 230V EU.jpg','잘만 GigaMax 550W 80PLUS Bronze 230V EU_detail.jpg','파워','잘만','500W 이상','24핀 전용','80 PLUS 브론즈',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'잘만 GigaMax 650W 80PLUS Bronze 230V EU',63580,100,'잘만 GigaMax 650W 80PLUS Bronze 230V EU.jpg','잘만 GigaMax 650W 80PLUS Bronze 230V EU_detail.jpg','파워','잘만','600W 이상','24핀 전용','80 PLUS 브론즈',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'잘만 GigaMax 750W 80PLUS Bronze 230V EU',73000,100,'잘만 GigaMax 750W 80PLUS Bronze 230V EU.jpg','잘만 GigaMax 750W 80PLUS Bronze 230V EU_detail.jpg','파워','잘만','700W 이상','24핀 전용','80 PLUS 브론즈',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'잘만 MegaMax 500W 80PLUS STANDARD',42500,100,'잘만 MegaMax 500W 80PLUS STANDARD.jpg','잘만 MegaMax 500W 80PLUS STANDARD_detail.jpg','파워','잘만','500W 이상','20핀+4핀','80 PLUS 스탠다드',' ',' ');
insert into p5_parts values (p5_parts_seq.nextval,'잘만 MegaMax 600W 80PLUS STANDARD',48000,100,'잘만 MegaMax 600W 80PLUS STANDARD.jpg','잘만 MegaMax 600W 80PLUS STANDARD_detail.jpg','파워','잘만','600W 이상','20핀+4핀','80 PLUS 스탠다드',' ',' ');

SELECT * FROM p5_parts;
--DROP TABLE p5_parts;
--DROP sequence p5_parts_seq;

--------------------------------------
/* 컴퓨터 */
DROP TABLE p5_computer 
	CASCADE CONSTRAINTS;

/* 컴퓨터 */
CREATE TABLE p5_computer (
	com_no NUMBER NOT NULL, /* 컴퓨터번호 */
	mem_id VARCHAR2(100) NOT NULL, /* 아이디 */
	com_name VARCHAR2(200) NOT NULL, /* 컴퓨터명 */
	com_kind VARCHAR2(200) NOT NULL, /* 컴퓨터용도 */
	com_img VARCHAR2(200), /* 컴퓨터썸네일 */
	com_detail VARCHAR2(200), /* 컴퓨터상세 */
	com_price NUMBER /* 컴퓨터가격 */
);

ALTER TABLE p5_computer
	ADD
		CONSTRAINT p5_computer_pk
		PRIMARY KEY (
			com_no
		);

ALTER TABLE p5_computer
	ADD
		CONSTRAINT FK_p5_member_TO_p5_computer
		FOREIGN KEY (
			mem_id
		)
		REFERENCES p5_member (
			mem_id
		);
CREATE SEQUENCE p5_computer_seq
START WITH 1001
INCREMENT BY 1
;
INSERT INTO p5_computer VALUES (p5_computer_seq.nextval, 'admin','PCCAT-HAO01','가정/사무용','PCCAT-HAO01.jpg','PCCAT_COMDETAIL.jpg',275000);
INSERT INTO p5_computer VALUES (p5_computer_seq.nextval, 'admin','PCCAT-HAO02','가정/사무용','PCCAT-HAO02.jpg','PCCAT_COMDETAIL.jpg',420000);
INSERT INTO p5_computer VALUES (p5_computer_seq.nextval, 'admin','PCCAT-HAO03','가정/사무용','PCCAT-HAO03.jpg','PCCAT_COMDETAIL.jpg',525000);
INSERT INTO p5_computer VALUES (p5_computer_seq.nextval, 'admin','PCCAT-HAO04','가정/사무용','PCCAT-HAO04.jpg','PCCAT_COMDETAIL.jpg',515000);
INSERT INTO p5_computer VALUES (p5_computer_seq.nextval, 'admin','PCCAT-GM01','게임용','PCCAT-GM01.jpg','PCCAT_COMDETAIL.jpg',555000);
INSERT INTO p5_computer VALUES (p5_computer_seq.nextval, 'admin','PCCAT-GM02','게임용','PCCAT-GM02.jpg','PCCAT_COMDETAIL.jpg',873000);
INSERT INTO p5_computer VALUES (p5_computer_seq.nextval, 'admin','PCCAT-GM03','게임용','PCCAT-GM03.jpg','PCCAT_COMDETAIL.jpg',735000);
INSERT INTO p5_computer VALUES (p5_computer_seq.nextval, 'admin','PCCAT-GM04','게임용','PCCAT-GM04.jpg','PCCAT_COMDETAIL.jpg',1435000);
INSERT INTO p5_computer VALUES (p5_computer_seq.nextval, 'admin','PCCAT-SAME01','영상작업용','PCCAT-SAME01.jpg','PCCAT_COMDETAIL.jpg',770000);
INSERT INTO p5_computer VALUES (p5_computer_seq.nextval, 'admin','PCCAT-SAME02','영상작업용','PCCAT-SAME02.jpg','PCCAT_COMDETAIL.jpg',859000);
INSERT INTO p5_computer VALUES (p5_computer_seq.nextval, 'admin','PCCAT-SAME03','영상작업용','PCCAT-SAME03.jpg','PCCAT_COMDETAIL.jpg',854000);
INSERT INTO p5_computer VALUES (p5_computer_seq.nextval, 'admin','PCCAT-SAME04','영상작업용','PCCAT-SAME04.jpg','PCCAT_COMDETAIL.jpg',947000);
INSERT INTO p5_computer VALUES (p5_computer_seq.nextval, 'admin','PCCAT-WS01','워크스테이션','PCCAT-WS01.jpg','PCCAT_COMDETAIL.jpg',1664000);
INSERT INTO p5_computer VALUES (p5_computer_seq.nextval, 'admin','PCCAT-WS02','워크스테이션','PCCAT-WS02.jpg','PCCAT_COMDETAIL.jpg',2873000);
--개인사양은 논의 필요
INSERT INTO p5_computer VALUES (p5_computer_seq.nextval, 'ezen01','ezen01님의 컴퓨터','개인사양','PCCAT-USER01.jpg','',978460);
INSERT INTO p5_computer VALUES (p5_computer_seq.nextval, 'ezen02','ezen02님의 컴퓨터','개인사양','PCCAT-USER01.jpg','',1333860);
INSERT INTO p5_computer VALUES (p5_computer_seq.nextval, 'ezen03','ezen03님의 컴퓨터','개인사양','PCCAT-USER01.jpg','',1690660);
INSERT INTO p5_computer VALUES (p5_computer_seq.nextval, 'ezen04','ezen04님의 컴퓨터','개인사양','PCCAT-USER01.jpg','',2819420);
SELECT * FROM p5_computer;
--------------------------------------
/* 견적 */
DROP TABLE p5_assembly 
	CASCADE CONSTRAINTS;

/* 견적 */
CREATE TABLE p5_assembly (
	com_no NUMBER NOT NULL, /* 컴퓨터번호 */
	parts_no NUMBER NOT NULL, /* 부품번호 */
	parts_cnt NUMBER NOT NULL /* 조립부품 수량 */
);

ALTER TABLE p5_assembly
	ADD
		CONSTRAINT p5_assembly_pk
		PRIMARY KEY (
			com_no,
			parts_no
		);

ALTER TABLE p5_assembly
	ADD
		CONSTRAINT FK_p5_parts_TO_p5_assembly
		FOREIGN KEY (
			parts_no
		)
		REFERENCES p5_parts (
			parts_no
		);

ALTER TABLE p5_assembly
	ADD
		CONSTRAINT FK_p5_computer_TO_p5_assembly
		FOREIGN KEY (
			com_no
		)
		REFERENCES p5_computer (
			com_no
		);
CREATE SEQUENCE p5_assembly_seq
START WITH 1
INCREMENT BY 1
;
--견적 데이터.sql 파일에 코드 입력해두었음
SELECT * FROM p5_assembly;
--------------------------------------
/* 견적문의 */
DROP TABLE p5_assque 
	CASCADE CONSTRAINTS;

/* 견적문의 */
CREATE TABLE p5_assque (
	asq_no NUMBER NOT NULL, /* 견적문의번호 */
	com_no NUMBER NOT NULL, /* 컴퓨터번호 */
	asq_name VARCHAR2(500) NOT NULL, /* 견적문의제목 */
	asq_detail VARCHAR2(3000) NOT NULL, /* 견적문의내용 */
	asq_reqdate DATE NOT NULL, /* 견적문의등록일 */
	asq_comm VARCHAR2(3000), /* 견적문의댓글 */
	asq_comcate DATE /* 견적댓글등록일 */
);

ALTER TABLE p5_assque
	ADD
		CONSTRAINT p5_assque_pk
		PRIMARY KEY (
			asq_no
		);

ALTER TABLE p5_assque
	ADD
		CONSTRAINT FK_p5_computer_TO_p5_assque
		FOREIGN KEY (
			com_no
		)
		REFERENCES p5_computer (
			com_no
		);
CREATE SEQUENCE p5_assque_seq
START WITH 1
INCREMENT BY 1;

INSERT INTO p5_assque VALUES (p5_assque_seq.nextval,1015,'견적어때요1?','이거 어떰1?',sysdate,'좋아요',sysdate);
INSERT INTO p5_assque VALUES (p5_assque_seq.nextval,1016,'견적어때요1?','이거 어떰2?',sysdate,'안돼요',sysdate);
INSERT INTO p5_assque VALUES (p5_assque_seq.nextval,1017,'견적어때요1?','이거 어떰3?',sysdate,'','');
INSERT INTO p5_assque VALUES (p5_assque_seq.nextval,1018,'견적어때요1?','이거 어떰3?',sysdate,'','');

SELECT * FROM p5_assque;
--------------------------------------
/* 포인트 */
DROP TABLE p5_point 
	CASCADE CONSTRAINTS;

/* 포인트 */
CREATE TABLE p5_point (
	point_no NUMBER NOT NULL, /* 포인트번호 */
	mem_id VARCHAR2(100) NOT NULL, /* 아이디 */
	point_date DATE NOT NULL, /* 적립/사용일 */
	point_detail VARCHAR2(500) NOT NULL, /* 적립/사용내용 */
	point_pt NUMBER NOT NULL /* 적립/사용마일리지 */
);

ALTER TABLE p5_point
	ADD
		CONSTRAINT p5_point_pk
		PRIMARY KEY (
			point_no
		);

ALTER TABLE p5_point
	ADD
		CONSTRAINT FK_p5_member_TO_p5_point
		FOREIGN KEY (
			mem_id
		)
		REFERENCES p5_member (
			mem_id
		);
CREATE SEQUENCE p5_point_seq
START WITH 1
INCREMENT BY 1
;
INSERT INTO p5_point VALUES(p5_point_seq.nextval,'ezen01',to_date('2020-01-15','YYYY-MM-DD'),'회원가입 포인트', 3000);
INSERT INTO p5_point VALUES(p5_point_seq.nextval,'ezen01',to_date('2020-01-22','YYYY-MM-DD'),'상품구매 사용', -3000);
INSERT INTO p5_point VALUES(p5_point_seq.nextval,'ezen01',to_date('2020-01-22','YYYY-MM-DD'),'상품구매 적립', CEIL((1091450-3000)*0.01));
INSERT INTO p5_point VALUES(p5_point_seq.nextval,'ezen01',to_date('2020-02-17','YYYY-MM-DD'),'상품구매 사용', -10885);
INSERT INTO p5_point VALUES(p5_point_seq.nextval,'ezen01',to_date('2020-02-17','YYYY-MM-DD'),'상품구매 적립', CEIL((714350-10885)*0.01));
INSERT INTO p5_point VALUES(p5_point_seq.nextval,'ezen02',to_date('2020-02-24','YYYY-MM-DD'),'회원가입 포인트', 3000);
INSERT INTO p5_point VALUES(p5_point_seq.nextval,'ezen02',to_date('2020-02-28','YYYY-MM-DD'),'상품구매 사용', -3000);
INSERT INTO p5_point VALUES(p5_point_seq.nextval,'ezen02',to_date('2020-02-28','YYYY-MM-DD'),'상품구매 적립', CEIL((515000-3000)*0.01));
INSERT INTO p5_point VALUES(p5_point_seq.nextval,'ezen03',to_date('2020-03-06','YYYY-MM-DD'),'회원가입 포인트', 3000); 
INSERT INTO p5_point VALUES(p5_point_seq.nextval,'ezen03',to_date('2020-03-17','YYYY-MM-DD'),'상품구매 사용', -3000);
INSERT INTO p5_point VALUES(p5_point_seq.nextval,'ezen03',to_date('2020-03-17','YYYY-MM-DD'),'상품구매 적립', CEIL((555000-3000)*0.01));
INSERT INTO p5_point VALUES(p5_point_seq.nextval,'ezen04',to_date('2020-03-31','YYYY-MM-DD'),'회원가입 포인트', 3000);
INSERT INTO p5_point VALUES(p5_point_seq.nextval,'ezen04',to_date('2020-04-06','YYYY-MM-DD'),'상품구매 사용', -3000);
INSERT INTO p5_point VALUES(p5_point_seq.nextval,'ezen04',to_date('2020-04-06','YYYY-MM-DD'),'상품구매 적립', CEIL((408180-3000)*0.01));

INSERT INTO p5_point VALUES(p5_point_seq.nextval,'ezen05',to_date('2020-04-17','YYYY-MM-DD'),'회원가입 포인트', 3000);
INSERT INTO p5_point VALUES(p5_point_seq.nextval,'ezen05',to_date('2020-04-17','YYYY-MM-DD'),'상품구매 사용', -3000);
INSERT INTO p5_point VALUES(p5_point_seq.nextval,'ezen05',to_date('2020-04-17','YYYY-MM-DD'),'상품구매 적립', CEIL((545660-3000)*0.01));

SELECT * FROM p5_point;

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
GROUP BY ord_no
ORDER BY ord_no asc;

--------------------------------------
/* 주문 */
DROP TABLE p5_order 
	CASCADE CONSTRAINTS;

/* 주문 */
CREATE TABLE p5_order (
	ord_no NUMBER NOT NULL, /* 주문번호 */
	mem_id VARCHAR2(100) NOT NULL, /* 아이디 */
	ord_date DATE NOT NULL, /* 주문일 */
	ord_name VARCHAR2(100) NOT NULL, /* 수령인 */
	ord_tel VARCHAR2(100) NOT NULL, /* 수령인연락처 */
	ord_post VARCHAR2(30) NOT NULL, /* 우편번호 */
	ord_addr1 VARCHAR2(500) NOT NULL, /* 주소 */
	ord_addr2 VARCHAR2(500) NOT NULL, /* 상세주소 */
	ord_req VARCHAR2(3000), /* 주문요청사항 */
	ord_stat VARCHAR2(200) NOT NULL, /* 주문상태 */
	ord_invoice NUMBER /* 운송장번호 */
);

ALTER TABLE p5_order
	ADD
		CONSTRAINT p5_order_pk
		PRIMARY KEY (
			ord_no
		);

ALTER TABLE p5_order
	ADD
		CONSTRAINT FK_p5_member_TO_p5_order
		FOREIGN KEY (
			mem_id
		)
		REFERENCES p5_member (
			mem_id
		);
CREATE SEQUENCE p5_order_seq
START WITH 1001
INCREMENT BY 1
;

INSERT INTO p5_order VALUES (200122||p5_order_seq.nextval,'ezen01',to_date('2020-01-22','YYYY-MM-DD'),'김형준','010-1010-6015','03190','서울 종로구 종로 78','미려빌딩 6층','배송 전 연락부탁드립니다','배송완료',355766247001);
INSERT INTO p5_order VALUES (200217||p5_order_seq.nextval,'ezen01',to_date('2020-02-17','YYYY-MM-DD'),'김형준','010-1010-6015','03190','서울 종로구 종로 78','미려빌딩 6층','배송 전 연락부탁드립니다','배송완료',359049584692);
INSERT INTO p5_order VALUES (200228||p5_order_seq.nextval,'ezen02',to_date('2020-02-28','YYYY-MM-DD'),'전현규','010-2011-7016','03780','서울 서대문구 신촌로 141','은하빌딩 1층','배송 전 연락부탁드립니다','배송완료',363250336305);
INSERT INTO p5_order VALUES (200317||p5_order_seq.nextval,'ezen03',to_date('2020-03-17','YYYY-MM-DD'),'최민기','010-3012-8017','07222','서울 영등포구 당산로49길 4','태인빌딩 1F','배송 전 연락부탁드립니다','배송완료',358535261416);
INSERT INTO p5_order VALUES (200406||p5_order_seq.nextval,'ezen04',to_date('2020-04-06','YYYY-MM-DD'),'한송우','010-4013-9018','01695','서울 노원구 상계로 64','화랑빌딩 7F','배송 전 연락부탁드립니다','배송완료',355937227170);
INSERT INTO p5_order VALUES (200417||p5_order_seq.nextval,'ezen05',to_date('2020-04-17','YYYY-MM-DD'),'홍길동','010-5014-1019','06611','서울 서초구 서초대로77길 54','서초더블유타워 13층','배송 전 연락부탁드립니다','결제완료',null);

--INSERT INTO p5_order VALUES (to_number(to_char(sysdate,'yymmdd'))||p5_order_seq.nextval,'ezen05',sysdate,'홍길동','010-4013-9018','01695','서울 노원구 상계로 64',' 화랑빌딩 7F ','배송 전 연락부탁드립니다','결제완료',null);


SELECT * FROM p5_order;
--------------------------------------
/* 상품주문 */
DROP TABLE p5_request 
	CASCADE CONSTRAINTS;

/* 상품주문 */
CREATE TABLE p5_request (
	ord_no NUMBER NOT NULL, /* 주문번호 */
	req_no NUMBER NOT NULL, /* 상품번호 */
	req_cnt NUMBER NOT NULL, /* 주문수량 */
	req_opt NUMBER /* 옵션가격 */
);

ALTER TABLE p5_request
	ADD
		CONSTRAINT FK_p5_order_TO_p5_request
		FOREIGN KEY (
			ord_no
		)
		REFERENCES p5_order (
			ord_no
		);

INSERT INTO p5_request VALUES (2001221001, 1001, 1, 0);
INSERT INTO p5_request VALUES (2001221001, 1, 1, 0);
INSERT INTO p5_request VALUES (2001221001, 2, 2, 0);
INSERT INTO p5_request VALUES (2001221001, 1002, 1, 0);
INSERT INTO p5_request VALUES (2002171002, 1003, 1, 0);
INSERT INTO p5_request VALUES (2002171002, 3, 1, 0);
INSERT INTO p5_request VALUES (2002281003, 1004, 1, 0);
INSERT INTO p5_request VALUES (2003171004, 1005, 1, 0);
INSERT INTO p5_request VALUES (2004061005, 4, 2, 0);
INSERT INTO p5_request VALUES (2004171006, 5, 2, 0);



SELECT * FROM p5_request;
--------------------------------------
/* 결제 */
DROP TABLE p5_pay 
	CASCADE CONSTRAINTS;

/* 결제 */
CREATE TABLE p5_pay (
	pay_no NUMBER NOT NULL, /* 결제번호 */
	ord_no NUMBER, /* 주문번호 */
	pay_method VARCHAR2(100), /* 결제방법 */
	pay_point NUMBER, /* 사용마일리지 */
	pay_price NUMBER /* 최종결제금액 */
);

ALTER TABLE p5_pay
	ADD
		CONSTRAINT PK_p5_pay
		PRIMARY KEY (
			pay_no
		);

ALTER TABLE p5_pay
	ADD
		CONSTRAINT FK_p5_order_TO_p5_pay
		FOREIGN KEY (
			ord_no
		)
		REFERENCES p5_order (
			ord_no
		);
CREATE SEQUENCE p5_pay_seq
START WITH 1
INCREMENT BY 1
;

INSERT INTO p5_pay VALUES (p5_pay_seq.nextval,2001221001,'신용카드',3000,(1091450-3000));
INSERT INTO p5_pay VALUES (p5_pay_seq.nextval,2002171002,'신용카드',10885,(714350-10885));
INSERT INTO p5_pay VALUES (p5_pay_seq.nextval,2002281003,'신용카드',3000,(515000-3000));
INSERT INTO p5_pay VALUES (p5_pay_seq.nextval,2003171004,'신용카드',3000,(555000-3000));
INSERT INTO p5_pay VALUES (p5_pay_seq.nextval,2004061005,'신용카드',3000,(408180-3000));
INSERT INTO p5_pay VALUES (p5_pay_seq.nextval,2004171006,'신용카드',3000,(545660-3000));

--INSERT INTO p5_pay VALUES (p5_pay_seq.nextval,to_number(to_char(sysdate,'yymmdd'))1006,'신용카드',3000,(340780+558660-3000))

SELECT * FROM p5_pay;
--------------------------------------
/* AS신청 */
DROP TABLE p5_as 
	CASCADE CONSTRAINTS;

/* AS신청 */
CREATE TABLE p5_as (
	as_no NUMBER NOT NULL, /* AS신청번호 */
	ord_no NUMBER NOT NULL, /* 주문번호 */
	as_cate VARCHAR2(100) NOT NULL, /* AS분류 */ --AS, 교환, 반품
	as_detail VARCHAR2(3000) NOT NULL, /* AS신청내용 */
	as_date DATE NOT NULL, /* AS신청일 */
	as_comm VARCHAR2(3000), /* AS댓글 */
	as_comdate DATE /* AS댓글등록일 */
);

ALTER TABLE p5_as
	ADD
		CONSTRAINT p5_as_pk
		PRIMARY KEY (
			as_no
		);

ALTER TABLE p5_as
	ADD
		CONSTRAINT FK_p5_order_TO_p5_as
		FOREIGN KEY (
			ord_no
		)
		REFERENCES p5_order (
			ord_no
		);
CREATE SEQUENCE p5_as_seq
START WITH 1
INCREMENT BY 1
;

INSERT INTO p5_as VALUES (p5_as_seq.nextval, 2001221001,'AS','컴퓨터가 안켜져요',to_date('2020-02-22','YYYY-MM-DD'),'고객님의 회원정보에 등록된 연락처로 연락드렸습니다',to_date('2020-02-24','YYYY-MM-DD'));
INSERT INTO p5_as VALUES (p5_as_seq.nextval, 2002281003,'반품','이거 반품할래요',to_date('2020-03-02','YYYY-MM-DD'),'안녕하세요 PC냥이입니다<br>반품하실 상품을 <b>서울특별시 서울 종로구 종로 51(03161)</b>로 보내주세요<br>교환 및 반품은 제품 구성물 (BOX, 매뉴얼, 케이블 등)이 제품 구매 시와 동일한 상태에서만 가능합니다.<br>또한, 제품 반송시 제품 BOX가 훼손되면 반품이 불가능할 수도 있으므로, 별도 BOX에 교환/반품 의뢰하시는 제품을 한번 더 포장해 보내 주셔야 합니다.',to_date('2020-03-02','YYYY-MM-DD'));

SELECT * FROM p5_as;
--------------------------------------
/* AS관리 */
DROP TABLE p5_mgr 
	CASCADE CONSTRAINTS;

/* AS관리 */
CREATE TABLE p5_mgr (
	mgr_no NUMBER NOT NULL, /* AS관리번호 */
	as_no NUMBER NOT NULL, /* AS신청번호 */
	mgr_date DATE, /* 입고일 */
	mgr_stat VARCHAR2(100) NOT NULL, /* 진행상태 */ --진행상태 분류
	mgr_note VARCHAR2(3000), /* 비고 */
	mgr_price NUMBER	/* AS가격*/
);
ALTER TABLE p5_mgr
	ADD
		CONSTRAINT p5_mgr_pk
		PRIMARY KEY (
			mgr_no
		);

ALTER TABLE p5_mgr
	ADD
		CONSTRAINT FK_p5_as_TO_p5_mgr
		FOREIGN KEY (
			as_no
		)
		REFERENCES p5_as (
			as_no
		);
CREATE SEQUENCE p5_mgr_seq
START WITH 1
INCREMENT BY 1
;

-- 진행상태, 비고, AS가격은 필요에 따라 수정해주세요.
INSERT INTO p5_mgr VALUES (p5_mgr_seq.nextval, 1, to_date('2020-02-26','YYYY-MM-DD'), '완료','유선을 통한 점검 후 AS진행',0);
INSERT INTO p5_mgr VALUES (p5_mgr_seq.nextval, 2, to_date('2020-03-05','YYYY-MM-DD'), '환불완료','고객변심으로 인한 환불',0);
SELECT * FROM p5_mgr;
--------------------------------------