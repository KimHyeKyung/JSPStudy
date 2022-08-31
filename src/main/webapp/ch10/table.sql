DROP TABLE IF EXISTS tblRegister;

CREATE TABLE TBLREGISTER 
	( ID      VARCHAR2(20), 
	  PWD     VARCHAR2(20) NOT NULL ENABLE, 
	  NAME    VARCHAR2(20), 
	  NUM1    CHAR(6), 
	  NUM2    CHAR(7), 
	  EMAIL   VARCHAR2(30), 
	  PHONE   VARCHAR2(30), 
	  ZIPCODE CHAR(5), 
	  ADDRESS VARCHAR2(60), 
	  JOB     VARCHAR2(30), 
	  PRIMARY KEY (ID)
	) ;