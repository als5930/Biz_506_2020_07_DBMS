CREATE TABLE tbl_grade(
g_seq   NUMBER PRIMARY KEY,
g_num	VARCHAR2(10) NOT NULL,
g_name	nVARCHAR2(20) NOT NULL,
g_kor	NUMBER,
g_eng	NUMBER,
g_math	NUMBER,
g_avg	NUMBER,
g_sum	NUMBER

);


CREATE SEQUENCE SEQ_GRADE
START WITH 1 INCREMENT BY 1;

INSERT INTO tbl_grade(g_seq,g_num, g_name,g_kor,g_eng,g_math,g_avg,g_sum) VALUES ('1','01','홍','30','30','30','30','30');
INSERT INTO tbl_grade(g_seq,g_num, g_name,g_kor,g_eng,g_math,g_avg,g_sum) VALUES ('2','02','길','30','30','30','30','30');

commit;

DELETE tbl_grade ;

DROP TABLE tbl_grade;