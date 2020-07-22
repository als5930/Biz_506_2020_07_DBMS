-- ����� user2 ȭ���Դϴ�

 
--�ֹ���ȣ,            ����ȣ,                                              ��ǰ�ڵ�,��ǰ��,�ǸŰ���,����,�հ�
--O00001                 C0032                                                  P00049
--O00002 C0038 P00001 P00069
--O00003	C0026


-- O00001	2019-01-02	C0032	��Ǽ�	010-2401-3866	P00049,P00050,P00060	P00049	P00050	P00060
-- O00002	2019-01-03	C0038	�����	010-5861-5613	P00001,P00027	P00001	P00027	
-- O00003	2019-01-03	C0026	������	010-2767-0420	P00069,P00026,P00083	P00069	P00026	P00083

 

SELECT * FROM tbl_�ֹ�������;

-----------------------
-- �ֹ��� ����
-----------------------

DROP TABLE tbl_order;
CREATE TABLE tbl_order(

O_SEQ	NUMBER		PRIMARY KEY,
O_NUM	CHAR(6)	NOT NULL,	
O_DATE	CHAR(10)	NOT NULL,	
O_CNUM	CHAR(5)	NOT NULL,	
O_PCODE	CHAR(6)	NOT NULL,	
O_PAME	nVARCHAR2(125),		
O_PRICE	NUMBER,		
O_QTY	NUMBER,		
O_TOTAL	NUMBER		

);

 

-- tbl_order Table�� ����鼭 ���⿡ �߰��� �����͵� �߿� 1���� Į�����δ� PK�� ����� ���
-- ������ �Ϸù�ȣ Į���� �ϳ� �߰��ϰ� �� Į���� PK�����ߴ�.
-- �̻�Ȳ�� �Ǹ� �����͸� �߰��Ҷ� ������ O_SEQ Į���� ����� �����͵��� ���캸��
-- ��ϵ��� �ʴ� ���ڸ� ������� �� ������ SEQ���� ���ϰ� INSERT�� �����ؾ� �Ѵ�.
-- �̷������ �ڵ带 �ſ� �����ϰ� ����� ����� ���� �Ѵ�.

-- �̷��� ������ �����ϱ� ���� SEQUENCE ��� ��ü�� ����Ͽ�, �ڵ����� �Ϸù�ȣ�� ����� ����� ����Ѵ�.

CREATE SEQUENCE seq_order
START WITH 1 INCREMENT BY 1;

-- ǥ�� SQL���� ������ ����� �Ҷ�
-- SELECT 3+ 4; ��� �ڵ��� �ϸ� 3+4�� ����� Ȯ�� �� �� �ִ�.
-- �׷��� ����Ŭ������ SELECT ��ɹ��� FROM(table) ���� ������ ���������� ����.
-- �̷��� �ڵ尡 �ʿ��Ҷ� �ý��ۿ� �̹� �غ�Ǿ� �ִ� DUAL�̶�� DUMY���̺��� ����ؼ� �ڵ��� �Ѵ�.
SELECT 3 +4 FROM DUAL;

-- seq_order ��ü�� NEXTVAL�̶�� ���(�Լ�����)�� ȣ���Ͽ�
-- ��ȭ�Ǵ� �Ϸù�ȣ�� �����޶� �ϴ��ڵ�
SELECT seq_order.NEXTVAL FROM DUAL;

-- �� seq_order�� NEXTVAL ����� ����Ͽ� INSERT�� �����Ҷ� �Ϸù�ȣ�� �ڵ����� �ο��Ҽ��մ�.
 
-- �ֹ���ȣ,            ����ȣ,                                              ��ǰ�ڵ�,��ǰ��,�ǸŰ���,����,�հ�
--O00001                 C0032                                                  P00049
--O00002C0038P00001P00069

INSERT INTO tbl_order(o_seq, o_date, o_num, o_cnum, o_pcode)
    VALUES (seq_order.NEXTVAL,'2020-07-22','O00001','C0032',' P0001');
INSERT INTO tbl_order(o_seq, o_date, o_num, o_cnum, o_pcode) 
    VALUES (seq_order.NEXTVAL,'2020-07-22','O00001','C0032',' P0002');
INSERT INTO tbl_order(o_seq, o_date, o_num, o_cnum, o_pcode)
    VALUES (seq_order.NEXTVAL,'2020-07-22','O00001','C0032',' P0003');
-- ���� tbl_order ���̺� ���� ���� �����Ͱ� ������
-- O00001 C0032   P00049 �̷��� �����͸� �߰��Ѵٸ� �ƹ��� ������� ���� �߰��� ���� ���̴�.
SELECT o_num, o_cnum, o_pcode FROM tbl_order;

-- �ֹ���ȣ, ����ȣ, ��ǰ�ڵ� �� 3���� Į�������� ���� �ߺ��Ǹ� INSERT�� ���� �ʵ��� ���������� �����ؾ� �Ѵ�.
-- UNIQUE : Į���� ���� �ߺ��Ǿ INSERT�� �Ǵ°��� �����ϴ� ��������
-- �ֹ����̺� UNIQUE ���������� �߰�����
ALTER TABLE tbl_order
    ADD CONSTRAINT UQ_ORDER
        UNIQUE( o_num, o_cnum, o_pcode);

-- UNIQUE�� �߰��ϴµ� �̹� UNIQUE ���ǿ� ����� ���� ������ ���������� �߰����� �ʴ´�.
--                      PK, UIQUE�� ������ Į���� ���� �߰��ϰų�,
--          �̹��ߺ��� ���� �ִµ�, PK, UNIQUE�� �����Ϸ� �Ҷ� �߻��� �Ѵ�.

 
-- UNIQUE  ���������� �߰��ϱ� ���� �������� �߰��� �����͸� �����Ϸ��� ������ ���� SQL�� �����Ѵ�.
-- �� SQL�� �����ϸ�, �����Ǿ�� �ȵǴ� �߿��� �ֹ����� 1���� ���� ���� �Ǿ� ���� ���̴�.
-- �� Table�� �����ʹ� ���Ἲ�� �ҰԵȴ� => �����̻�
DELETE FROM tbl_order
 WHERE o_num = 'O00001' AND o_cnum = 'C0032' AND o_pcode = 'P00001';

 -- ������ �Ϸù�ȣ Į���� ������� �ֱ� ������ PK�� �������� ���� ������ �� �ִ�.

 SELECT * FROM tbl_order;

 DELETE FROM tbl_order
    WHERE o_seq = 9;
    ALTER TABLE tbl_order
    ADD CONSTRAINT UQ_ORDER
        UNIQUE( o_num, o_cnum, o_pcode);
-- �ĺ�Ű�߿� ����Į������ PK�� ������ �� ���� ��Ȳ�� �߻��� �ϸ�
-- ������ Į������ PK�� �����ϴµ�
-- UPDATE, DELETE �����Ҷ�, WHERE ī��1 = �� AND Į��2 = �� AND Į��3 �� ....�� ���� ������ �ο��ؾ� �Ѵ�.
-- �̰��� ������ ���Ἲ�� �����ϴµ� �ſ� �������� ȯ���̴�.
-- �̷��� �����Ϳ� ������� SEQĮ���� ����� PK�� ��������


