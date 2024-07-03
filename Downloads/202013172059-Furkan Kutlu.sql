--------------------------------------------------------
--  File created - Perþembe-Haziran-13-2024   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence CEZA_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "LI"."CEZA_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence KITAP_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "LI"."KITAP_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ODEME_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "LI"."ODEME_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ODUNC_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "LI"."ODUNC_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ORTAKLAR_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "LI"."ORTAKLAR_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 5 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REZERVASYON_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "LI"."REZERVASYON_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence UYE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "LI"."UYE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence YAZAR_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "LI"."YAZAR_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table CEZA_TB
--------------------------------------------------------

  CREATE TABLE "LI"."CEZA_TB" 
   (	"CEZA_ID" NUMBER, 
	"UYE_ID" NUMBER, 
	"ODUNC_ID" NUMBER, 
	"CEZA_TARIHI" NUMBER, 
	"CEZA_MIKTAR" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LI" ;
--------------------------------------------------------
--  DDL for Table KITAP_TB
--------------------------------------------------------

  CREATE TABLE "LI"."KITAP_TB" 
   (	"KITAP_ID" NUMBER, 
	"ISIM" VARCHAR2(50 BYTE), 
	"KATEGORI" VARCHAR2(50 BYTE), 
	"CIKIS_YILI" DATE, 
	"BASIM_SAYISI" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LI" ;
--------------------------------------------------------
--  DDL for Table KITAP_YAZAR_TB
--------------------------------------------------------

  CREATE TABLE "LI"."KITAP_YAZAR_TB" 
   (	"KITAP_ID" NUMBER, 
	"YAZAR_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LI" ;
--------------------------------------------------------
--  DDL for Table ODEME_TB
--------------------------------------------------------

  CREATE TABLE "LI"."ODEME_TB" 
   (	"ODEME_ID" NUMBER, 
	"UYE_ID" NUMBER, 
	"ODEME_TARIH" DATE, 
	"ODEME_MIKTAR" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LI" ;
--------------------------------------------------------
--  DDL for Table ODUNC_TB
--------------------------------------------------------

  CREATE TABLE "LI"."ODUNC_TB" 
   (	"ODUNC_ID" NUMBER, 
	"KITAP_ID" NUMBER, 
	"UYE_ID" NUMBER, 
	"ALIS_TARIHI" DATE, 
	"IADE_TARIH" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LI" ;
--------------------------------------------------------
--  DDL for Table ORTAKLAR_TB
--------------------------------------------------------

  CREATE TABLE "LI"."ORTAKLAR_TB" 
   (	"ORTAK_ID" NUMBER, 
	"ISIM" VARCHAR2(50 BYTE), 
	"SOYAD" VARCHAR2(50 BYTE), 
	"TELEFON" VARCHAR2(15 BYTE), 
	"EMAIL" VARCHAR2(100 BYTE), 
	"ADRES" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LI" ;
--------------------------------------------------------
--  DDL for Table REZERVASYON_TB
--------------------------------------------------------

  CREATE TABLE "LI"."REZERVASYON_TB" 
   (	"REZERVASYON_ID" NUMBER, 
	"UYE_ID" NUMBER, 
	"KITAP_ID" NUMBER, 
	"REZERVASYON_TARIH" DATE, 
	"DURUM" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LI" ;
--------------------------------------------------------
--  DDL for Table UYE_TB
--------------------------------------------------------

  CREATE TABLE "LI"."UYE_TB" 
   (	"UYE_ID" NUMBER, 
	"AD" VARCHAR2(50 BYTE), 
	"SOYAD" VARCHAR2(50 BYTE), 
	"KATILMA_TARIHI" DATE, 
	"DURUM" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LI" ;
--------------------------------------------------------
--  DDL for Table YAZAR_TB
--------------------------------------------------------

  CREATE TABLE "LI"."YAZAR_TB" 
   (	"YAZAR_ID" NUMBER, 
	"YAZAR_ISIM" VARCHAR2(50 BYTE), 
	"YAZAR_SOYAD" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LI" ;
--------------------------------------------------------
--  DDL for View KITAP_VIEW
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "LI"."KITAP_VIEW" ("KITAP_ID", "ISIM", "KATEGORI", "CIKIS_YILI", "BASIM_SAYISI") AS 
  SELECT 
    KITAP_ID,
    ISIM,
    KATEGORI,
    TO_CHAR(CIKIS_YILI, 'YYYY') AS CIKIS_YILI, -- CIKIS_YILI sütununu yýl olarak metne dönüþtürüyoruz
    BASIM_SAYISI
FROM 
    KITAP_TB
;
REM INSERTING into LI.CEZA_TB
SET DEFINE OFF;
Insert into LI.CEZA_TB (CEZA_ID,UYE_ID,ODUNC_ID,CEZA_TARIHI,CEZA_MIKTAR) values ('1','1','1','2024','50');
Insert into LI.CEZA_TB (CEZA_ID,UYE_ID,ODUNC_ID,CEZA_TARIHI,CEZA_MIKTAR) values ('3','3','3','2024','40');
Insert into LI.CEZA_TB (CEZA_ID,UYE_ID,ODUNC_ID,CEZA_TARIHI,CEZA_MIKTAR) values ('4','4','4','2024','20');
Insert into LI.CEZA_TB (CEZA_ID,UYE_ID,ODUNC_ID,CEZA_TARIHI,CEZA_MIKTAR) values ('5','5','5','2024','35');
REM INSERTING into LI.KITAP_TB
SET DEFINE OFF;
Insert into LI.KITAP_TB (KITAP_ID,ISIM,KATEGORI,CIKIS_YILI,BASIM_SAYISI) values ('1','Savaþ ve Barýþ','Roman',to_date('01/01/1869','DD/MM/RRRR'),'10. baský');
Insert into LI.KITAP_TB (KITAP_ID,ISIM,KATEGORI,CIKIS_YILI,BASIM_SAYISI) values ('2','1984','Distopya',to_date('08/06/1949','DD/MM/RRRR'),'5. baský');
Insert into LI.KITAP_TB (KITAP_ID,ISIM,KATEGORI,CIKIS_YILI,BASIM_SAYISI) values ('3','Küçük Prens','Masal',to_date('06/04/1943','DD/MM/RRRR'),'15. baský');
Insert into LI.KITAP_TB (KITAP_ID,ISIM,KATEGORI,CIKIS_YILI,BASIM_SAYISI) values ('4','Suç ve Ceza','Roman',to_date('01/01/1866','DD/MM/RRRR'),'8. baský');
Insert into LI.KITAP_TB (KITAP_ID,ISIM,KATEGORI,CIKIS_YILI,BASIM_SAYISI) values ('5','Anna Karenina','Roman',to_date('01/01/1877','DD/MM/RRRR'),'12. baský');
REM INSERTING into LI.KITAP_YAZAR_TB
SET DEFINE OFF;
Insert into LI.KITAP_YAZAR_TB (KITAP_ID,YAZAR_ID) values ('1','1');
Insert into LI.KITAP_YAZAR_TB (KITAP_ID,YAZAR_ID) values ('2','2');
Insert into LI.KITAP_YAZAR_TB (KITAP_ID,YAZAR_ID) values ('3','3');
Insert into LI.KITAP_YAZAR_TB (KITAP_ID,YAZAR_ID) values ('4','4');
Insert into LI.KITAP_YAZAR_TB (KITAP_ID,YAZAR_ID) values ('5','5');
REM INSERTING into LI.ODEME_TB
SET DEFINE OFF;
Insert into LI.ODEME_TB (ODEME_ID,UYE_ID,ODEME_TARIH,ODEME_MIKTAR) values ('1','1',to_date('14/04/2024','DD/MM/RRRR'),'100');
Insert into LI.ODEME_TB (ODEME_ID,UYE_ID,ODEME_TARIH,ODEME_MIKTAR) values ('3','3',to_date('16/04/2024','DD/MM/RRRR'),'50');
Insert into LI.ODEME_TB (ODEME_ID,UYE_ID,ODEME_TARIH,ODEME_MIKTAR) values ('4','4',to_date('17/04/2024','DD/MM/RRRR'),'125');
Insert into LI.ODEME_TB (ODEME_ID,UYE_ID,ODEME_TARIH,ODEME_MIKTAR) values ('5','5',to_date('18/04/2024','DD/MM/RRRR'),'150');
REM INSERTING into LI.ODUNC_TB
SET DEFINE OFF;
Insert into LI.ODUNC_TB (ODUNC_ID,KITAP_ID,UYE_ID,ALIS_TARIHI,IADE_TARIH) values ('1','1','1',to_date('10/04/2024','DD/MM/RRRR'),to_date('20/04/2024','DD/MM/RRRR'));
Insert into LI.ODUNC_TB (ODUNC_ID,KITAP_ID,UYE_ID,ALIS_TARIHI,IADE_TARIH) values ('3','3','3',to_date('20/02/2024','DD/MM/RRRR'),to_date('15/03/2024','DD/MM/RRRR'));
Insert into LI.ODUNC_TB (ODUNC_ID,KITAP_ID,UYE_ID,ALIS_TARIHI,IADE_TARIH) values ('4','4','4',to_date('10/01/2024','DD/MM/RRRR'),to_date('20/01/2024','DD/MM/RRRR'));
Insert into LI.ODUNC_TB (ODUNC_ID,KITAP_ID,UYE_ID,ALIS_TARIHI,IADE_TARIH) values ('5','5','5',to_date('05/12/2023','DD/MM/RRRR'),to_date('05/01/2024','DD/MM/RRRR'));
REM INSERTING into LI.ORTAKLAR_TB
SET DEFINE OFF;
Insert into LI.ORTAKLAR_TB (ORTAK_ID,ISIM,SOYAD,TELEFON,EMAIL,ADRES) values ('1','Ahmet','Kara','555-123-4567','ahmet.kara@example.com','Ýstanbul, Türkiye');
Insert into LI.ORTAKLAR_TB (ORTAK_ID,ISIM,SOYAD,TELEFON,EMAIL,ADRES) values ('2','Mehmet','Yýldýz','555-987-6543','mehmet.yildiz@example.com','Ankara, Türkiye');
Insert into LI.ORTAKLAR_TB (ORTAK_ID,ISIM,SOYAD,TELEFON,EMAIL,ADRES) values ('3','Ayþe','Demir','555-456-7890','ayse.demir@example.com','Ýzmir, Türkiye');
Insert into LI.ORTAKLAR_TB (ORTAK_ID,ISIM,SOYAD,TELEFON,EMAIL,ADRES) values ('4','Fatma','Þahin','555-321-6548','fatma.sahin@example.com','Bursa, Türkiye');
REM INSERTING into LI.REZERVASYON_TB
SET DEFINE OFF;
Insert into LI.REZERVASYON_TB (REZERVASYON_ID,UYE_ID,KITAP_ID,REZERVASYON_TARIH,DURUM) values ('1','1','2',to_date('14/04/2024','DD/MM/RRRR'),'Aktif');
Insert into LI.REZERVASYON_TB (REZERVASYON_ID,UYE_ID,KITAP_ID,REZERVASYON_TARIH,DURUM) values ('3','3','4',to_date('16/04/2024','DD/MM/RRRR'),'Aktif');
Insert into LI.REZERVASYON_TB (REZERVASYON_ID,UYE_ID,KITAP_ID,REZERVASYON_TARIH,DURUM) values ('4','4','5',to_date('17/04/2024','DD/MM/RRRR'),'Pasif');
REM INSERTING into LI.UYE_TB
SET DEFINE OFF;
Insert into LI.UYE_TB (UYE_ID,AD,SOYAD,KATILMA_TARIHI,DURUM) values ('1','Ahmet','Yýlmaz',to_date('15/05/2023','DD/MM/RRRR'),'Aktif');
Insert into LI.UYE_TB (UYE_ID,AD,SOYAD,KATILMA_TARIHI,DURUM) values ('3','Mehmet','Demir',to_date('10/07/2023','DD/MM/RRRR'),'Aktif');
Insert into LI.UYE_TB (UYE_ID,AD,SOYAD,KATILMA_TARIHI,DURUM) values ('4','Fatma','Þahin',to_date('05/08/2023','DD/MM/RRRR'),'Pasif');
Insert into LI.UYE_TB (UYE_ID,AD,SOYAD,KATILMA_TARIHI,DURUM) values ('5','Ali','Öz',to_date('18/09/2023','DD/MM/RRRR'),'Aktif');
REM INSERTING into LI.YAZAR_TB
SET DEFINE OFF;
Insert into LI.YAZAR_TB (YAZAR_ID,YAZAR_ISIM,YAZAR_SOYAD) values ('1','Lev','Tolstoy');
Insert into LI.YAZAR_TB (YAZAR_ID,YAZAR_ISIM,YAZAR_SOYAD) values ('2','George','Orwell');
Insert into LI.YAZAR_TB (YAZAR_ID,YAZAR_ISIM,YAZAR_SOYAD) values ('3','Antoine','de Saint-Exupéry');
Insert into LI.YAZAR_TB (YAZAR_ID,YAZAR_ISIM,YAZAR_SOYAD) values ('4','Fyodor','Dostoevsky');
Insert into LI.YAZAR_TB (YAZAR_ID,YAZAR_ISIM,YAZAR_SOYAD) values ('5','Leo','Tolstoy');
--------------------------------------------------------
--  DDL for Index KITAP_ISIM_UNIQUE
--------------------------------------------------------

  CREATE UNIQUE INDEX "LI"."KITAP_ISIM_UNIQUE" ON "LI"."KITAP_TB" ("ISIM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LI" ;
--------------------------------------------------------
--  DDL for Procedure KITAP_ODUNC_VERME
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "LI"."KITAP_ODUNC_VERME" (
    p_uye_id IN UYE_TB.UYE_ID%TYPE,
    p_kitap_id IN KITAP_TB.KITAP_ID%TYPE,
    p_alis_tarihi IN DATE,
    p_iade_tarihi IN DATE
)
IS
    v_odunc_id NUMBER;
    v_rezervasyon_exists NUMBER;
BEGIN
    -- ODUNC_SEQ sýrasýný kullanarak bir sonraki ID'yi al
    SELECT ODUNC_SEQ.NEXTVAL INTO v_odunc_id FROM DUAL;

    -- Kitabýn rezerve edilip edilmediðini kontrol et
    -- EXISTS yerine COUNT(*) kullanarak bir sonuç döndür
    SELECT COUNT(*) INTO v_rezervasyon_exists 
    FROM REZERVASYON_TB 
    WHERE UYE_ID = p_uye_id AND KITAP_ID = p_kitap_id AND DURUM = 'Aktif';

    IF v_rezervasyon_exists > 0 THEN
        DBMS_OUTPUT.PUT_LINE('Bu kitap rezerve edilmiþ, ödünç verme iþlemi yapýlamaz.');
    ELSE
        -- Ödünç verme iþlemini gerçekleþtir
        INSERT INTO ODUNC_TB (ODUNC_ID, KITAP_ID, UYE_ID, ALIS_TARIHI, IADE_TARIH)
        VALUES (v_odunc_id, p_kitap_id, p_uye_id, p_alis_tarihi, p_iade_tarihi);

        DBMS_OUTPUT.PUT_LINE('Kitap ödünç verme iþlemi baþarýyla gerçekleþtirildi. Ödünç ID: ' || v_odunc_id);
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Bir hata oluþtu: ' || SQLERRM);
END KITAP_ODUNC_VERME;

/
--------------------------------------------------------
--  Constraints for Table YAZAR_TB
--------------------------------------------------------

  ALTER TABLE "LI"."YAZAR_TB" ADD PRIMARY KEY ("YAZAR_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LI"  ENABLE;
--------------------------------------------------------
--  Constraints for Table UYE_TB
--------------------------------------------------------

  ALTER TABLE "LI"."UYE_TB" ADD PRIMARY KEY ("UYE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LI"  ENABLE;
--------------------------------------------------------
--  Constraints for Table KITAP_TB
--------------------------------------------------------

  ALTER TABLE "LI"."KITAP_TB" ADD CONSTRAINT "KITAP_ISIM_UNIQUE" UNIQUE ("ISIM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LI"  ENABLE;
  ALTER TABLE "LI"."KITAP_TB" ADD PRIMARY KEY ("KITAP_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LI"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ODUNC_TB
--------------------------------------------------------

  ALTER TABLE "LI"."ODUNC_TB" ADD PRIMARY KEY ("ODUNC_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LI"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ODEME_TB
--------------------------------------------------------

  ALTER TABLE "LI"."ODEME_TB" ADD PRIMARY KEY ("ODEME_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LI"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CEZA_TB
--------------------------------------------------------

  ALTER TABLE "LI"."CEZA_TB" ADD PRIMARY KEY ("CEZA_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LI"  ENABLE;
--------------------------------------------------------
--  Constraints for Table REZERVASYON_TB
--------------------------------------------------------

  ALTER TABLE "LI"."REZERVASYON_TB" ADD PRIMARY KEY ("REZERVASYON_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LI"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ORTAKLAR_TB
--------------------------------------------------------

  ALTER TABLE "LI"."ORTAKLAR_TB" ADD PRIMARY KEY ("ORTAK_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LI"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CEZA_TB
--------------------------------------------------------

  ALTER TABLE "LI"."CEZA_TB" ADD FOREIGN KEY ("ODUNC_ID")
	  REFERENCES "LI"."ODUNC_TB" ("ODUNC_ID") ENABLE;
  ALTER TABLE "LI"."CEZA_TB" ADD FOREIGN KEY ("UYE_ID")
	  REFERENCES "LI"."UYE_TB" ("UYE_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table KITAP_YAZAR_TB
--------------------------------------------------------

  ALTER TABLE "LI"."KITAP_YAZAR_TB" ADD FOREIGN KEY ("KITAP_ID")
	  REFERENCES "LI"."KITAP_TB" ("KITAP_ID") ENABLE;
  ALTER TABLE "LI"."KITAP_YAZAR_TB" ADD FOREIGN KEY ("YAZAR_ID")
	  REFERENCES "LI"."YAZAR_TB" ("YAZAR_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ODEME_TB
--------------------------------------------------------

  ALTER TABLE "LI"."ODEME_TB" ADD FOREIGN KEY ("UYE_ID")
	  REFERENCES "LI"."UYE_TB" ("UYE_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ODUNC_TB
--------------------------------------------------------

  ALTER TABLE "LI"."ODUNC_TB" ADD FOREIGN KEY ("KITAP_ID")
	  REFERENCES "LI"."KITAP_TB" ("KITAP_ID") ENABLE;
  ALTER TABLE "LI"."ODUNC_TB" ADD FOREIGN KEY ("UYE_ID")
	  REFERENCES "LI"."UYE_TB" ("UYE_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table REZERVASYON_TB
--------------------------------------------------------

  ALTER TABLE "LI"."REZERVASYON_TB" ADD FOREIGN KEY ("KITAP_ID")
	  REFERENCES "LI"."KITAP_TB" ("KITAP_ID") ENABLE;
  ALTER TABLE "LI"."REZERVASYON_TB" ADD FOREIGN KEY ("UYE_ID")
	  REFERENCES "LI"."UYE_TB" ("UYE_ID") ENABLE;
