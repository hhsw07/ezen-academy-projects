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
CREATE SEQUENCE p5_member_seq
	START WITH 1
	INCREMENT BY 1
;
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
DROP TABLE p5_parts;
DROP sequence p5_parts_seq;

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
	asq_comdate DATE /* 견적댓글등록일 */
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
/*
2001221001 (p5_computer_seq.nextval, 'ezen01','ezen01님의 컴퓨터','개인사양','PCCAT-USER01.jpg','',1000000);
2002171002  (p5_parts_seq.nextval,'MSI 지포스 RTX 2080 Ti 게이밍 X 트리오 D6 11GB 트라이프로져',1809000,100,'MSI 지포스 RTX 2080 Ti 게이밍 X 트리오 D6 11GB 트라이프로져.jpg','MSI 지포스 RTX 2080 Ti 게이밍 X 트리오 D6 11GB 트라이프로져_detail.jpg','그래픽카드','MSI','NVIDIA',' ',' ',' ',' ');
2002281003 (p5_computer_seq.nextval, 'ezen02','ezen02님의 컴퓨터','개인사양','PCCAT-USER02.jpg','',1100000);
2003171004 (p5_computer_seq.nextval, 'ezen03','ezen03님의 컴퓨터','개인사양','PCCAT-USER03.jpg','',1200000);
2004061005 (p5_computer_seq.nextval, 'ezen04','ezen04님의 컴퓨터','개인사양','PCCAT-USER04.jpg','',1500000);

to_number(to_char(sysdate,'yymmdd'))1006  (p5_parts_seq.nextval,'삼성전자 970 EVO Plus M.2 2280(1TB)',340780,100,'삼성전자 970 EVO Plus M.2 2280(1TB).jpg','삼성전자 970 EVO Plus M.2 2280(1TB)_detail.jpg','SSD','삼성전자','1TB','M.2',' ',' ',' ');
										 (p5_parts_seq.nextval,'인텔 코어i7-9세대 9700K (커피레이크-R) (정품)',558660,100,'인텔 코어i7-9세대 9700K (커피레이크-R) (정품).jpg','인텔 코어i7-9세대 9700K (커피레이크-R) (정품)_detail.jpg','CPU','인텔','95W','인텔(코어i7-9세대)','8코어','정품','3.5 ~ 3.99 GHz');

 */

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
/*
2001221001 (p5_computer_seq.nextval, 'ezen01','ezen01님의 컴퓨터','개인사양','PCCAT-USER01.jpg','',1000000);
2002171002  (p5_parts_seq.nextval,'MSI 지포스 RTX 2080 Ti 게이밍 X 트리오 D6 11GB 트라이프로져',1809000,100,'MSI 지포스 RTX 2080 Ti 게이밍 X 트리오 D6 11GB 트라이프로져.jpg','MSI 지포스 RTX 2080 Ti 게이밍 X 트리오 D6 11GB 트라이프로져_detail.jpg','그래픽카드','MSI','NVIDIA',' ',' ',' ',' ');
2002281003 (p5_computer_seq.nextval, 'ezen02','ezen02님의 컴퓨터','개인사양','PCCAT-USER02.jpg','',1100000);
2003171004 (p5_computer_seq.nextval, 'ezen03','ezen03님의 컴퓨터','개인사양','PCCAT-USER03.jpg','',1200000);
2004061005 (p5_computer_seq.nextval, 'ezen04','ezen04님의 컴퓨터','개인사양','PCCAT-USER04.jpg','',1500000);

to_number(to_char(sysdate,'yymmdd'))1006
 */

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
--보라컴 카페에서 긁어오기(5개씩)
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
INCREMENT BY 1
;
INSERT INTO p5_revcomm VALUES (p5_revcomm_seq.nextval, 1, 'admin', '좋은 리뷰~ 정말 감사합니다.\n새로운 컴퓨터와 함께 좋은 날들 되시기를 바랍니다.\n감사합니다.',to_date('2019-05-31','YYYY-MM-DD'));
INSERT INTO p5_revcomm VALUES (p5_revcomm_seq.nextval, 2, 'admin', '안녕하세요. 통합 고객만족센터입니다.\n우선 그래픽카드 핀 못 빼놓은 것은 죄송합니다.\n최근 인력 교체가 발생하면서 회사내에서 내용을 놓친 것 같습니다.\n또한 너무나도 좋은 리뷰, 정말 감사드립니다.\n이런 리뷰를 보면 일하는 것이 행복해집니다. ^^\n앞으로 더 노력하는 회사가 되도록 하겠습니다.\n감사합니다.',to_date('2019-10-16','YYYY-MM-DD'));
INSERT INTO p5_revcomm VALUES (p5_revcomm_seq.nextval, 3, 'admin', '안녕하세요. 통합 고객만족센터입니다.\n좋은 리뷰, 너무 감사합니다.\n오랫동안 잘 사용하시기 바랍니다.\n감사합니다. ^^',to_date('2020-03-11','YYYY-MM-DD'));
INSERT INTO p5_revcomm VALUES (p5_revcomm_seq.nextval, 4, 'admin', '안녕하세요. 통합 고객만족센터입니다.\n요즘처럼 어려운 때에 좋은 리뷰를 써주셔서 진심으로 감사드립니다.\n정말 큰 힘이 됩니다.\n건승하시기를 바랍니다.^^',to_date('2020-03-18','YYYY-MM-DD'));
INSERT INTO p5_revcomm VALUES (p5_revcomm_seq.nextval, 5, 'admin', '좋은 리뷰 너무나 감사드립니다. ^^\n최선을 다하고 있습니다.\n코로나19 때문에 많이 어려운 상황인데\n건승하시기를 바랍니다.\n감사합니다.',to_date('2020-04-12','YYYY-MM-DD'));
SELECT * FROM p5_revcomm;
--------------------------------------
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
--------------------------------------
/* 공지사항 */
DROP TABLE p5_notice 
	CASCADE CONSTRAINTS;

/* 공지사항 */
CREATE TABLE p5_notice (
	noti_no NUMBER NOT NULL, /* 공지번호 */
	noti_name VARCHAR2(500) NOT NULL, /* 공지제목 */
	noti_detail VARCHAR2(3000) NOT NULL, /* 공지내용 */
	noti_date DATE NOT NULL /* 공지등록일 */
);

ALTER TABLE p5_notice
	ADD
		CONSTRAINT p5_notice_pk
		PRIMARY KEY (
			noti_no
		);
CREATE SEQUENCE p5_notice_seq
START WITH 1
INCREMENT BY 1
;
INSERT INTO p5_notice VALUES (p5_notice_seq.nextval,'고객만족센터 이용 안내★필독','이 곳을 통해 컴퓨터 견적을 상담받으실 수 있으며,\n각종 컴퓨터 관련 정보와 팁을 공유할 수 있고\n구매하신 컴퓨터의 불편한 사항에 대해서 불편 접수를 하실 수 있습니다.\n★ 각 제품마다 A/S에 대한 약속이 다르게 이루어지고 있습니다.\nA/S 접수 전에 해당 컴퓨터의 A/S 의 기간과 종류에 대해 자세히 확인해주시기 바랍니다.',to_date('2018-11-26','YYYY-MM-DD'));
INSERT INTO p5_notice VALUES (p5_notice_seq.nextval,'글 작성 이용수칙을 지켜주세요','해당 글을 삭제할 수 있습니다.\n(1) 악의적으로 판매를 방해하는 글  (글 삭제 및 활동 정지)\n(2) 같은 내용을 반복해서 올리는 글 (글 삭제 및 활동 정지)\n(3) 다른 고객님들에게 안좋은 오해를 줄 수 있는 제목을 가진 글 (글 삭제 및 활동 정지)\n(4) 불편 내용을 작성하고, 제품을 반품하는 경우 (글 삭제)\n(5) PC냥이에서 구매하지 않은 제품에 대한 불만내용(혹은 AS문제)을\n 마치 PC냥이에서 구매한 것처럼 올리는 경우 (글 삭제 및 활동 정지)\n(6) 타 제작 업체의 링크를 포함한 경우 (글 삭제)\n(7) 해당 내용과 관계없는 글에 답글/댓글을 남긴 경우 (글 삭제)\n\n※ (1)~(3) 과 같이 판매에 방해되는 행동을 하는 경우에는\n 이 문제가 회사 전체에 가져다주는 영향력이 워낙 크기 때문에 삭제할 수 밖에 없습니다.\n※ (4) 와 같은 경우는 반품을 통해 해당 문제가 완전하게 해결이 된 것이며,\n 더이상 본 센터의 고객이라고 볼 수 없기 때문에 해당 글은 삭제됩니다.\n (이 경우에는 구매 고객이 아닌 것으로 간주합니다.)\n※ 모든 글 삭제 및 활동정지는 죄송하게도 경고없이 처리할 수 밖에 없음을 양해 부탁드립니다.\n\n★ 서비스에 불만족하는 일반적인 글을 삭제하지는 않습니다.',to_date('2018-11-27','YYYY-MM-DD'));
INSERT INTO p5_notice VALUES (p5_notice_seq.nextval,'AMD CPU 사용 시 정품 쿨러 장착을 권장합니다.','안녕하세요.\nPC냥이의 컴퓨터 통합 고객만족센터입니다.\n\nAMD CPU 쿨러에 대한 간단한 안내입니다.\n\nAMD CPU 의 경우,\nAMD 정품 쿨러가 아닌 다른 회사가 제작한 쿨러(일명 사제 쿨러)를 장착할 경우\n특유의 핀 휨 현상이 일어날 수 있으니 정품 쿨러를 사용하는 것을 추천합니다.\n★ 쿨러의 무게가 무거울수록 해당 문제가 더 많이 나타나는 것으로 확인됩니다.\n★ 핀 휨 현상이 발생한 CPU 는 무상 A/S 처리가 되지 않습니다.\n★ 특히 택배로 배송을 받는 경우에는 더욱 주의가 필요합니다.\n\n참고하여 좋은 컴퓨터 구매하시기 바라며,\n보다 자세한 안내가 필요한 경우 1600-9257 로 연락 부탁드립니다.\n\n감사합니다.',to_date('2018-12-26','YYYY-MM-DD'));
INSERT INTO p5_notice VALUES (p5_notice_seq.nextval,'컴퓨터 견적을 의뢰하는 경우★필독','고객님의 컴퓨터 견적을 가지고 컴퓨터 제작만 의뢰하는 경우에 대한 세 가지 안내사항을 전달합니다.\n★ 완성됨 상품을 구매하는 경우에 본 내용을 보지 않으셔도 됩니다.\n(1) 출장방문 A/S 를 포함하여 구매하시는 것을 권장합니다. (11,000원~12,000원)\n(2) 박스를 추가 구매하시는 것을 권장합니다. (3,000원)\n(3) 구매를 원하시는 견적과 판매중인 컴퓨터의 견적을 비교해주세요.\n★ 위 내용이 기본 적용되는 곳이 있고, 추가해야 적용되는 곳이 있습니다.\n 해당 사이트의 상세페이지를 확인한 후 추가해주세요.',to_date('2019-01-03','YYYY-MM-DD'));
SELECT * FROM p5_notice;
--------------------------------------