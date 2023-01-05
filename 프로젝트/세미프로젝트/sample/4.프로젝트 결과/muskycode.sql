--------------------------------------------------------
--  파일이 생성됨 - 월요일-2월-07-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence SEQ_CNO
--------------------------------------------------------

   CREATE SEQUENCE  "PERFUME"."SEQ_CNO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 161 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_NNO
--------------------------------------------------------

   CREATE SEQUENCE  "PERFUME"."SEQ_NNO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 541 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_OGROUP
--------------------------------------------------------

   CREATE SEQUENCE  "PERFUME"."SEQ_OGROUP"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 81 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_ONO
--------------------------------------------------------

   CREATE SEQUENCE  "PERFUME"."SEQ_ONO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 81 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_PNO
--------------------------------------------------------

   CREATE SEQUENCE  "PERFUME"."SEQ_PNO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_QNO
--------------------------------------------------------

   CREATE SEQUENCE  "PERFUME"."SEQ_QNO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 161 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_RNO
--------------------------------------------------------

   CREATE SEQUENCE  "PERFUME"."SEQ_RNO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table CART
--------------------------------------------------------

  CREATE TABLE "PERFUME"."CART" 
   (	"CNO" NUMBER(5,0), 
	"PNO" NUMBER(5,0), 
	"MID" VARCHAR2(20 BYTE), 
	"CQUANTITY" NUMBER(5,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "PERFUME"."MEMBER" 
   (	"MID" VARCHAR2(20 BYTE), 
	"MPW" VARCHAR2(100 BYTE), 
	"MNAME" VARCHAR2(20 BYTE), 
	"MADDRESS1" VARCHAR2(100 BYTE), 
	"MADDRESS2" VARCHAR2(100 BYTE), 
	"MZIP" VARCHAR2(20 BYTE), 
	"MPHONE" VARCHAR2(20 BYTE), 
	"MEMAIL" VARCHAR2(30 BYTE), 
	"MRESERVES" NUMBER(10,0), 
	"MGRADE" NUMBER(5,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table NOTICE
--------------------------------------------------------

  CREATE TABLE "PERFUME"."NOTICE" 
   (	"NNO" NUMBER(5,0), 
	"NTITLE" VARCHAR2(40 BYTE), 
	"NCONTENT" VARCHAR2(2000 BYTE), 
	"NHIT" NUMBER(10,0), 
	"NDATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ORDER
--------------------------------------------------------

  CREATE TABLE "PERFUME"."ORDER" 
   (	"ONO" NUMBER(5,0), 
	"PNO" NUMBER(5,0), 
	"MID" VARCHAR2(20 BYTE), 
	"ONAME" VARCHAR2(20 BYTE), 
	"OPHONE" VARCHAR2(40 BYTE), 
	"ODATE" DATE, 
	"OQUANTITY" NUMBER(5,0), 
	"OPAYMENT" VARCHAR2(30 BYTE), 
	"OADDRESS1" VARCHAR2(100 BYTE), 
	"OADDRESS2" VARCHAR2(100 BYTE), 
	"OZIP" VARCHAR2(20 BYTE), 
	"OSTATUS" NUMBER(5,0), 
	"OGROUP" NUMBER(5,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PRODUCT
--------------------------------------------------------

  CREATE TABLE "PERFUME"."PRODUCT" 
   (	"PNO" NUMBER(5,0), 
	"PNAME" VARCHAR2(60 BYTE), 
	"PPRICE" NUMBER(6,0), 
	"PSTOCK" NUMBER(5,0), 
	"PCATEGORY" VARCHAR2(60 BYTE), 
	"PCONTENT" VARCHAR2(2000 BYTE), 
	"PIMGURL" VARCHAR2(500 BYTE), 
	"PSTATUS" NUMBER(5,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table QNA
--------------------------------------------------------

  CREATE TABLE "PERFUME"."QNA" 
   (	"QNO" NUMBER(5,0), 
	"MID" VARCHAR2(20 BYTE), 
	"QDATE" DATE, 
	"QTITLE" VARCHAR2(50 BYTE), 
	"QCONTENT" VARCHAR2(1000 BYTE), 
	"QCATEGORY" VARCHAR2(30 BYTE), 
	"QANSWER" VARCHAR2(20 BYTE), 
	"QACONTENT" VARCHAR2(1000 BYTE), 
	"QREF" NUMBER(5,0), 
	"QREF_STEP" NUMBER(5,0), 
	"QREF_LEVEL" NUMBER(5,0), 
	"QADATE" DATE, 
	"QSTATUS" NUMBER(5,0), 
	"QHIT" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table REVIEW
--------------------------------------------------------

  CREATE TABLE "PERFUME"."REVIEW" 
   (	"RNO" NUMBER(5,0), 
	"MID" VARCHAR2(20 BYTE), 
	"RTITLE" VARCHAR2(40 BYTE), 
	"RCONTENT" VARCHAR2(1000 BYTE), 
	"RDATE" DATE, 
	"RHIT" NUMBER(10,0), 
	"RIMGURL" VARCHAR2(1000 BYTE), 
	"RSTATUS" NUMBER(5,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into PERFUME.CART
SET DEFINE OFF;
Insert into PERFUME.CART (CNO,PNO,MID,CQUANTITY) values (71,24,'test_1',2);
Insert into PERFUME.CART (CNO,PNO,MID,CQUANTITY) values (27,24,'ab1111',1);
Insert into PERFUME.CART (CNO,PNO,MID,CQUANTITY) values (40,12,'shTest',1);
Insert into PERFUME.CART (CNO,PNO,MID,CQUANTITY) values (38,25,'shTest',3);
Insert into PERFUME.CART (CNO,PNO,MID,CQUANTITY) values (39,24,'shTest',1);
Insert into PERFUME.CART (CNO,PNO,MID,CQUANTITY) values (41,4,'shTest',1);
Insert into PERFUME.CART (CNO,PNO,MID,CQUANTITY) values (47,16,'shTest',1);
Insert into PERFUME.CART (CNO,PNO,MID,CQUANTITY) values (53,18,'shTest',6);
Insert into PERFUME.CART (CNO,PNO,MID,CQUANTITY) values (135,41,'shTest2',3);
Insert into PERFUME.CART (CNO,PNO,MID,CQUANTITY) values (42,19,'shTest',1);
Insert into PERFUME.CART (CNO,PNO,MID,CQUANTITY) values (73,20,'test_1',1);
Insert into PERFUME.CART (CNO,PNO,MID,CQUANTITY) values (22,12,'ab1111',1);
Insert into PERFUME.CART (CNO,PNO,MID,CQUANTITY) values (25,11,'ab1111',1);
Insert into PERFUME.CART (CNO,PNO,MID,CQUANTITY) values (129,42,'shTest2',7);
Insert into PERFUME.CART (CNO,PNO,MID,CQUANTITY) values (142,41,'a111111',2);
Insert into PERFUME.CART (CNO,PNO,MID,CQUANTITY) values (143,8,'a111111',2);
REM INSERTING into PERFUME.MEMBER
SET DEFINE OFF;
Insert into PERFUME.MEMBER (MID,MPW,MNAME,MADDRESS1,MADDRESS2,MZIP,MPHONE,MEMAIL,MRESERVES,MGRADE) values ('alfk11','3abeb5d91e44320198cfdf637aebeddb19bc235e2ae87c494f934f5d258657','윤다혜','제주특별자치도 서귀포시 가가로 14','가고싶다','63534','010-3825-1118','2443825@naver.com',0,9);
Insert into PERFUME.MEMBER (MID,MPW,MNAME,MADDRESS1,MADDRESS2,MZIP,MPHONE,MEMAIL,MRESERVES,MGRADE) values ('a111111','33b83d92431548e1342493c235a9922af56dd34d53c9b72b37cf158489213e','김오','서울 동작구 관악로30길 27','사사','07031','010-3333-3333','095201a@n.com',1197,9);
Insert into PERFUME.MEMBER (MID,MPW,MNAME,MADDRESS1,MADDRESS2,MZIP,MPHONE,MEMAIL,MRESERVES,MGRADE) values ('DDDDaa123','e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855','아메리카노','인천 강화군 강화읍 갑룡길 3-19','강화갑룡','23036','010-3825-1118','whgdk@naver.com',2000,1);
Insert into PERFUME.MEMBER (MID,MPW,MNAME,MADDRESS1,MADDRESS2,MZIP,MPHONE,MEMAIL,MRESERVES,MGRADE) values ('ddong88','e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855','똥','서울 강동구 성내로6길 11','4층','05399','010-3825-1118','2443825@naver.com',2000,1);
Insert into PERFUME.MEMBER (MID,MPW,MNAME,MADDRESS1,MADDRESS2,MZIP,MPHONE,MEMAIL,MRESERVES,MGRADE) values ('esdel101n','94ae37e88b93e31881329f08f728f56e465932d86ba684f76ec89a15f222c96','이규빈','강원 평창군 대화면 장미산길 132-72','없음','25357','010-2371-1829','rbqlstmxkdlf@gmail.com',0,1);
Insert into PERFUME.MEMBER (MID,MPW,MNAME,MADDRESS1,MADDRESS2,MZIP,MPHONE,MEMAIL,MRESERVES,MGRADE) values ('qwe123','94ae37e88b93e31881329f08f728f56e465932d86ba684f76ec89a15f222c96','이규빈','강원 평창군 대화면 장미산길 132-72','ㅇㅇ','25357','010-2371-1829','esdel101n@naver.com',2000,9);
Insert into PERFUME.MEMBER (MID,MPW,MNAME,MADDRESS1,MADDRESS2,MZIP,MPHONE,MEMAIL,MRESERVES,MGRADE) values ('shTest2','b16f5f21d2d394a7e218947b27a0472dd77577f35f9fe30b1bc7644454ea2b','블랙체리','서울 강남구 강남대로 476','345','06120','010-2341-2341','qqq@qqq.com',0,1);
Insert into PERFUME.MEMBER (MID,MPW,MNAME,MADDRESS1,MADDRESS2,MZIP,MPHONE,MEMAIL,MRESERVES,MGRADE) values ('ab1111','33b83d92431548e1342493c235a9922af56dd34d53c9b72b37cf158489213e','김나무','경기 성남시 분당구 대왕판교로 477','푸아그라','13480','016-2222-2222','095201a@naver.com',0,1);
Insert into PERFUME.MEMBER (MID,MPW,MNAME,MADDRESS1,MADDRESS2,MZIP,MPHONE,MEMAIL,MRESERVES,MGRADE) values ('shTest','e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855','큐큐큐','서울 강남구 강남대로 298','qqq','06253','010-2341-2341','qqq@qqq.com',0,1);
Insert into PERFUME.MEMBER (MID,MPW,MNAME,MADDRESS1,MADDRESS2,MZIP,MPHONE,MEMAIL,MRESERVES,MGRADE) values ('asd123','e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855','이규빈',null,null,null,'010-2371-1829','esdel101n@naver.com',2000,1);
Insert into PERFUME.MEMBER (MID,MPW,MNAME,MADDRESS1,MADDRESS2,MZIP,MPHONE,MEMAIL,MRESERVES,MGRADE) values ('test_1','fcb7887759dc8e72d69bd221697d2c6305a9f86a4a1368bd51cfd1ddffbd','테스트','제주특별자치도 서귀포시 가가로 14','나나로','63534','010-3825-1118','2443825@naver.com',0,1);
Insert into PERFUME.MEMBER (MID,MPW,MNAME,MADDRESS1,MADDRESS2,MZIP,MPHONE,MEMAIL,MRESERVES,MGRADE) values ('test_2','d4cbacadc9d176a3c0dfc9f33af4d0982cd89da61657ffe09c5a40afb476845d','테스트','제주특별자치도 서귀포시 가가로 14','나나로','63534','010-3825-1118','2443825@naver.com',2000,1);
Insert into PERFUME.MEMBER (MID,MPW,MNAME,MADDRESS1,MADDRESS2,MZIP,MPHONE,MEMAIL,MRESERVES,MGRADE) values ('abc123','e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855','기임나무','경기 성남시 분당구 대왕판교로 477','우와','13480','010-4444-4444','095201a@naver.com',2000,1);
Insert into PERFUME.MEMBER (MID,MPW,MNAME,MADDRESS1,MADDRESS2,MZIP,MPHONE,MEMAIL,MRESERVES,MGRADE) values ('alfk13','3abeb5d91e44320198cfdf637aebeddb19bc235e2ae87c494f934f5d258657','다혜','서울 강남구 테헤란로 124','4층','06234','010-3825-1118','2443825@naver.com',2000,1);
REM INSERTING into PERFUME.NOTICE
SET DEFINE OFF;
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (275,'테스트-270','게시글 연습-270',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (273,'테스트-268','게시글 연습-268',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (274,'테스트-269','게시글 연습-269',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (276,'테스트-271','게시글 연습-271',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (277,'테스트-272','게시글 연습-272',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (278,'테스트-273','게시글 연습-273',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (279,'테스트-274','게시글 연습-274',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (280,'테스트-275','게시글 연습-275',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (281,'테스트-276','게시글 연습-276',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (282,'테스트-277','게시글 연습-277',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (283,'테스트-278','게시글 연습-278',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (284,'테스트-279','게시글 연습-279',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (285,'테스트-280','게시글 연습-280',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (286,'테스트-281','게시글 연습-281',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (287,'테스트-282','게시글 연습-282',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (288,'테스트-283','게시글 연습-283',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (289,'테스트-284','게시글 연습-284',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (290,'테스트-285','게시글 연습-285',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (291,'테스트-286','게시글 연습-286',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (292,'테스트-287','게시글 연습-287',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (293,'테스트-288','게시글 연습-288',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (294,'테스트-289','게시글 연습-289',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (295,'테스트-290','게시글 연습-290',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (296,'테스트-291','게시글 연습-291',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (297,'테스트-292','게시글 연습-292',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (298,'테스트-293','게시글 연습-293',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (299,'테스트-294','게시글 연습-294',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (300,'테스트-295','게시글 연습-295',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (301,'테스트-296','게시글 연습-296',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (302,'테스트-297','게시글 연습-297',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (303,'테스트-298','게시글 연습-298',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (304,'테스트-299','게시글 연습-299',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (305,'테스트-300','게시글 연습-300',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (306,'테스트-301','게시글 연습-301',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (307,'테스트-302','게시글 연습-302',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (308,'테스트-303','게시글 연습-303',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (309,'테스트-304','게시글 연습-304',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (310,'테스트-305','게시글 연습-305',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (311,'테스트-306','게시글 연습-306',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (312,'테스트-307','게시글 연습-307',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (313,'테스트-308','게시글 연습-308',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (314,'테스트-309','게시글 연습-309',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (315,'테스트-310','게시글 연습-310',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (316,'테스트-311','게시글 연습-311',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (317,'테스트-312','게시글 연습-312',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (318,'테스트-313','게시글 연습-313',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (319,'테스트-314','게시글 연습-314',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (320,'테스트-315','게시글 연습-315',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (321,'테스트-316','게시글 연습-316',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (322,'테스트-317','게시글 연습-317',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (323,'테스트-318','게시글 연습-318',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (324,'테스트-319','게시글 연습-319',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (325,'테스트-320','게시글 연습-320',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (326,'테스트-321','게시글 연습-321',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (327,'테스트-322','게시글 연습-322',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (328,'테스트-323','게시글 연습-323',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (329,'테스트-324','게시글 연습-324',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (330,'테스트-325','게시글 연습-325',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (331,'테스트-326','게시글 연습-326',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (332,'테스트-327','게시글 연습-327',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (333,'테스트-328','게시글 연습-328',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (334,'테스트-329','게시글 연습-329',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (335,'테스트-330','게시글 연습-330',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (336,'테스트-331','게시글 연습-331',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (337,'테스트-332','게시글 연습-332',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (338,'테스트-333','게시글 연습-333',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (339,'테스트-334','게시글 연습-334',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (340,'테스트-335','게시글 연습-335',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (341,'테스트-336','게시글 연습-336',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (342,'테스트-337','게시글 연습-337',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (343,'테스트-338','게시글 연습-338',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (344,'테스트-339','게시글 연습-339',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (345,'테스트-340','게시글 연습-340',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (346,'테스트-341','게시글 연습-341',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (347,'테스트-342','게시글 연습-342',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (348,'테스트-343','게시글 연습-343',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (349,'테스트-344','게시글 연습-344',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (350,'테스트-345','게시글 연습-345',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (351,'테스트-346','게시글 연습-346',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (352,'테스트-347','게시글 연습-347',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (353,'테스트-348','게시글 연습-348',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (354,'테스트-349','게시글 연습-349',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (355,'테스트-350','게시글 연습-350',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (356,'테스트-351','게시글 연습-351',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (357,'테스트-352','게시글 연습-352',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (358,'테스트-353','게시글 연습-353',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (359,'테스트-354','게시글 연습-354',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (360,'테스트-355','게시글 연습-355',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (361,'테스트-356','게시글 연습-356',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (362,'테스트-357','게시글 연습-357',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (363,'테스트-358','게시글 연습-358',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (364,'테스트-359','게시글 연습-359',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (365,'테스트-360','게시글 연습-360',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (366,'테스트-361','게시글 연습-361',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (367,'테스트-362','게시글 연습-362',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (368,'테스트-363','게시글 연습-363',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (369,'테스트-364','게시글 연습-364',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (370,'테스트-365','게시글 연습-365',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (371,'테스트-366','게시글 연습-366',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (372,'테스트-367','게시글 연습-367',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (373,'테스트-368','게시글 연습-368',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (374,'테스트-369','게시글 연습-369',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (375,'테스트-370','게시글 연습-370',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (376,'테스트-371','게시글 연습-371',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (377,'테스트-372','게시글 연습-372',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (378,'테스트-373','게시글 연습-373',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (379,'테스트-374','게시글 연습-374',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (380,'테스트-375','게시글 연습-375',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (381,'테스트-376','게시글 연습-376',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (382,'테스트-377','게시글 연습-377',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (383,'테스트-378','게시글 연습-378',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (384,'테스트-379','게시글 연습-379',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (385,'테스트-380','게시글 연습-380',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (386,'테스트-381','게시글 연습-381',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (387,'테스트-382','게시글 연습-382',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (388,'테스트-383','게시글 연습-383',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (389,'테스트-384','게시글 연습-384',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (390,'테스트-385','게시글 연습-385',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (391,'테스트-386','게시글 연습-386',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (392,'테스트-387','게시글 연습-387',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (393,'테스트-388','게시글 연습-388',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (394,'테스트-389','게시글 연습-389',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (395,'테스트-390','게시글 연습-390',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (396,'테스트-391','게시글 연습-391',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (397,'테스트-392','게시글 연습-392',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (398,'테스트-393','게시글 연습-393',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (399,'테스트-394','게시글 연습-394',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (400,'테스트-395','게시글 연습-395',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (401,'테스트-396','게시글 연습-396',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (402,'테스트-397','게시글 연습-397',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (403,'테스트-398','게시글 연습-398',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (404,'테스트-399','게시글 연습-399',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (405,'테스트-400','게시글 연습-400',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (406,'테스트-401','게시글 연습-401',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (407,'테스트-402','게시글 연습-402',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (1,'asdfasdf','asdfasdfasdf',3,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (2,'asdfasdf','asdfadsf',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (408,'테스트-403','게시글 연습-403',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (409,'테스트-404','게시글 연습-404',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (410,'테스트-405','게시글 연습-405',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (411,'테스트-406','게시글 연습-406',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (412,'테스트-407','게시글 연습-407',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (413,'테스트-408','게시글 연습-408',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (414,'테스트-409','게시글 연습-409',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (415,'테스트-410','게시글 연습-410',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (416,'테스트-411','게시글 연습-411',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (417,'테스트-412','게시글 연습-412',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (418,'테스트-413','게시글 연습-413',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (419,'테스트-414','게시글 연습-414',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (420,'테스트-415','게시글 연습-415',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (421,'테스트-416','게시글 연습-416',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (422,'테스트-417','게시글 연습-417',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (423,'테스트-418','게시글 연습-418',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (424,'테스트-419','게시글 연습-419',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (425,'테스트-420','게시글 연습-420',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (426,'테스트-421','게시글 연습-421',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (427,'테스트-422','게시글 연습-422',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (428,'테스트-423','게시글 연습-423',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (429,'테스트-424','게시글 연습-424',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (430,'테스트-425','게시글 연습-425',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (431,'테스트-426','게시글 연습-426',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (432,'테스트-427','게시글 연습-427',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (433,'테스트-428','게시글 연습-428',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (434,'테스트-429','게시글 연습-429',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (435,'테스트-430','게시글 연습-430',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (436,'테스트-431','게시글 연습-431',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (437,'테스트-432','게시글 연습-432',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (438,'테스트-433','게시글 연습-433',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (439,'테스트-434','게시글 연습-434',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (440,'테스트-435','게시글 연습-435',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (441,'테스트-436','게시글 연습-436',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (442,'테스트-437','게시글 연습-437',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (443,'테스트-438','게시글 연습-438',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (444,'테스트-439','게시글 연습-439',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (445,'테스트-440','게시글 연습-440',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (446,'테스트-441','게시글 연습-441',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (447,'테스트-442','게시글 연습-442',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (448,'테스트-443','게시글 연습-443',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (449,'테스트-444','게시글 연습-444',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (450,'테스트-445','게시글 연습-445',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (451,'테스트-446','게시글 연습-446',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (452,'테스트-447','게시글 연습-447',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (453,'테스트-448','게시글 연습-448',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (454,'테스트-449','게시글 연습-449',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (455,'테스트-450','게시글 연습-450',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (456,'테스트-451','게시글 연습-451',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (457,'테스트-452','게시글 연습-452',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (458,'테스트-453','게시글 연습-453',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (459,'테스트-454','게시글 연습-454',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (460,'테스트-455','게시글 연습-455',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (461,'테스트-456','게시글 연습-456',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (462,'테스트-457','게시글 연습-457',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (463,'테스트-458','게시글 연습-458',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (464,'테스트-459','게시글 연습-459',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (465,'테스트-460','게시글 연습-460',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (466,'테스트-461','게시글 연습-461',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (467,'테스트-462','게시글 연습-462',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (468,'테스트-463','게시글 연습-463',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (469,'테스트-464','게시글 연습-464',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (470,'테스트-465','게시글 연습-465',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (471,'테스트-466','게시글 연습-466',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (472,'테스트-467','게시글 연습-467',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (473,'테스트-468','게시글 연습-468',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (474,'테스트-469','게시글 연습-469',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (475,'테스트-470','게시글 연습-470',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (476,'테스트-471','게시글 연습-471',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (477,'테스트-472','게시글 연습-472',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (478,'테스트-473','게시글 연습-473',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (479,'테스트-474','게시글 연습-474',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (480,'테스트-475','게시글 연습-475',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (481,'테스트-476','게시글 연습-476',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (482,'테스트-477','게시글 연습-477',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (483,'테스트-478','게시글 연습-478',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (484,'테스트-479','게시글 연습-479',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (485,'테스트-480','게시글 연습-480',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (486,'테스트-481','게시글 연습-481',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (487,'테스트-482','게시글 연습-482',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (488,'테스트-483','게시글 연습-483',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (489,'테스트-484','게시글 연습-484',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (490,'테스트-485','게시글 연습-485',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (491,'테스트-486','게시글 연습-486',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (492,'테스트-487','게시글 연습-487',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (493,'테스트-488','게시글 연습-488',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (494,'테스트-489','게시글 연습-489',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (495,'테스트-490','게시글 연습-490',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (496,'테스트-491','게시글 연습-491',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (497,'테스트-492','게시글 연습-492',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (498,'테스트-493','게시글 연습-493',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (499,'테스트-494','게시글 연습-494',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (500,'테스트-495','게시글 연습-495',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (501,'테스트-496','게시글 연습-496',2,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (502,'테스트-497 변경합니담','게시글 연습-497ㅁㄴㅇㄻㄴㅇㄹ',12,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (521,'공지사항입니다.','공지사항입니다. 서비스는 없습니다.',4,to_date('22/02/07','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (507,'ss','sss',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (508,'sdsdsdsd','sdsdsds',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (509,'asdfasdf','asdfasdf',2,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (510,'제발 되라','후우',5,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (512,'ㅎㅇ여','ㅎㅇ여',22,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (3,'asdfasdf','asdfasdfads',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (4,null,null,1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (5,'sdafasdfasd','fasdfasdfasdf',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (6,'테스트-1','게시글 연습-1',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (7,'테스트-2','게시글 연습-2',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (8,'테스트-3','게시글 연습-3',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (9,'테스트-4','게시글 연습-4',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (10,'테스트-5','게시글 연습-5',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (11,'테스트-6','게시글 연습-6',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (12,'테스트-7','게시글 연습-7',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (13,'테스트-8','게시글 연습-8',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (14,'테스트-9','게시글 연습-9',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (15,'테스트-10','게시글 연습-10',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (16,'테스트-11','게시글 연습-11',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (17,'테스트-12','게시글 연습-12',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (18,'테스트-13','게시글 연습-13',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (19,'테스트-14','게시글 연습-14',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (20,'테스트-15','게시글 연습-15',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (21,'테스트-16','게시글 연습-16',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (22,'테스트-17','게시글 연습-17',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (23,'테스트-18','게시글 연습-18',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (24,'테스트-19','게시글 연습-19',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (25,'테스트-20','게시글 연습-20',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (26,'테스트-21','게시글 연습-21',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (27,'테스트-22','게시글 연습-22',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (28,'테스트-23','게시글 연습-23',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (29,'테스트-24','게시글 연습-24',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (30,'테스트-25','게시글 연습-25',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (31,'테스트-26','게시글 연습-26',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (32,'테스트-27','게시글 연습-27',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (33,'테스트-28','게시글 연습-28',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (34,'테스트-29','게시글 연습-29',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (35,'테스트-30','게시글 연습-30',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (36,'테스트-31','게시글 연습-31',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (37,'테스트-32','게시글 연습-32',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (38,'테스트-33','게시글 연습-33',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (39,'테스트-34','게시글 연습-34',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (40,'테스트-35','게시글 연습-35',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (41,'테스트-36','게시글 연습-36',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (42,'테스트-37','게시글 연습-37',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (43,'테스트-38','게시글 연습-38',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (44,'테스트-39','게시글 연습-39',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (45,'테스트-40','게시글 연습-40',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (46,'테스트-41','게시글 연습-41',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (47,'테스트-42','게시글 연습-42',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (48,'테스트-43','게시글 연습-43',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (49,'테스트-44','게시글 연습-44',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (50,'테스트-45','게시글 연습-45',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (51,'테스트-46','게시글 연습-46',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (52,'테스트-47','게시글 연습-47',4,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (53,'테스트-48','게시글 연습-48',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (54,'테스트-49','게시글 연습-49',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (55,'테스트-50','게시글 연습-50',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (56,'테스트-51','게시글 연습-51',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (57,'테스트-52','게시글 연습-52',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (58,'테스트-53','게시글 연습-53',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (59,'테스트-54','게시글 연습-54',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (60,'테스트-55','게시글 연습-55',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (61,'테스트-56','게시글 연습-56',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (62,'테스트-57','게시글 연습-57',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (63,'테스트-58','게시글 연습-58',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (64,'테스트-59','게시글 연습-59',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (65,'테스트-60','게시글 연습-60',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (66,'테스트-61','게시글 연습-61',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (67,'테스트-62','게시글 연습-62',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (68,'테스트-63','게시글 연습-63',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (69,'테스트-64','게시글 연습-64',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (70,'테스트-65','게시글 연습-65',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (71,'테스트-66','게시글 연습-66',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (72,'테스트-67','게시글 연습-67',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (73,'테스트-68','게시글 연습-68',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (74,'테스트-69','게시글 연습-69',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (75,'테스트-70','게시글 연습-70',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (76,'테스트-71','게시글 연습-71',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (77,'테스트-72','게시글 연습-72',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (78,'테스트-73','게시글 연습-73',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (79,'테스트-74','게시글 연습-74',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (80,'테스트-75','게시글 연습-75',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (81,'테스트-76','게시글 연습-76',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (82,'테스트-77','게시글 연습-77',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (83,'테스트-78','게시글 연습-78',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (84,'테스트-79','게시글 연습-79',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (85,'테스트-80','게시글 연습-80',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (86,'테스트-81','게시글 연습-81',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (87,'테스트-82','게시글 연습-82',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (88,'테스트-83','게시글 연습-83',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (89,'테스트-84','게시글 연습-84',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (90,'테스트-85','게시글 연습-85',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (91,'테스트-86','게시글 연습-86',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (92,'테스트-87','게시글 연습-87',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (93,'테스트-88','게시글 연습-88',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (94,'테스트-89','게시글 연습-89',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (95,'테스트-90','게시글 연습-90',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (96,'테스트-91','게시글 연습-91',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (97,'테스트-92','게시글 연습-92',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (98,'테스트-93','게시글 연습-93',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (99,'테스트-94','게시글 연습-94',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (100,'테스트-95','게시글 연습-95',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (101,'테스트-96','게시글 연습-96',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (102,'테스트-97','게시글 연습-97',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (103,'테스트-98','게시글 연습-98',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (104,'테스트-99','게시글 연습-99',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (105,'테스트-100','게시글 연습-100',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (106,'테스트-101','게시글 연습-101',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (107,'테스트-102','게시글 연습-102',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (108,'테스트-103','게시글 연습-103',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (109,'테스트-104','게시글 연습-104',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (110,'테스트-105','게시글 연습-105',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (111,'테스트-106','게시글 연습-106',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (112,'테스트-107','게시글 연습-107',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (113,'테스트-108','게시글 연습-108',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (114,'테스트-109','게시글 연습-109',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (115,'테스트-110','게시글 연습-110',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (116,'테스트-111','게시글 연습-111',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (117,'테스트-112','게시글 연습-112',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (118,'테스트-113','게시글 연습-113',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (119,'테스트-114','게시글 연습-114',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (120,'테스트-115','게시글 연습-115',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (121,'테스트-116','게시글 연습-116',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (122,'테스트-117','게시글 연습-117',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (123,'테스트-118','게시글 연습-118',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (124,'테스트-119','게시글 연습-119',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (125,'테스트-120','게시글 연습-120',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (126,'테스트-121','게시글 연습-121',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (127,'테스트-122','게시글 연습-122',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (128,'테스트-123','게시글 연습-123',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (129,'테스트-124','게시글 연습-124',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (130,'테스트-125','게시글 연습-125',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (131,'테스트-126','게시글 연습-126',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (132,'테스트-127','게시글 연습-127',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (133,'테스트-128','게시글 연습-128',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (134,'테스트-129','게시글 연습-129',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (135,'테스트-130','게시글 연습-130',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (136,'테스트-131','게시글 연습-131',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (137,'테스트-132','게시글 연습-132',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (138,'테스트-133','게시글 연습-133',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (139,'테스트-134','게시글 연습-134',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (140,'테스트-135','게시글 연습-135',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (143,'테스트-138','게시글 연습-138',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (144,'테스트-139','게시글 연습-139',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (145,'테스트-140','게시글 연습-140',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (146,'테스트-141','게시글 연습-141',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (147,'테스트-142','게시글 연습-142',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (148,'테스트-143','게시글 연습-143',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (149,'테스트-144','게시글 연습-144',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (150,'테스트-145','게시글 연습-145',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (151,'테스트-146','게시글 연습-146',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (152,'테스트-147','게시글 연습-147',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (153,'테스트-148','게시글 연습-148',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (154,'테스트-149','게시글 연습-149',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (155,'테스트-150','게시글 연습-150',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (156,'테스트-151','게시글 연습-151',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (157,'테스트-152','게시글 연습-152',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (158,'테스트-153','게시글 연습-153',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (159,'테스트-154','게시글 연습-154',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (160,'테스트-155','게시글 연습-155',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (141,'테스트-136','게시글 연습-136',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (142,'테스트-137','게시글 연습-137',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (161,'테스트-156','게시글 연습-156',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (162,'테스트-157','게시글 연습-157',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (163,'테스트-158','게시글 연습-158',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (164,'테스트-159','게시글 연습-159',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (165,'테스트-160','게시글 연습-160',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (166,'테스트-161','게시글 연습-161',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (167,'테스트-162','게시글 연습-162',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (168,'테스트-163','게시글 연습-163',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (169,'테스트-164','게시글 연습-164',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (170,'테스트-165','게시글 연습-165',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (171,'테스트-166','게시글 연습-166',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (172,'테스트-167','게시글 연습-167',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (173,'테스트-168','게시글 연습-168',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (174,'테스트-169','게시글 연습-169',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (175,'테스트-170','게시글 연습-170',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (176,'테스트-171','게시글 연습-171',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (177,'테스트-172','게시글 연습-172',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (178,'테스트-173','게시글 연습-173',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (179,'테스트-174','게시글 연습-174',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (180,'테스트-175','게시글 연습-175',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (181,'테스트-176','게시글 연습-176',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (182,'테스트-177','게시글 연습-177',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (183,'테스트-178','게시글 연습-178',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (184,'테스트-179','게시글 연습-179',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (185,'테스트-180','게시글 연습-180',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (186,'테스트-181','게시글 연습-181',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (187,'테스트-182','게시글 연습-182',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (188,'테스트-183','게시글 연습-183',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (189,'테스트-184','게시글 연습-184',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (190,'테스트-185','게시글 연습-185',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (191,'테스트-186','게시글 연습-186',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (192,'테스트-187','게시글 연습-187',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (193,'테스트-188','게시글 연습-188',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (194,'테스트-189','게시글 연습-189',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (195,'테스트-190','게시글 연습-190',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (196,'테스트-191','게시글 연습-191',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (197,'테스트-192','게시글 연습-192',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (198,'테스트-193','게시글 연습-193',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (199,'테스트-194','게시글 연습-194',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (200,'테스트-195','게시글 연습-195',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (201,'테스트-196','게시글 연습-196',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (202,'테스트-197','게시글 연습-197',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (203,'테스트-198','게시글 연습-198',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (204,'테스트-199','게시글 연습-199',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (205,'테스트-200','게시글 연습-200',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (206,'테스트-201','게시글 연습-201',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (207,'테스트-202','게시글 연습-202',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (208,'테스트-203','게시글 연습-203',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (209,'테스트-204','게시글 연습-204',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (210,'테스트-205','게시글 연습-205',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (211,'테스트-206','게시글 연습-206',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (212,'테스트-207','게시글 연습-207',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (213,'테스트-208','게시글 연습-208',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (214,'테스트-209','게시글 연습-209',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (215,'테스트-210','게시글 연습-210',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (216,'테스트-211','게시글 연습-211',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (217,'테스트-212','게시글 연습-212',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (218,'테스트-213','게시글 연습-213',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (219,'테스트-214','게시글 연습-214',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (220,'테스트-215','게시글 연습-215',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (221,'테스트-216','게시글 연습-216',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (222,'테스트-217','게시글 연습-217',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (223,'테스트-218','게시글 연습-218',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (224,'테스트-219','게시글 연습-219',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (225,'테스트-220','게시글 연습-220',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (226,'테스트-221','게시글 연습-221',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (227,'테스트-222','게시글 연습-222',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (228,'테스트-223','게시글 연습-223',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (229,'테스트-224','게시글 연습-224',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (230,'테스트-225','게시글 연습-225',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (231,'테스트-226','게시글 연습-226',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (232,'테스트-227','게시글 연습-227',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (233,'테스트-228','게시글 연습-228',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (234,'테스트-229','게시글 연습-229',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (235,'테스트-230','게시글 연습-230',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (236,'테스트-231','게시글 연습-231',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (237,'테스트-232','게시글 연습-232',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (238,'테스트-233','게시글 연습-233',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (239,'테스트-234','게시글 연습-234',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (240,'테스트-235','게시글 연습-235',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (241,'테스트-236','게시글 연습-236',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (242,'테스트-237','게시글 연습-237',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (243,'테스트-238','게시글 연습-238',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (244,'테스트-239','게시글 연습-239',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (245,'테스트-240','게시글 연습-240',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (246,'테스트-241','게시글 연습-241',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (247,'테스트-242','게시글 연습-242',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (248,'테스트-243','게시글 연습-243',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (249,'테스트-244','게시글 연습-244',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (250,'테스트-245','게시글 연습-245',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (251,'테스트-246','게시글 연습-246',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (252,'테스트-247','게시글 연습-247',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (253,'테스트-248','게시글 연습-248',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (254,'테스트-249','게시글 연습-249',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (255,'테스트-250','게시글 연습-250',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (256,'테스트-251','게시글 연습-251',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (257,'테스트-252','게시글 연습-252',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (258,'테스트-253','게시글 연습-253',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (259,'테스트-254','게시글 연습-254',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (260,'테스트-255','게시글 연습-255',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (261,'테스트-256','게시글 연습-256',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (262,'테스트-257','게시글 연습-257',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (263,'테스트-258','게시글 연습-258',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (264,'테스트-259','게시글 연습-259',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (265,'테스트-260','게시글 연습-260',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (266,'테스트-261','게시글 연습-261',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (267,'테스트-262','게시글 연습-262',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (268,'테스트-263','게시글 연습-263',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (269,'테스트-264','게시글 연습-264',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (270,'테스트-265','게시글 연습-265',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (271,'테스트-266','게시글 연습-266',1,to_date('22/01/29','RR/MM/DD'));
Insert into PERFUME.NOTICE (NNO,NTITLE,NCONTENT,NHIT,NDATE) values (272,'테스트-267','게시글 연습-267',1,to_date('22/01/29','RR/MM/DD'));
REM INSERTING into PERFUME."ORDER"
SET DEFINE OFF;
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (4,13,'ab1111','김나무','016-2222-2222',to_date('22/02/03','RR/MM/DD'),3,'card','경기 성남시 분당구 대왕판교로 477','푸아그라','13480',1,4);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (5,13,'ab1111','김나무','016-2222-2222',to_date('22/02/03','RR/MM/DD'),3,'card','경기 성남시 분당구 대왕판교로 477','푸아그라','13480',1,5);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (6,12,'ab1111','김나무','016-2222-2222',to_date('22/02/03','RR/MM/DD'),1,'card','경기 성남시 분당구 대왕판교로 477','푸아그라','13480',1,6);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (7,12,'ab1111','김나무','016-2222-2222',to_date('22/02/03','RR/MM/DD'),1,'card','경기 성남시 분당구 대왕판교로 477','푸아그라','13480',3,7);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (8,12,'ab1111','김나무','016-2222-2222',to_date('22/02/03','RR/MM/DD'),1,'card','경기 성남시 분당구 대왕판교로 477','푸아그라','13480',1,8);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (9,12,'ab1111','김나무','016-2222-2222',to_date('22/02/03','RR/MM/DD'),1,'card','경기 성남시 분당구 대왕판교로 477','푸아그라','13480',1,9);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (27,9,'a111111','김오','010-3333-3333',to_date('22/02/05','RR/MM/DD'),1,'card','null','null','null',1,28);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (28,20,'a111111','김오','010-3333-3333',to_date('22/02/05','RR/MM/DD'),1,'card','null','null','null',1,29);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (29,9,'a111111','김오','010-3333-3333',to_date('22/02/05','RR/MM/DD'),1,'card','서울 동작구 관악로30길 27','101호','07031',4,30);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (30,20,'a111111','김오','010-3333-3333',to_date('22/02/05','RR/MM/DD'),1,'card','서울 동작구 관악로30길 27','101호','07031',4,30);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (40,20,'a111111','김오','010-3333-3333',to_date('22/02/06','RR/MM/DD'),5,'card','서울 동작구 관악로30길 27','사사','07031',4,38);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (41,24,'a111111','김오','010-3333-3333',to_date('22/02/06','RR/MM/DD'),13,'card','서울 동작구 관악로30길 27','사사','07031',4,38);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (42,25,'a111111','김오','010-3333-3333',to_date('22/02/06','RR/MM/DD'),1,'card','서울 동작구 관악로30길 27','사사','07031',4,38);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (56,25,'alfk11','윤다혜','010-3825-1118',to_date('22/02/07','RR/MM/DD'),1,'card','제주특별자치도 서귀포시 가가로 14','가고싶다','63534',2,65);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (57,25,'alfk11','윤다혜','010-3825-1118',to_date('22/02/07','RR/MM/DD'),1,'card','제주특별자치도 서귀포시 가가로 14','가고싶다','63534',2,66);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (58,25,'alfk11','윤다혜','010-3825-1118',to_date('22/02/07','RR/MM/DD'),1,'card','제주특별자치도 서귀포시 가가로 14','가고싶다','63534',2,67);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (59,25,'alfk11','윤다혜','010-1111-1118',to_date('22/02/07','RR/MM/DD'),1,'card','제주특별자치도 서귀포시 가가로 14','가고싶다','63534',2,68);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (60,25,'a111111','김오','010-3333-3333',to_date('22/02/07','RR/MM/DD'),3,'card','서울 동작구 관악로30길 27','사사','07031',2,69);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (25,9,'a111111','김오','010-3333-3333',to_date('22/02/05','RR/MM/DD'),1,'card','null','null','null',1,1);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (26,20,'a111111','김오','010-3333-3333',to_date('22/02/05','RR/MM/DD'),1,'card','null','null','null',1,1);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (31,24,'test_1','테스트','010-3825-1118',to_date('22/02/05','RR/MM/DD'),2,'card','제주특별자치도 서귀포시 가가로 14','나나로','63534',1,31);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (32,20,'test_1','테스트','010-3825-1118',to_date('22/02/05','RR/MM/DD'),1,'card','제주특별자치도 서귀포시 가가로 14','나나로','63534',1,31);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (3,12,'ab1111','김나무','016-2222-2222',to_date('22/02/03','RR/MM/DD'),1,'card','경기 성남시 분당구 대왕판교로 477','푸아그라','13480',1,3);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (10,12,'ab1111','김나무','016-2222-2222',to_date('22/02/03','RR/MM/DD'),1,'card','경기 성남시 분당구 대왕판교로 477','푸아그라','13480',1,10);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (24,24,'shTest2','블랙체리','010-2341-2341',to_date('22/02/05','RR/MM/DD'),4,'account','서울 강남구 강남대로 476','345','06120',1,1);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (34,16,'shTest2','블랙체리','010-2341-2341',to_date('22/02/05','RR/MM/DD'),1,'account','서울 강남구 강남대로 476','345','06120',3,33);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (35,14,'shTest2','블랙체리','010-2341-2341',to_date('22/02/05','RR/MM/DD'),1,'account','서울 강남구 강남대로 476','345','06120',3,33);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (37,24,'ab1111','김나무','016-2222-2222',to_date('22/02/05','RR/MM/DD'),5,'card','경기 성남시 분당구 대왕판교로 477','푸아그라','13480',2,35);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (38,20,'ab1111','김나무','016-2222-2222',to_date('22/02/05','RR/MM/DD'),7,'deposit','경기 성남시 분당구 대왕판교로 477','푸아그라','13480',1,36);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (46,42,'a111111','김오','010-3333-3333',to_date('22/02/07','RR/MM/DD'),5,'card','서울 동작구 관악로30길 27','사사','07031',2,41);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (1,12,'ab1111','김나무','010-3333-3333',to_date('22/02/02','RR/MM/DD'),1,'card','서울 중랑구 사가정로 326','32호','02236',3,1);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (2,14,'ab1111','김나무','016-2222-2222',to_date('22/02/02','RR/MM/DD'),1,'card','경기 성남시 분당구 대왕판교로 477','푸아그라','13480',1,2);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (12,24,'a111111','김오','010-3333-3333',to_date('22/02/04','RR/MM/DD'),1,'card','null','null','null',1,12);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (13,25,'shTest','큐큐큐','010-2341-2341',to_date('22/02/04','RR/MM/DD'),3,'card','서울 강남구 강남대로 298','qqq','06253',1,13);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (14,24,'shTest','큐큐큐','010-2341-2341',to_date('22/02/04','RR/MM/DD'),1,'card','서울 강남구 강남대로 298','qqq','06253',1,14);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (15,12,'shTest','큐큐큐','010-2341-2341',to_date('22/02/04','RR/MM/DD'),1,'card','서울 강남구 강남대로 298','qqq','06253',1,15);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (16,4,'shTest','큐큐큐','010-2341-2341',to_date('22/02/04','RR/MM/DD'),1,'card','서울 강남구 강남대로 298','qqq','06253',1,16);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (17,19,'shTest','큐큐큐','010-2341-2341',to_date('22/02/04','RR/MM/DD'),1,'card','서울 강남구 강남대로 298','qqq','06253',1,17);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (18,16,'shTest','큐큐큐','010-2341-2341',to_date('22/02/04','RR/MM/DD'),1,'card','서울 강남구 강남대로 298','qqq','06253',3,18);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (19,18,'shTest','큐큐큐','010-2341-2341',to_date('22/02/04','RR/MM/DD'),6,'card','서울 강남구 강남대로 298','qqq','06253',1,19);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (20,9,'a111111','김오','010-3333-3333',to_date('22/02/04','RR/MM/DD'),1,'card','서울 동작구 관악로30길 27','배앰1호','07031',1,0);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (21,20,'a111111','김오','010-3333-3333',to_date('22/02/04','RR/MM/DD'),1,'card','서울 동작구 관악로30길 27','배앰1호','07031',1,0);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (22,9,'a111111','김오','010-3333-3333',to_date('22/02/04','RR/MM/DD'),1,'card','서울 중랑구 사가정로 326','32호','02236',3,1);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (23,20,'a111111','김오','010-3333-3333',to_date('22/02/04','RR/MM/DD'),1,'card','서울 중랑구 사가정로 326','32호','02236',3,1);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (33,14,'a111111','김오','010-3333-3333',to_date('22/02/05','RR/MM/DD'),4,'card','null','null','null',1,32);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (44,18,'a111111','김오','010-3333-3333',to_date('22/02/07','RR/MM/DD'),1,'card','서울 동작구 관악로30길 27','사사','07031',2,40);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (45,41,'a111111','김오','010-3333-3333',to_date('22/02/07','RR/MM/DD'),3,'card','서울 동작구 관악로30길 27','사사','07031',2,40);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (48,25,'a111111','김오','010-3333-3333',to_date('22/02/07','RR/MM/DD'),3,'card','서울 동작구 관악로30길 27','사사','07031',2,62);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (49,9,'a111111','김오','010-3333-3333',to_date('22/02/07','RR/MM/DD'),5,'card','서울 동작구 관악로30길 27','사사','07031',2,62);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (50,8,'a111111','김오','010-3333-3333',to_date('22/02/07','RR/MM/DD'),4,'card','서울 동작구 관악로30길 27','사사','07031',2,62);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (53,25,'alfk11','윤다혜','010-3825-1118',to_date('22/02/07','RR/MM/DD'),4,'card','제주특별자치도 서귀포시 가가로 14','가고싶다','63534',4,64);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (54,4,'alfk11','윤다혜','010-3825-1118',to_date('22/02/07','RR/MM/DD'),1,'card','제주특별자치도 서귀포시 가가로 14','가고싶다','63534',4,64);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (55,41,'alfk11','윤다혜','010-3825-1118',to_date('22/02/07','RR/MM/DD'),1,'card','제주특별자치도 서귀포시 가가로 14','가고싶다','63534',4,64);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (11,24,'ab1111','김나무','016-2222-2222',to_date('22/02/03','RR/MM/DD'),1,'card','경기 성남시 분당구 대왕판교로 477','푸아그라','13480',1,11);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (36,24,'ab1111','김나무','016-2222-2222',to_date('22/02/05','RR/MM/DD'),3,'card','경기 성남시 분당구 대왕판교로 477','푸아그라','13480',3,34);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (39,24,'esdel101n','이규빈','010-2371-1829',to_date('22/02/06','RR/MM/DD'),1,'card','강원 평창군 대화면 장미산길 132-72','없음','25357',2,37);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (43,42,'a111111','김오','010-3333-3333',to_date('22/02/06','RR/MM/DD'),3,'account','서울 동작구 관악로30길 27','사사','07031',4,39);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (47,25,'a111111','김오','010-3333-3333',to_date('22/02/07','RR/MM/DD'),3,'card','서울 동작구 관악로30길 27','사사','07031',2,61);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (51,25,'esdel101n','이규빈','010-2371-1829',to_date('22/02/07','RR/MM/DD'),1,'card','강원 평창군 대화면 장미산길 132-72','없음','25357',4,63);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (52,20,'esdel101n','이규빈','010-2371-1829',to_date('22/02/07','RR/MM/DD'),1,'card','강원 평창군 대화면 장미산길 132-72','없음','25357',4,63);
Insert into PERFUME."ORDER" (ONO,PNO,MID,ONAME,OPHONE,ODATE,OQUANTITY,OPAYMENT,OADDRESS1,OADDRESS2,OZIP,OSTATUS,OGROUP) values (61,45,'a111111','김오','010-3333-3333',to_date('22/02/07','RR/MM/DD'),1,'card','서울 동작구 관악로30길 27','사사','07031',4,70);
REM INSERTING into PERFUME.PRODUCT
SET DEFINE OFF;
Insert into PERFUME.PRODUCT (PNO,PNAME,PPRICE,PSTOCK,PCATEGORY,PCONTENT,PIMGURL,PSTATUS) values (2,'김남영',144,10,'SOLID','qwer','다운로드.jfif',0);
Insert into PERFUME.PRODUCT (PNO,PNAME,PPRICE,PSTOCK,PCATEGORY,PCONTENT,PIMGURL,PSTATUS) values (3,'김남영',12,10,'BODY','asdf','lion.jpg',0);
Insert into PERFUME.PRODUCT (PNO,PNAME,PPRICE,PSTOCK,PCATEGORY,PCONTENT,PIMGURL,PSTATUS) values (4,'테슽트',144,9,'HAIR','도서관asdfasdf','library.jfif',0);
Insert into PERFUME.PRODUCT (PNO,PNAME,PPRICE,PSTOCK,PCATEGORY,PCONTENT,PIMGURL,PSTATUS) values (7,'고체향수1',133000,3,'SOLID','고체향수','doson_face_doson50v1_1439x12001.jpg',0);
Insert into PERFUME.PRODUCT (PNO,PNAME,PPRICE,PSTOCK,PCATEGORY,PCONTENT,PIMGURL,PSTATUS) values (8,'고구마개발자',11111,6,'HAIR','이언이','body_ (5)1.jpg',0);
Insert into PERFUME.PRODUCT (PNO,PNAME,PPRICE,PSTOCK,PCATEGORY,PCONTENT,PIMGURL,PSTATUS) values (9,'clean&warmCotton',1233,-5,'BODY','내 향수','clean&warmCotton.jpg.crdownload',0);
Insert into PERFUME.PRODUCT (PNO,PNAME,PPRICE,PSTOCK,PCATEGORY,PCONTENT,PIMGURL,PSTATUS) values (10,'배앰',144,10,'SOLID','ㅁㅇㄴㄹ','Lion.jfif',0);
Insert into PERFUME.PRODUCT (PNO,PNAME,PPRICE,PSTOCK,PCATEGORY,PCONTENT,PIMGURL,PSTATUS) values (11,'ㄴㅇㄻㅇㄴㄹ',144,10,'SOLID','ㅁㄴㅇㄹ','body_ (7)1.jpg',0);
Insert into PERFUME.PRODUCT (PNO,PNAME,PPRICE,PSTOCK,PCATEGORY,PCONTENT,PIMGURL,PSTATUS) values (16,'고체테스트_1',234432,3312,'SOLID','고체테스트_1','body_ (9)1.jpg',0);
Insert into PERFUME.PRODUCT (PNO,PNAME,PPRICE,PSTOCK,PCATEGORY,PCONTENT,PIMGURL,PSTATUS) values (17,'고체테스트_2',22222,13,'SOLID','고체테스트_2','body_ (4)1.jpg',0);
Insert into PERFUME.PRODUCT (PNO,PNAME,PPRICE,PSTOCK,PCATEGORY,PCONTENT,PIMGURL,PSTATUS) values (18,'고체테스트_3',33333,12333,'SOLID','고체테스트_3','body_ (8)1.jpg',0);
Insert into PERFUME.PRODUCT (PNO,PNAME,PPRICE,PSTOCK,PCATEGORY,PCONTENT,PIMGURL,PSTATUS) values (19,'고체테스트_4',444444,4444,'SOLID','고체테스트_4','body_ (5)1.jpg',0);
Insert into PERFUME.PRODUCT (PNO,PNAME,PPRICE,PSTOCK,PCATEGORY,PCONTENT,PIMGURL,PSTATUS) values (20,'고체테스트_5',555555,55554,'SOLID','고체테스트_5','body_ (6)1.jpg',0);
Insert into PERFUME.PRODUCT (PNO,PNAME,PPRICE,PSTOCK,PCATEGORY,PCONTENT,PIMGURL,PSTATUS) values (24,'고체테스트_8',8888,888,'SOLID','고체테스트_8','body_ (8)2.jpg',0);
Insert into PERFUME.PRODUCT (PNO,PNAME,PPRICE,PSTOCK,PCATEGORY,PCONTENT,PIMGURL,PSTATUS) values (25,'고체테스트_7',7777,759,'SOLID','고체테스트_7','body_ (7)1.jpg',0);
Insert into PERFUME.PRODUCT (PNO,PNAME,PPRICE,PSTOCK,PCATEGORY,PCONTENT,PIMGURL,PSTATUS) values (45,'딥디크22',3300,122,'HAIR','ㅁㄴㅇㄹ','test.jpg',0);
Insert into PERFUME.PRODUCT (PNO,PNAME,PPRICE,PSTOCK,PCATEGORY,PCONTENT,PIMGURL,PSTATUS) values (5,'고구마개발자',1,1,'SOLID','121','hair_ (2)1.jpg',0);
Insert into PERFUME.PRODUCT (PNO,PNAME,PPRICE,PSTOCK,PCATEGORY,PCONTENT,PIMGURL,PSTATUS) values (12,'현재 시간 AM 12:59',144,10,'SOLID','asdf','Lion.jfif',0);
Insert into PERFUME.PRODUCT (PNO,PNAME,PPRICE,PSTOCK,PCATEGORY,PCONTENT,PIMGURL,PSTATUS) values (41,'body_(1)',2000,122,'BODY','gdgdgd','body_ (1).jpg',0);
Insert into PERFUME.PRODUCT (PNO,PNAME,PPRICE,PSTOCK,PCATEGORY,PCONTENT,PIMGURL,PSTATUS) values (42,'body_(2)',2000,15,'BODY','ASDF','body_ (2).jpg',0);
Insert into PERFUME.PRODUCT (PNO,PNAME,PPRICE,PSTOCK,PCATEGORY,PCONTENT,PIMGURL,PSTATUS) values (43,'왜안나와디질래',14143,3312,'SOLID','solid-(1)','L''OMBRE DANS L''EAU1.jpg',0);
Insert into PERFUME.PRODUCT (PNO,PNAME,PPRICE,PSTOCK,PCATEGORY,PCONTENT,PIMGURL,PSTATUS) values (1,'테스트',12,12,'SOLID','아주 테스트','lion.jpg',0);
Insert into PERFUME.PRODUCT (PNO,PNAME,PPRICE,PSTOCK,PCATEGORY,PCONTENT,PIMGURL,PSTATUS) values (6,'Eau Rose',69800,13,'SOLID','고체향수_1','logo.ver1.png',0);
Insert into PERFUME.PRODUCT (PNO,PNAME,PPRICE,PSTOCK,PCATEGORY,PCONTENT,PIMGURL,PSTATUS) values (13,'테스트-1',131354,13,'SOLID','테스트-1','logo.ver1.png',0);
Insert into PERFUME.PRODUCT (PNO,PNAME,PPRICE,PSTOCK,PCATEGORY,PCONTENT,PIMGURL,PSTATUS) values (14,'테스트-2',47782,1234,'SOLID','테스트-2','icon_up.png',0);
Insert into PERFUME.PRODUCT (PNO,PNAME,PPRICE,PSTOCK,PCATEGORY,PCONTENT,PIMGURL,PSTATUS) values (44,'딥디크 ',2000,34,'HAIR','딥디크 향수입니다','test.jpg',0);
REM INSERTING into PERFUME.QNA
SET DEFINE OFF;
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (60,'asd123',to_date('22/02/03','RR/MM/DD'),'3123123','12312',null,'Y',null,58,2,2,to_date('22/02/03','RR/MM/DD'),1,2);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (61,'asd123',to_date('22/02/03','RR/MM/DD'),'ㅂ12321','312313',null,'Y',null,58,3,3,to_date('22/02/03','RR/MM/DD'),1,2);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (66,'asd123',to_date('22/02/04','RR/MM/DD'),'123','123',null,'N',null,66,0,0,to_date('22/02/04','RR/MM/DD'),1,2);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (67,'asd123',to_date('22/02/04','RR/MM/DD'),null,null,null,'N',null,67,0,0,to_date('22/02/04','RR/MM/DD'),1,3);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (68,'asd123',to_date('22/02/04','RR/MM/DD'),'12321',null,null,'N',null,68,0,0,to_date('22/02/04','RR/MM/DD'),1,1);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (69,'asd123',to_date('22/02/04','RR/MM/DD'),null,null,null,'N',null,69,0,0,to_date('22/02/04','RR/MM/DD'),1,2);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (70,'asd123',to_date('22/02/04','RR/MM/DD'),'123','123',null,'N',null,70,0,0,to_date('22/02/04','RR/MM/DD'),0,1);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (71,'asd123',to_date('22/02/04','RR/MM/DD'),'123','123123',null,'N',null,71,0,0,to_date('22/02/04','RR/MM/DD'),1,0);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (128,'a111111',to_date('22/02/07','RR/MM/DD'),'싫어요','안돼요 ','배송','Y',null,127,3,1,to_date('22/02/07','RR/MM/DD'),1,5);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (129,'a111111',to_date('22/02/07','RR/MM/DD'),'찐막','ㄴㅇㄹㅇㄹ','교환','Y',null,127,4,2,to_date('22/02/07','RR/MM/DD'),1,3);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (137,'test_1',to_date('22/02/07','RR/MM/DD'),'왜옹','왜옹왜옹','배송','Y',null,137,0,0,to_date('22/02/07','RR/MM/DD'),1,14);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (138,'test_1',to_date('22/02/07','RR/MM/DD'),'애옹','애옹','배송','Y',null,137,1,1,to_date('22/02/07','RR/MM/DD'),1,5);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (139,'alfk11',to_date('22/02/07','RR/MM/DD'),'왜옹2','왜옹2','배송','N',null,137,2,2,to_date('22/02/07','RR/MM/DD'),1,4);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (142,'a111111',to_date('22/02/07','RR/MM/DD'),'관리자입니다','바꿔드렸습니다~','교환','Y',null,140,2,2,to_date('22/02/07','RR/MM/DD'),1,14);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (31,'asd123',to_date('22/02/03','RR/MM/DD'),'애국가','동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리 나라 만세 무궁화 삼천리 화려강산 대한사람 대한으로 길이 보전하세',null,'N',null,31,0,0,to_date('22/02/03','RR/MM/DD'),0,3);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (32,'asd123',to_date('22/02/03','RR/MM/DD'),'12312','123213213',null,'N',null,32,0,0,to_date('22/02/03','RR/MM/DD'),1,1);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (46,'asd123',to_date('22/02/03','RR/MM/DD'),'교환해줘','교환해줘',null,'Y',null,46,0,0,to_date('22/02/03','RR/MM/DD'),1,1);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (47,'asd123',to_date('22/02/03','RR/MM/DD'),'네','안될거 뭐 있습니까',null,'Y',null,46,1,1,to_date('22/02/03','RR/MM/DD'),1,1);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (48,'asd123',to_date('22/02/03','RR/MM/DD'),'테스토','123123',null,'Y',null,48,0,0,to_date('22/02/03','RR/MM/DD'),1,4);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (49,'asd123',to_date('22/02/03','RR/MM/DD'),'123213','123123123',null,'Y',null,48,1,1,to_date('22/02/03','RR/MM/DD'),1,2);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (50,'asd123',to_date('22/02/03','RR/MM/DD'),'12321','ㅁㅇㅁㅇㅁㄴㅇ',null,'Y',null,48,2,2,to_date('22/02/03','RR/MM/DD'),1,1);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (51,'asd123',to_date('22/02/03','RR/MM/DD'),'ㅇㅇ','ㅇㅇㅇㅇ',null,'Y',null,48,3,3,to_date('22/02/03','RR/MM/DD'),1,1);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (52,'asd123',to_date('22/02/03','RR/MM/DD'),'제발','제발',null,'Y',null,48,4,4,to_date('22/02/03','RR/MM/DD'),1,1);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (53,'asd123',to_date('22/02/03','RR/MM/DD'),'제발-2','제발-3',null,'Y',null,48,5,5,to_date('22/02/03','RR/MM/DD'),1,1);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (54,'asd123',to_date('22/02/03','RR/MM/DD'),'312321312321','312321312312',null,'Y',null,48,6,6,to_date('22/02/03','RR/MM/DD'),1,1);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (55,'asd123',to_date('22/02/03','RR/MM/DD'),'123213','123123213',null,'Y',null,48,7,7,to_date('22/02/03','RR/MM/DD'),1,1);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (56,'asd123',to_date('22/02/03','RR/MM/DD'),'1312312','123123213',null,'Y',null,48,8,8,to_date('22/02/03','RR/MM/DD'),1,2);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (57,'asd123',to_date('22/02/03','RR/MM/DD'),'12321','321313',null,'N',null,48,9,9,to_date('22/02/03','RR/MM/DD'),1,2);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (58,'asd123',to_date('22/02/03','RR/MM/DD'),'아아 답글 테스트','21312312',null,'Y',null,58,0,0,to_date('22/02/03','RR/MM/DD'),1,2);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (59,'asd123',to_date('22/02/03','RR/MM/DD'),'123123','123123',null,'Y',null,58,1,1,to_date('22/02/03','RR/MM/DD'),1,6);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (84,'asd123',to_date('22/02/04','RR/MM/DD'),'213123','123123','교환','Y',null,84,0,0,to_date('22/02/04','RR/MM/DD'),1,7);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (85,'asd123',to_date('22/02/04','RR/MM/DD'),'12321','12313','배송','N',null,84,1,1,to_date('22/02/04','RR/MM/DD'),1,9);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (131,'esdel101n',to_date('22/02/07','RR/MM/DD'),'이규빈1','글변경 500배~','일반 문의','Y',null,131,0,0,to_date('22/02/07','RR/MM/DD'),1,81);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (29,'asd123',to_date('22/02/02','RR/MM/DD'),'213','123',null,'N',null,29,0,0,to_date('22/02/02','RR/MM/DD'),1,2);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (30,'asd123',to_date('22/02/02','RR/MM/DD'),'123223213','123123',null,'N',null,30,0,0,to_date('22/02/02','RR/MM/DD'),0,1);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (33,'asd123',to_date('22/02/03','RR/MM/DD'),'테스트','테스트
',null,'N',null,33,0,0,to_date('22/02/03','RR/MM/DD'),1,1);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (34,'asd123',to_date('22/02/03','RR/MM/DD'),'테스트','테스트',null,'N',null,34,0,0,to_date('22/02/03','RR/MM/DD'),1,1);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (35,'asd123',to_date('22/02/03','RR/MM/DD'),'테스트-3','테스트-4 500배',null,'N',null,35,0,0,to_date('22/02/03','RR/MM/DD'),1,3);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (36,'asd123',to_date('22/02/03','RR/MM/DD'),'테스트-4','테스트-5',null,'N',null,36,0,0,to_date('22/02/03','RR/MM/DD'),1,10);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (37,'asd123',to_date('22/02/03','RR/MM/DD'),'테스트-5 수정 500배','테스트-51231232131231232112312312312312321412412412412412',null,'N',null,37,0,0,to_date('22/02/03','RR/MM/DD'),1,32);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (38,'asd123',to_date('22/02/03','RR/MM/DD'),'테스트-5','테스트-6',null,'N',null,38,0,0,to_date('22/02/03','RR/MM/DD'),0,22);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (39,'asd123',to_date('22/02/03','RR/MM/DD'),'테스트-5','테스트-6',null,'N',null,39,0,0,to_date('22/02/03','RR/MM/DD'),0,35);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (44,'asd123',to_date('22/02/03','RR/MM/DD'),'ㅇㅇ','ㅇㅇ',null,'Y',null,42,2,2,to_date('22/02/03','RR/MM/DD'),1,0);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (45,'asd123',to_date('22/02/03','RR/MM/DD'),'12321','123123',null,'N',null,37,1,1,to_date('22/02/03','RR/MM/DD'),1,0);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (83,'asd123',to_date('22/02/04','RR/MM/DD'),'123','123','배송','N',null,83,0,0,to_date('22/02/04','RR/MM/DD'),1,9);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (87,'asd123',to_date('22/02/04','RR/MM/DD'),'1231','123213','배송','N',null,86,1,1,to_date('22/02/04','RR/MM/DD'),1,3);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (101,'esdel101n',to_date('22/02/04','RR/MM/DD'),'123','1231',null,'N',null,101,0,0,to_date('22/02/04','RR/MM/DD'),0,1);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (124,'a111111',to_date('22/02/05','RR/MM/DD'),'답글입니다','홓호호','배송','N',null,122,3,2,to_date('22/02/05','RR/MM/DD'),1,3);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (125,'ab1111',to_date('22/02/06','RR/MM/DD'),'제가 산게 있는데여','향수 잘못 온 거 같은데 교환 안되나여 수정`','교환','N',null,125,0,0,to_date('22/02/06','RR/MM/DD'),1,66);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (132,'esdel101n',to_date('22/02/07','RR/MM/DD'),'123123','123123123','일반 문의','Y',null,131,2,1,to_date('22/02/07','RR/MM/DD'),1,2);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (133,'esdel101n',to_date('22/02/07','RR/MM/DD'),'123123','123123','환불','Y',null,127,1,1,to_date('22/02/07','RR/MM/DD'),1,0);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (134,'esdel101n',to_date('22/02/07','RR/MM/DD'),'123123213','123123','일반 문의','Y',null,131,1,1,to_date('22/02/07','RR/MM/DD'),0,1);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (40,'asd123',to_date('22/02/03','RR/MM/DD'),'123','123123',null,'N',null,40,0,0,to_date('22/02/03','RR/MM/DD'),1,4);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (41,'asd123',to_date('22/02/03','RR/MM/DD'),'12312312321','123213',null,'N',null,41,0,0,to_date('22/02/03','RR/MM/DD'),0,1);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (42,'asd123',to_date('22/02/03','RR/MM/DD'),'12321','123123답글',null,'N',null,42,0,0,to_date('22/02/03','RR/MM/DD'),1,3);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (43,'asd123',to_date('22/02/03','RR/MM/DD'),'123','123123',null,'N',null,42,1,1,to_date('22/02/03','RR/MM/DD'),1,4);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (65,'ab1111',to_date('22/02/04','RR/MM/DD'),'내가 돌아왓다','하이염',null,'N',null,58,4,4,to_date('22/02/04','RR/MM/DD'),1,3);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (72,'asd123',to_date('22/02/04','RR/MM/DD'),'123','123123',null,'N',null,72,0,0,to_date('22/02/04','RR/MM/DD'),1,0);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (73,'asd123',to_date('22/02/04','RR/MM/DD'),'123','1231231',null,'N',null,73,0,0,to_date('22/02/04','RR/MM/DD'),1,0);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (74,'asd123',to_date('22/02/04','RR/MM/DD'),'321321','32132',null,'N',null,74,0,0,to_date('22/02/04','RR/MM/DD'),1,0);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (75,'asd123',to_date('22/02/04','RR/MM/DD'),'12321','123',null,'N',null,75,0,0,to_date('22/02/04','RR/MM/DD'),1,0);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (76,'asd123',to_date('22/02/04','RR/MM/DD'),'21321','123213',null,'N',null,76,0,0,to_date('22/02/04','RR/MM/DD'),1,0);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (77,'asd123',to_date('22/02/04','RR/MM/DD'),'12321','21312','교환','N',null,77,0,0,to_date('22/02/04','RR/MM/DD'),1,4);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (78,'asd123',to_date('22/02/04','RR/MM/DD'),'123213','123',null,'N',null,78,0,0,to_date('22/02/04','RR/MM/DD'),1,2);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (79,'asd123',to_date('22/02/04','RR/MM/DD'),'21321','213123',null,'N',null,79,0,0,to_date('22/02/04','RR/MM/DD'),1,0);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (80,'asd123',to_date('22/02/04','RR/MM/DD'),'`12`12','`12`12',null,'N',null,80,0,0,to_date('22/02/04','RR/MM/DD'),1,1);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (81,'asd123',to_date('22/02/04','RR/MM/DD'),'312312','312312313',null,'N',null,81,0,0,to_date('22/02/04','RR/MM/DD'),1,3);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (82,'asd123',to_date('22/02/04','RR/MM/DD'),'12312','321313','배송','N',null,82,0,0,to_date('22/02/04','RR/MM/DD'),1,4);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (86,'asd123',to_date('22/02/04','RR/MM/DD'),'123213','131231312','배송','Y',null,86,0,0,to_date('22/02/04','RR/MM/DD'),1,26);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (130,'a111111',to_date('22/02/07','RR/MM/DD'),'2/7 답글','제발','배송','N',null,127,2,1,to_date('22/02/07','RR/MM/DD'),1,7);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (135,'esdel101n',to_date('22/02/07','RR/MM/DD'),'123132','123213','일반 문의','Y',null,122,1,1,to_date('22/02/07','RR/MM/DD'),1,0);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (136,'esdel101n',to_date('22/02/07','RR/MM/DD'),'23123','123213','일반 문의','N',null,131,3,2,to_date('22/02/07','RR/MM/DD'),1,0);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (140,'ab1111',to_date('22/02/07','RR/MM/DD'),'내가 쓴거여','나만 바꿀겨','교환','Y',null,140,0,0,to_date('22/02/07','RR/MM/DD'),1,12);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (141,'ab1111',to_date('22/02/07','RR/MM/DD'),'잘 바꿔줌?','나도잉','교환','Y',null,140,1,1,to_date('22/02/07','RR/MM/DD'),1,6);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (62,'a111111',to_date('22/02/03','RR/MM/DD'),'답글입니다','ㅁㄴㅇㄻㄴㅇㄹ',null,'N',null,62,0,0,to_date('22/02/03','RR/MM/DD'),1,0);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (63,'a111111',to_date('22/02/03','RR/MM/DD'),'찐막','ㅁㄴㅇㄹ',null,'Y',null,63,0,0,to_date('22/02/03','RR/MM/DD'),1,3);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (64,'asd123',to_date('22/02/03','RR/MM/DD'),'1','20',null,'Y',null,63,1,1,to_date('22/02/03','RR/MM/DD'),0,1);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (121,'a111111',to_date('22/02/05','RR/MM/DD'),'찐막','ㅎㅇ','배송','N',null,121,0,0,to_date('22/02/05','RR/MM/DD'),1,2);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (122,'a111111',to_date('22/02/05','RR/MM/DD'),'찐막ㅁㄴㅇㄻㄴㅇㄹ','ㅁㄴㅇㄻㅇㄴㄹ','일반 문의','Y',null,122,0,0,to_date('22/02/05','RR/MM/DD'),1,6);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (123,'a111111',to_date('22/02/05','RR/MM/DD'),'찐막','ㅁㄴㄻㄴㅇㄹ','배송','Y',null,122,2,1,to_date('22/02/05','RR/MM/DD'),1,8);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (126,'alfk11',to_date('22/02/06','RR/MM/DD'),'어쩌구','저쩌구','배송','N',null,126,0,0,to_date('22/02/06','RR/MM/DD'),1,1);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (127,'alfk11',to_date('22/02/06','RR/MM/DD'),'모야 돌려줘요-','환불해줘요-','환불','Y',null,127,0,0,to_date('22/02/06','RR/MM/DD'),1,311);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (143,'qwe123',to_date('22/02/07','RR/MM/DD'),'예ㅏ','예아','교환','N',null,140,3,3,to_date('22/02/07','RR/MM/DD'),1,1);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (144,'esdel101n',to_date('22/02/07','RR/MM/DD'),'배송이 안옵니다.','빨리 보내주세요. 저 화날려고 합니다.
자극하지 마세요.','배송','Y',null,144,0,0,to_date('22/02/07','RR/MM/DD'),1,3);
Insert into PERFUME.QNA (QNO,MID,QDATE,QTITLE,QCONTENT,QCATEGORY,QANSWER,QACONTENT,QREF,QREF_STEP,QREF_LEVEL,QADATE,QSTATUS,QHIT) values (145,'qwe123',to_date('22/02/07','RR/MM/DD'),'환불 하세요. ^ ^7','불만있으시면 환불 요청 하시기 바랍니다.','배송','N',null,144,1,1,to_date('22/02/07','RR/MM/DD'),1,7);
REM INSERTING into PERFUME.REVIEW
SET DEFINE OFF;
Insert into PERFUME.REVIEW (RNO,MID,RTITLE,RCONTENT,RDATE,RHIT,RIMGURL,RSTATUS) values (7,'alfk11','안녕','우앵',to_date('22/02/05','RR/MM/DD'),4,null,1);
Insert into PERFUME.REVIEW (RNO,MID,RTITLE,RCONTENT,RDATE,RHIT,RIMGURL,RSTATUS) values (37,'a111111','아주 좋아요','헤이~ㅇㄹ',to_date('22/02/06','RR/MM/DD'),25,null,1);
Insert into PERFUME.REVIEW (RNO,MID,RTITLE,RCONTENT,RDATE,RHIT,RIMGURL,RSTATUS) values (51,'esdel101n','성능좋은','성능 좋은',to_date('22/02/07','RR/MM/DD'),29,null,1);
Insert into PERFUME.REVIEW (RNO,MID,RTITLE,RCONTENT,RDATE,RHIT,RIMGURL,RSTATUS) values (55,'esdel101n','123','123',to_date('22/02/07','RR/MM/DD'),1,null,0);
Insert into PERFUME.REVIEW (RNO,MID,RTITLE,RCONTENT,RDATE,RHIT,RIMGURL,RSTATUS) values (9,'test_1',null,null,to_date('22/02/05','RR/MM/DD'),4,null,1);
Insert into PERFUME.REVIEW (RNO,MID,RTITLE,RCONTENT,RDATE,RHIT,RIMGURL,RSTATUS) values (11,'test_1',null,null,to_date('22/02/05','RR/MM/DD'),1,null,1);
Insert into PERFUME.REVIEW (RNO,MID,RTITLE,RCONTENT,RDATE,RHIT,RIMGURL,RSTATUS) values (13,'test_1',null,null,to_date('22/02/05','RR/MM/DD'),0,null,1);
Insert into PERFUME.REVIEW (RNO,MID,RTITLE,RCONTENT,RDATE,RHIT,RIMGURL,RSTATUS) values (15,'test_1',null,null,to_date('22/02/05','RR/MM/DD'),5,null,1);
Insert into PERFUME.REVIEW (RNO,MID,RTITLE,RCONTENT,RDATE,RHIT,RIMGURL,RSTATUS) values (17,'test_1',null,null,to_date('22/02/05','RR/MM/DD'),2,null,1);
Insert into PERFUME.REVIEW (RNO,MID,RTITLE,RCONTENT,RDATE,RHIT,RIMGURL,RSTATUS) values (19,'test_1','adsads','adsads',to_date('22/02/05','RR/MM/DD'),13,null,1);
Insert into PERFUME.REVIEW (RNO,MID,RTITLE,RCONTENT,RDATE,RHIT,RIMGURL,RSTATUS) values (3,'esdel101n','잘쓰고 있어요','네아',to_date('22/02/04','RR/MM/DD'),15,null,0);
Insert into PERFUME.REVIEW (RNO,MID,RTITLE,RCONTENT,RDATE,RHIT,RIMGURL,RSTATUS) values (5,'esdel101n','123123123','123123123123123213',to_date('22/02/04','RR/MM/DD'),12,null,0);
Insert into PERFUME.REVIEW (RNO,MID,RTITLE,RCONTENT,RDATE,RHIT,RIMGURL,RSTATUS) values (35,'ab1111','ㅗ',null,to_date('22/02/05','RR/MM/DD'),30,null,0);
Insert into PERFUME.REVIEW (RNO,MID,RTITLE,RCONTENT,RDATE,RHIT,RIMGURL,RSTATUS) values (41,'a111111','귣귣','정말 좋아요',to_date('22/02/06','RR/MM/DD'),79,null,1);
Insert into PERFUME.REVIEW (RNO,MID,RTITLE,RCONTENT,RDATE,RHIT,RIMGURL,RSTATUS) values (45,'a111111','제발','제발 되어라',to_date('22/02/06','RR/MM/DD'),134,'body_ (1)1.jpg',1);
Insert into PERFUME.REVIEW (RNO,MID,RTITLE,RCONTENT,RDATE,RHIT,RIMGURL,RSTATUS) values (47,'a111111','제발염 이미지염','제발염제발ㅇ여',to_date('22/02/07','RR/MM/DD'),47,null,1);
Insert into PERFUME.REVIEW (RNO,MID,RTITLE,RCONTENT,RDATE,RHIT,RIMGURL,RSTATUS) values (49,'a111111','아주 좋아요','제발',to_date('22/02/07','RR/MM/DD'),49,'test.jpg',0);
Insert into PERFUME.REVIEW (RNO,MID,RTITLE,RCONTENT,RDATE,RHIT,RIMGURL,RSTATUS) values (21,'esdel101n','기모띠','ㄷㄷㄷㄷㄷ',to_date('22/02/05','RR/MM/DD'),5,null,1);
Insert into PERFUME.REVIEW (RNO,MID,RTITLE,RCONTENT,RDATE,RHIT,RIMGURL,RSTATUS) values (23,'esdel101n','코알라 좋아','코알라 500배',to_date('22/02/05','RR/MM/DD'),1,null,0);
Insert into PERFUME.REVIEW (RNO,MID,RTITLE,RCONTENT,RDATE,RHIT,RIMGURL,RSTATUS) values (25,'esdel101n','123123123',null,to_date('22/02/05','RR/MM/DD'),1,null,1);
Insert into PERFUME.REVIEW (RNO,MID,RTITLE,RCONTENT,RDATE,RHIT,RIMGURL,RSTATUS) values (27,'esdel101n','123123','12312313',to_date('22/02/05','RR/MM/DD'),4,null,1);
Insert into PERFUME.REVIEW (RNO,MID,RTITLE,RCONTENT,RDATE,RHIT,RIMGURL,RSTATUS) values (29,'esdel101n','123123','123123123123123123123',to_date('22/02/05','RR/MM/DD'),3,null,1);
Insert into PERFUME.REVIEW (RNO,MID,RTITLE,RCONTENT,RDATE,RHIT,RIMGURL,RSTATUS) values (31,'esdel101n','`12`12','`12`12`12',to_date('22/02/05','RR/MM/DD'),73,null,1);
Insert into PERFUME.REVIEW (RNO,MID,RTITLE,RCONTENT,RDATE,RHIT,RIMGURL,RSTATUS) values (33,'esdel101n','213123','123213',to_date('22/02/05','RR/MM/DD'),44,null,1);
Insert into PERFUME.REVIEW (RNO,MID,RTITLE,RCONTENT,RDATE,RHIT,RIMGURL,RSTATUS) values (43,'a111111','ㅗ','좋아여',to_date('22/02/06','RR/MM/DD'),10,null,0);
Insert into PERFUME.REVIEW (RNO,MID,RTITLE,RCONTENT,RDATE,RHIT,RIMGURL,RSTATUS) values (53,'esdel101n','성능좋은 고체','성능 좋은 고체 213123123',to_date('22/02/07','RR/MM/DD'),76,'캡처.PNG',1);
Insert into PERFUME.REVIEW (RNO,MID,RTITLE,RCONTENT,RDATE,RHIT,RIMGURL,RSTATUS) values (39,'a111111','ㅗ','좋아여',to_date('22/02/06','RR/MM/DD'),2,null,0);
--------------------------------------------------------
--  DDL for Index PK_CART_NO
--------------------------------------------------------

  CREATE UNIQUE INDEX "PERFUME"."PK_CART_NO" ON "PERFUME"."CART" ("CNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_MEMBER_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "PERFUME"."PK_MEMBER_ID" ON "PERFUME"."MEMBER" ("MID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_NOTICE_NO
--------------------------------------------------------

  CREATE UNIQUE INDEX "PERFUME"."PK_NOTICE_NO" ON "PERFUME"."NOTICE" ("NNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_ORDER_NO
--------------------------------------------------------

  CREATE UNIQUE INDEX "PERFUME"."PK_ORDER_NO" ON "PERFUME"."ORDER" ("ONO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_PRODUCT_NO
--------------------------------------------------------

  CREATE UNIQUE INDEX "PERFUME"."PK_PRODUCT_NO" ON "PERFUME"."PRODUCT" ("PNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_QNA_NO
--------------------------------------------------------

  CREATE UNIQUE INDEX "PERFUME"."PK_QNA_NO" ON "PERFUME"."QNA" ("QNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_REVIEW_NO
--------------------------------------------------------

  CREATE UNIQUE INDEX "PERFUME"."PK_REVIEW_NO" ON "PERFUME"."REVIEW" ("RNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table CART
--------------------------------------------------------

  ALTER TABLE "PERFUME"."CART" ADD CONSTRAINT "PK_CART_NO" PRIMARY KEY ("CNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "PERFUME"."CART" MODIFY ("MID" NOT NULL ENABLE);
  ALTER TABLE "PERFUME"."CART" MODIFY ("PNO" NOT NULL ENABLE);
  ALTER TABLE "PERFUME"."CART" MODIFY ("CNO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "PERFUME"."MEMBER" ADD CONSTRAINT "PK_MEMBER_ID" PRIMARY KEY ("MID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "PERFUME"."MEMBER" MODIFY ("MID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NOTICE
--------------------------------------------------------

  ALTER TABLE "PERFUME"."NOTICE" ADD CONSTRAINT "PK_NOTICE_NO" PRIMARY KEY ("NNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "PERFUME"."NOTICE" MODIFY ("NNO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ORDER
--------------------------------------------------------

  ALTER TABLE "PERFUME"."ORDER" ADD CONSTRAINT "PK_ORDER_NO" PRIMARY KEY ("ONO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "PERFUME"."ORDER" MODIFY ("MID" NOT NULL ENABLE);
  ALTER TABLE "PERFUME"."ORDER" MODIFY ("PNO" NOT NULL ENABLE);
  ALTER TABLE "PERFUME"."ORDER" MODIFY ("ONO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PRODUCT
--------------------------------------------------------

  ALTER TABLE "PERFUME"."PRODUCT" ADD CONSTRAINT "PK_PRODUCT_NO" PRIMARY KEY ("PNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "PERFUME"."PRODUCT" MODIFY ("PNO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table QNA
--------------------------------------------------------

  ALTER TABLE "PERFUME"."QNA" ADD CONSTRAINT "PK_QNA_NO" PRIMARY KEY ("QNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "PERFUME"."QNA" MODIFY ("MID" NOT NULL ENABLE);
  ALTER TABLE "PERFUME"."QNA" MODIFY ("QNO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table REVIEW
--------------------------------------------------------

  ALTER TABLE "PERFUME"."REVIEW" ADD CONSTRAINT "PK_REVIEW_NO" PRIMARY KEY ("RNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "PERFUME"."REVIEW" MODIFY ("MID" NOT NULL ENABLE);
  ALTER TABLE "PERFUME"."REVIEW" MODIFY ("RNO" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table CART
--------------------------------------------------------

  ALTER TABLE "PERFUME"."CART" ADD CONSTRAINT "FK_MEMBER_TO_CART_ID" FOREIGN KEY ("MID")
	  REFERENCES "PERFUME"."MEMBER" ("MID") ENABLE;
  ALTER TABLE "PERFUME"."CART" ADD CONSTRAINT "FK_PRODUCT_TO_CART_NO" FOREIGN KEY ("PNO")
	  REFERENCES "PERFUME"."PRODUCT" ("PNO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ORDER
--------------------------------------------------------

  ALTER TABLE "PERFUME"."ORDER" ADD CONSTRAINT "FK_MEMBER_TO_ORDER_ID" FOREIGN KEY ("MID")
	  REFERENCES "PERFUME"."MEMBER" ("MID") ENABLE;
  ALTER TABLE "PERFUME"."ORDER" ADD CONSTRAINT "FK_PRODUCT_TO_ORDER_NO" FOREIGN KEY ("PNO")
	  REFERENCES "PERFUME"."PRODUCT" ("PNO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table QNA
--------------------------------------------------------

  ALTER TABLE "PERFUME"."QNA" ADD CONSTRAINT "FK_MEMBER_TO_QNA_ID" FOREIGN KEY ("MID")
	  REFERENCES "PERFUME"."MEMBER" ("MID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table REVIEW
--------------------------------------------------------

  ALTER TABLE "PERFUME"."REVIEW" ADD CONSTRAINT "FK_MEMBER_TO_REVIEW_ID" FOREIGN KEY ("MID")
	  REFERENCES "PERFUME"."MEMBER" ("MID") ENABLE;
