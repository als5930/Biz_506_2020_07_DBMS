-- test1 사용자 화면
-- 거의 대부분의 DBMS 공통의 사용되는 명령어들
-- 데이터를 저장할  Table,Entity생성

CREATE TABLE tbl_test(
    t_num CHAR(5), -- 문자열 5
    t_name nVARCHAR2(20), --한글포함 문자열 
    t_tel VARCHAR2(20) -- 영문 숫자 전용 문자열
    
    );

--데이터 저장하기
INSERT INTO tbl_test(t_num, t_name,t_tel) VALUES ('S0001','홍길동','010-111-1111');
INSERT INTO tbl_test(t_num, t_name,t_tel) VALUES ('S0002','이몽룡','010-222-2222');
INSERT INTO tbl_test(t_num, t_name,t_tel) VALUES ('S0003','성춘향','010-333-3333');
INSERT INTO tbl_test(t_num, t_name,t_tel) VALUES ('S0004','장보고','010-444-4444');
INSERT INTO tbl_test(t_num, t_name,t_tel) VALUES ('S0005','장영실','010-555-5555');

--데이터가 모두 잘 저장되어있나 확인
SELECT * FROM tbl_test;

-- INSTER 한 데이터중에 이름이 이몽룡인 데이터가 있는가 확인
--조건검색
SELECT * FROM tbl_test WHERE t_name = '이몽룡';
-- 번호가 S0004인 사람이 누구인가 알아보고 싶을때
SELECT * FROM tbl_test WHERE t_num = 'S0004';

-- 이름이 성춘향인 사람의 전화번호가 010-222-2222 으로 변경
-- 저장된 데이터 수정하고싶을때
UPDATE tbl_test SET t_tel = '010-222-1112' WHERE t_name ='성춘향';

-- 성춘향의 전화번호를 바꾸려고 할때 혹시 데터중에 성춘향의 데이터가 2개이상 있으면 이름으로 UPDATE하면 문자가 발생할수있다
-- 바꾸고자 하는 성춘향의 데이터를 조건검색하여 번호를 바꾸는 것이 좋다
SELECT * FROM tbl_test WHERE t_name ='성춘향';
UPDATE tbl_test SET t_tel = '010-333-3333' WHERE t_num = 'S0003';

-- 필요없는 데이터는 삭제를 수행한다
SELECT * FROM tbl_test WHERE t_name ='장영실';
DELETE FROM tbl_test WHERE t_num = 'S0005';


-- 테이블 삭제
DROP TABLE tbl_test;