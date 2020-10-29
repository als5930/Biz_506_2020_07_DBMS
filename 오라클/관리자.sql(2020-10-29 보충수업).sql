-- 관리자 화면

-- TableSpace, User 생성
-- User 권한 생성

-- TABLESPACE는 실제로 데이터를 저장할 파일을 지정하기
-- 1M 부족하면 1K로 늘려라
-- 오라클에서 DB작업을 할때 가장 먼저 수행해야할 작업
CREATE TABLESPACE testTS -- 사용할 Tablespece이름
DATAFILE 'textTS.dbf' -- 실제 데이터가 저정될 파일일,ㅁ
SIZE 1M -- 데이터가 없더라도 공간을 1mByte 만큼 확보 
AUTOEXTEND ON NEXT 1K; -- 데이터를 저장하는 과정에서 공간이 부족하면 1kbyte만큼 자동으로 증가

-- 사용자 생성
CREATE USER test1 -- 사용자 ID
IDENTIFIED BY test1 --사용자 password
DEFAULT TABLESPACE testTS; --CRUD를 수행해서 데이터를 저장할 곳


-- 사용자에게 권한부여
GRANT DBA TO test1; --  test1사용자에게 DBA 권한을 부여

-- 