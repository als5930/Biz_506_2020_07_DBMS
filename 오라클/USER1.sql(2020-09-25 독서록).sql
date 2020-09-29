<<<<<<< HEAD
-- 여기는 USER1 독서록 프로젝트

CREATE TABLE tbl_member (

    M_USERID	VARCHAR2(30)	PRIMARY KEY,	
    M_PASSWORD	nVARCHAR2(255)	NOT NULL,		
    M_NAME	nVARCHAR2(30),			
    M_TEL	VARCHAR2(30),			
    M_ADDRESS	nVARCHAR2(125),
    M_EMAIL VARCHAR2(30),
    M_ROLL	VARCHAR2(20),			
    ENABLE	CHAR(1)	DEFAULT '0' CONSTRAINT enable_veri CHECK(ENABLE = '0' OR ENABLE = '1') ,		
    AccountNonExpired	CHAR(1),			
    AccountNonLocked	CHAR(1),			
    CredentialsNonExpired	CHAR(1)			
);

DROP TABLE tbl_member;


CREATE TABLE tbl_authority(

seq	NUMBER		PRIMARY KEY,	
M_USERID	nVARCHAR2(30)	NOT NULL,		
M_Role	nVARCHAR2(30)	NOT NULL		
);

CREATE SEQUENCE seq_authority
START WITH 1 INCREMENT BY 1;
=======
-- 여기는 USER1 독서록 프로젝트

CREATE TABLE tbl_member (

    M_USERID	VARCHAR2(30)	PRIMARY KEY,	
    M_PASSWORD	nVARCHAR2(255)	NOT NULL,		
    M_NAME	nVARCHAR2(30),			
    M_TEL	VARCHAR2(30),			
    M_ADDRESS	nVARCHAR2(125),			
    M_ROLL	VARCHAR2(20),			
    ENABLE	CHAR(1)	DEFAULT '0' CONSTRAINT enable_veri CHECK(ENABLE = '0' OR ENABLE = '1') ,		
    AccountNonExpired	CHAR(1),			
    AccountNonLocked	CHAR(1),			
    CredentialsNonExpired	CHAR(1)			
);

DROP TABLE tbl_authorily;


CREATE TABLE tbl_authority(

seq	NUMBER		PRIMARY KEY,	
M_USERID	nVARCHAR2(30)	NOT NULL,		
M_Rool	nVARCHAR2(30)	NOT NULL		
);

CREATE SEQUENCE seq_authority
START WITH 1 INCREMENT BY 1;
>>>>>>> 8a144af459798edd12c07d3a213830f494728702
