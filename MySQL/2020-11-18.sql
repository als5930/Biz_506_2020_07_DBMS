USE mysql;
SHOW TABLES;
show databases;

CREATE DATABASE mybbs;
SHOW DATABASES;
use mybbs;
SHOW TABLES;

DESC tbl_bbs;

INSERT INTO tbl_bbs(b_writer,b_date_time,b_content,b_count)
values('홍길동','2020-11-18','게시판 만들기',0);

SELECT * FROM tbl_bbs;

USE mydb;
DELETE FROM tbl_book;
DROP TABLE tbl_book;

SHOW TABLES; 