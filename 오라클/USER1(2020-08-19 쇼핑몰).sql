<<<<<<< HEAD
-- 여기는 user1 화면입니다 -- 

-- 빛나리 쇼핑몰 기본정보 테이블
-- 상품정보 테이블
CREATE TABLE tbl_product(

    P_CODE	CHAR(6)	PRIMARY KEY,
    P_NAME	nVARCHAR2(30)	NOT NULL,
    P_DCODE	CHAR(4)	,
    P_STD	nVARCHAR2(20),	
    P_IPRICE	NUMBER	,
    P_OPRICE	NUMBER	,
    P_IMAGE	nVARCHAR2(125)	
		
);

-- 거래처 정보 테이블
CREATE TABLE tbl_dept(

    D_CODE	CHAR(4)	PRIMARY KEY,
    D_NAME	nVARCHAR2(50)	NOT NULL,
    D_CEO	nVARCHAR2(30)	NOT NULL,
    D_TEL	VARCHAR(20),	
    D_ADDRESS	nVARCHAR2(255),	
    D_MANAGER	nVARCHAR2(50),	
    D_MN_TEL	NVARCHAR2(20)	

		
);



=======
-- 여기는 user1 화면입니다 -- 

-- 빛나리 쇼핑몰 기본정보 테이블
-- 상품정보 테이블
CREATE TABLE tbl_product(

    P_CODE	CHAR(6)	PRIMARY KEY,
    P_NAME	nVARCHAR2(30)	NOT NULL,
    P_DCODE	CHAR(4)	,
    P_STD	nVARCHAR2(20),	
    P_IPRICE	NUMBER	,
    P_OPRICE	NUMBER	,
    P_IMAGE	nVARCHAR2(125)	
		
);

-- 거래처 정보 테이블
CREATE TABLE tbl_dept(

    D_CODE	CHAR(4)	PRIMARY KEY,
    D_NAME	nVARCHAR2(50)	NOT NULL,
    D_CEO	nVARCHAR2(30)	NOT NULL,
    D_TEL	VARCHAR(20),	
    D_ADDRESS	nVARCHAR2(255),	
    D_MANAGER	nVARCHAR2(50),	
    D_MN_TEL	NVARCHAR2(20)	

		
);



>>>>>>> 8a144af459798edd12c07d3a213830f494728702
