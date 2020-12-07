CREATE TABLE tbl_employees(

    id NUMBER PRIMARY KEY,
    first_name nVARCHAR2(30),
    last_name  nVARCHAR2(30),
    address nVARCHAR2(125),
    tel VARCHAR(20),
    email VARCHAR(125)
);

CREATE SEQUENCE seq_employees
START WITH 1 INCREMENT BY 1;


INSERT INTO tbl_employees(id,first_name,last_name,address,tel,email) VALUES ('1','홍','길동','광주','010-111-1111','email');

commit;

SELECT * FROM tbl_employees;

-- ---------------------------
CREATE TABLE tbl_notice(

    id NUMBER PRIMARY KEY,
    n_date  VARCHAR2(125),
    n_time  VARCHAR2(125),
    n_writer nVARCHAR2(20),
    n_subject nVARCHAR2(125),
    n_text nVARCHAR2(2000)
);
CREATE SEQUENCE seq_notice
START WITH 1 INCREMENT BY 1;



INSERT INTO tbl_notice(id,n_date,n_time,n_writer,n_subject,n_text) VALUES ('1','09:40','2020-12-07','dd','제목','내용');

SELECT * FROM tbl_notice;

DROP TABLE tbl_notice;


