<<<<<<< HEAD
-- ����� ������ ȭ��

-- ��α׸� ���� TableSpace����
CREATE TABLESPACE blogTS
DATAFILE 'C:/bizwork/oracle_dbms/blog.dbf'
SIZE 1M AUTOEXTEND ON NEXT 1K; 

-- user1 ����� ����
CREATE USER user1 IDENTIFIED BY user1
DEFAULT TABLESPACE blogTS;


-- user1�� ���� �ο�
GRANT DBA TO user1;


=======
-- ����� ������ ȭ��

-- ��α׸� ���� TableSpace����
CREATE TABLESPACE blogTS
DATAFILE 'C:/bizwork/oracle_dbms/blog.dbf'
SIZE 1M AUTOEXTEND ON NEXT 1K; 

-- user1 ����� ����
CREATE USER user1 IDENTIFIED BY user1
DEFAULT TABLESPACE blogTS;


-- user1�� ���� �ο�
GRANT DBA TO user1;


>>>>>>> 8a144af459798edd12c07d3a213830f494728702
