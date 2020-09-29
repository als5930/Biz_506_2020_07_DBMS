<<<<<<< HEAD
-- 여기는 user1 작업 화면입니다

CREATE TABLE tbl_blogs (

    bl_seq	NUMBER	PRIMARY KEY,
    bl_user	nVARCHAR2(20)	NOT NULL,
    bl_date	VARCHAR2(10)	NOT NULL,
    bl_time	VARCHAR2(10)	NOT NULL,
    bl_title	nVARCHAR2(125)	NOT NULL,
    bl_contents	nVARCHAR2(2000)	NOT NULL
);

-- 일
CREATE SEQUENCE seq_blog
START WITH 1 INCREMENT BY 1;

/*
SQL Developer와 기타 다른 프로그밍 프로젝트와 연동 할때
SQL Developer에서 insert, update, delete를 수행했음에도 불구하고
프로젝트에서 조회되는 데이터에 반영이 안되는 경우가 있다

원인 
SQL Developer CUD(insert, Update, Delete)를 수행하면
실제로 로컬 스토리지의 Data 직접 적용이 안된다
변경한 데이턴,ㄴ 메모리가 


*/


INSERT INTO tbl_blogs(bl_seq, bl_user,bl_date,bl_time,bl_title,bl_contents)
VALUES(SEQ_BLOG.NEXTVAL, '홍길동','2020-08-14','09:47:00','나의 블로그','블로그를 만들자');

INSERT INTO tbl_blogs(bl_seq, bl_user,bl_date,bl_time,bl_title,bl_contents)
VALUES(SEQ_BLOG.NEXTVAL, '이몽룡','2020-08-14','09:47:01','블로그 축하','블로그개설을 축하 합니다');

INSERT INTO tbl_blogs(bl_seq, bl_user,bl_date,bl_time,bl_title,bl_contents)
VALUES(SEQ_BLOG.NEXTVAL, '성춘향','2020-08-14','09:47:02','블로그 축하','블로그개설을 축하 합니다');
COMMIT;

=======
-- 여기는 user1 작업 화면입니다

CREATE TABLE tbl_blogs (

    bl_seq	NUMBER	PRIMARY KEY,
    bl_user	nVARCHAR2(20)	NOT NULL,
    bl_date	VARCHAR2(10)	NOT NULL,
    bl_time	VARCHAR2(10)	NOT NULL,
    bl_title	nVARCHAR2(125)	NOT NULL,
    bl_contents	nVARCHAR2(2000)	NOT NULL
);

-- 일
CREATE SEQUENCE seq_blog
START WITH 1 INCREMENT BY 1;

/*
SQL Developer와 기타 다른 프로그밍 프로젝트와 연동 할때
SQL Developer에서 insert, update, delete를 수행했음에도 불구하고
프로젝트에서 조회되는 데이터에 반영이 안되는 경우가 있다

원인 
SQL Developer CUD(insert, Update, Delete)를 수행하면
실제로 로컬 스토리지의 Data 직접 적용이 안된다
변경한 데이턴,ㄴ 메모리가 


*/


INSERT INTO tbl_blogs(bl_seq, bl_user,bl_date,bl_time,bl_title,bl_contents)
VALUES(SEQ_BLOG.NEXTVAL, '홍길동','2020-08-14','09:47:00','나의 블로그','블로그를 만들자');

INSERT INTO tbl_blogs(bl_seq, bl_user,bl_date,bl_time,bl_title,bl_contents)
VALUES(SEQ_BLOG.NEXTVAL, '이몽룡','2020-08-14','09:47:01','블로그 축하','블로그개설을 축하 합니다');

INSERT INTO tbl_blogs(bl_seq, bl_user,bl_date,bl_time,bl_title,bl_contents)
VALUES(SEQ_BLOG.NEXTVAL, '성춘향','2020-08-14','09:47:02','블로그 축하','블로그개설을 축하 합니다');
COMMIT;

>>>>>>> 8a144af459798edd12c07d3a213830f494728702
SELECT * FROM tbl_blogs;