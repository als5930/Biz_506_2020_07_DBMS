CREATE TABLE tbl_score(
    s_num NUMBER(5) PRIMARY KEY,
    s_depa NUMBER(10) ,
    s_kor NUMBER(10),
    s_eng NUMBER(10),
    s_math NUMBER(10),
    s_avg NUMBER(10),
    s_sum NUMBER(10)
    );
    
INSERT INTO tbl_score(s_num,s_depa,s_kor,s_eng,s_math,s_avg,s_sum) VALUES('20001','001','64','65','79','208','69');
INSERT INTO tbl_score(s_num,s_depa,s_kor,s_eng,s_math,s_avg,s_sum) VALUES('20002','003','70','92','99','261','87');
INSERT INTO tbl_score(s_num,s_depa,s_kor,s_eng,s_math,s_avg,s_sum) VALUES('20003','002','56','55','52','163','54');
INSERT INTO tbl_score(s_num,s_depa,s_kor,s_eng,s_math,s_avg,s_sum) VALUES('20004','001','67','57','55','179','60');
INSERT INTO tbl_score(s_num,s_depa,s_kor,s_eng,s_math,s_avg,s_sum) VALUES('20005','003','75','58','74','207','69');
INSERT INTO tbl_score(s_num,s_depa,s_kor,s_eng,s_math,s_avg,s_sum) VALUES('20006','004','52','97','78','227','76');
INSERT INTO tbl_score(s_num,s_depa,s_kor,s_eng,s_math,s_avg,s_sum) VALUES('20007','005','85','72','92','249','83');
INSERT INTO tbl_score(s_num,s_depa,s_kor,s_eng,s_math,s_avg,s_sum) VALUES('20008','002','62','64','62','188','63');
INSERT INTO tbl_score(s_num,s_depa,s_kor,s_eng,s_math,s_avg,s_sum) VALUES('20009','003','81','95','86','262','87');
INSERT INTO tbl_score(s_num,s_depa,s_kor,s_eng,s_math,s_avg,s_sum) VALUES('20010','004','93','77','79','249','83');

SELECT s_sum FROM tbl_score WHERE s_sum >= '60';

SELECT SUM(s_kor) 국어총점, AVG(s_kor) 국어평균, SUM(s_eng) 영어총점,AVG(s_eng) 영어평균, SUM(s_math) 수학총점,AVG(s_math)수학평균 FROM tbl_score;

SELECT * FROM tbl_score;
SELECT SUM(s_kor+s_eng+s_math) AS 전체총점, AVG(s_kor+s_eng+s_math) AS 전체평균 FROM tbl_score;



SELECT AVG(SUM(s_kor)+SUM(s_eng) + SUM(s_math)) FROM tbl_score;

SELECT * FROM tbl_score WHERE s_num ='20007';
UPDATE tbl_score SET s_kor='92',s_eng='90',s_math='88' WHERE s_num='20007';

DELETE FROM tbl_score WHERE s_num='20010';
SELECT * FROM tbl_score;

UPDATE tbl_score SET s_kor='66',s_eng='79',s_math='79' WHERE s_num='20001';
UPDATE tbl_score SET s_kor='56',s_eng='93',s_math='97' WHERE s_num='20002';
UPDATE tbl_score SET s_kor='99',s_eng='60',s_math='72' WHERE s_num='20003';
UPDATE tbl_score SET s_kor='93',s_eng='69',s_math='98' WHERE s_num='20004';
UPDATE tbl_score SET s_kor='51',s_eng='87',s_math='87' WHERE s_num='20005';
UPDATE tbl_score SET s_kor='65',s_eng='79',s_math='87' WHERE s_num='20006';
UPDATE tbl_score SET s_kor='54',s_eng='99',s_math='64' WHERE s_num='20007';
UPDATE tbl_score SET s_kor='100',s_eng='78',s_math='55' WHERE s_num='20008';
UPDATE tbl_score SET s_kor='91',s_eng='88',s_math='56' WHERE s_num='20009';

SELECT SUM(s_kor+s_eng+s_math) AS 전체총점, AVG(s_kor+s_eng+s_math) AS 전체평균 FROM tbl_score;
