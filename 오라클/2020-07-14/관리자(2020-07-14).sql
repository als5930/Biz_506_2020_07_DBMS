-- comment : 한줄 주석
/*
    여러줄 주석
    SQL 명령을  입력할때 명령이 끝났다라는 것을 알리기위해 ; 붙여준다
    
    Ctrl+Enter :현재 커서가 있는곳의 명령문을 DBMS 로 보내고 결과를 받기
*/ 

-- 현재 오라클에 접속된 사용자(sys)가 관리하는 table들이 있는데 
-- 그중에서 tab이라는 이름의 table정보를 가져와서 나에게 보여달라
-- 오라클의 tab table은 현재 접속된 사용자가 관리하는 DB Object(객체)들의
-- 정보를 보관하고 있는 table
SELECT * 
FROM tab;

-- 오라클 system 데이터 사전의 자세한 정보를 보관하는 table
SELECT *
FROM all_all_tables;

-- SELECT키워드 FROM절을 포함하는 명령문 형태로 작성하며
-- DBMS가 보관하고 있는 데이터를 table형식으로 보여달라 라는 명령
-- DBMS의 DML(Database Manuplation Lang)중에서 
-- Read(조회)를 수행하는 명령
-- CRUD중에서 R: Read, Retrive를 수행하는 명령문
SELECT *
FROM 주소록;

-- SQL 명령문을 통해서 DB객체를 만들고 삭제하고 데이터를 추가 변경 삭제를 수행할텐데
-- sys 사용자로 접속을 하게되면 중요한 정보를 잘못 삭제 변경할 우려가 있기 때문에
-- 실습을 위해서 사용자를 생성하여 수행할것이다

-- 사용자를 추가하는 순서
--1. table Space: 데이터를 저장할 물리적 공간을 설정
--2. user : 사용자를 생성하고 물리적 저장공간과 연결

-- TableSpace 생성(Create)
-- TavleSpace는 오라클에서 Data를 저장할 물리적 공간을 설정하는것
-- myTS:앞으로 SQL을 통해서 사용할 TableSpace의 Alias(이름)
-- '.../myTS.dbf': 저장할 파일 이름
-- size : 오라클레서는 성능의 효율성을 주기위해 
-- 일단 빈 공간을 일정 부분 설정하게 된다
-- 크기는 최초에 저장할 데이터의 크기등을 계산하여 설계하고 설정한다
-- 너무작으면 효율성이 떨어지고 너무 크면 불필요한 공간을 낭비한다
-- 오라클 xe(Express Edition)에서는 taable Space의 최대크기를 11G로 제한한다
-- 만약 size 10G로 지정하고 용량이 초과되어 AUTO NEXT로 추가가되는 경우
--- 전체 size가11G를 넘어서면 오류가 나면서 더이상 데이터를 저장할수없게된다
-- AUTO...NEXT : 만약 초기에 저장한 size공간에 데이터가 가득하면
-- 자동으로 용량을 늘려서 저장할수있도록 만들어라
-- Size의1M : 기본크기를 1024-1024 byte크기로 저장하라 
-- Size를 지정할때 1MB라고 하지 않는다
--Naxt 500K : 자동으로 확장(늘리기)를 1024*500크기로 설정
--Naxt를 지정할때 500KB라고 하지않는다

-- CRATE로 시작되는 명령문 : DDL(Data definition Lang) : 데이터선언 생성(추가와는 다름)
CREATE TABLESPACE myTS
DATAFILE 'C:\bizwork\workspace\oralc_data/myTS.dbf'
SIZE 1M AUTOEXTEND ON NEXT 500K;

-- 질의작성기에서 코드를 작성할때 약속
-- DBMS 의SQL문은 특별한 일부경우를 제외하고 대소문자 구별을 하지 않는다
-- DBMS SQL 오라클과 관련된 키워드는 모두 대문자로 작성할것
-- 변수 값 내용 등은 소문자로 사용하며 
--특별히 대소문자를 구분해야 하는 경우는 별도로 공지할것

-- DROP : DDL명령의 CREATE와 반대되는 개념의 명령문
-- DROP 명령은 데이터를 물리적으로 완전삭제하는 개념이므로 매우 신중하게 사용해야한다
DROP TABLESPACE myTS -- myTS tableSpace를 삭제하면서
INCLUDING CONTENTS AND DATAFILES -- 연관된 정보와 data file도 같이 삭제하고
CASCADE CONSTRAINTS;-- 그리고 설정된 권한 역할 등이 있으면 그들도 삭제하라

--위에서 생성한 tableSpace를 관리하며 데이터를 조작할 사용자를 생성
CREATE USER user1 IDENTIFIED BY 1234 -- 사용자 ID를 user1으로 설정하고 초기 비번을 1234로 설정
DEFAULT TABLESPACE myTS;

--DCL : Data Control Lang.
-- 새로 생성된 user1에게 권한을 부여하기
-- user1이 로그인만 할수있도록 권한(역할)을 부여하라
GRANT CONNECT TO user1;
-- user1이 로그인 할수있는 권한을 제거
REVOKE CONNECT FROM user1;

-- user1이 로그인을 수행하고 최소한으로 데이터들을 관리할수있도록 권한을 부여
-- RESOURCE: 오라클에서 USER에게 줄수있는 권한중 상당히 많은 일을 수행할수 있는권한
-- 현재 시스템에 설치된 모든 TableSpace를 대상으로 무제한(TableSpace가 허용하는 범위)저장이 가능한 권한
-- RESOURCE 권한은 Standard Enterprice DBMS에서는 함부로 부여해서는 안된다
-- CONNECT와 RESOURCE권한을 부여하게 되면 거의 DBA수준의 권한을 갖게된다
GRANT CONNECT,RESOURCE TO user1

-- login권한과 table을 생성할수있는권한
GRANT CONNECT,CREATE TABLE TO user1;
-- login권한 taeble 생성권한 학생정보 테이블에 데이터를 추가할수있는권한
GRANT CONNECT,CREATE,INSERT TABLE 학생정보 TO user1;
-- login table생성 학생정보 추가 학생정보 조회
GRANT CONNECT,CREATE,INSERT TABLE 학생정보,SELECT TABLE 학생정보 TO user1;

--권한을 세부적으로 부여하는것은 실무상에서 매우 필요하며 중요한 일이다
-- 하지만 학습하는 입장에서 GRANT부여를 너무 많은 노력을 보이면 피곤하니
-- xe 버전에서 사용자에게 DBA권한을 부여하고, 실습을 수행한다
GRANT DBA TO user1;

-- DBA 권한(Roll)은 SysDBA보다 한단계 낮은 권한 등급을 가지며
-- 일반적으로 자신이 생성한 Table등 DB Object에만 접근하여 명령을 수행한다

