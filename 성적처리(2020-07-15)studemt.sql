-- 여기는 grade 사용자화면입니다
-- exel 파일에서 학생 데이터를 IMPORT 한후 SELECT 실습하기

-- 모든 데이터를 다 보여달라
SELECT * FROM tbl_student;

--SELECTION 
--데이터중에서 조건을 부여하여 조건에 맞는 리스트만 보이기
-- Rwcored의제한(전체 데이터개수 > 조건에 맞는 데이터개수)
-- WHERE 절에 조건을 설정하여 데이터를 조회
-- PK, UNIQUE로 설정된 칼럼을 단일조건으로 SELECTION할때는
--이데이터는 1개의 객체로 취급한다(VO에담는다)
SELECT * FROM tbl_student
WHERE st_num = '20001';

-- st_num에 저장된 값이 '20001' 이상이고(AND)'20010'이하인 조건에 맞는 
-- 데이터 리스트(Record)만 보여달라
-- PK,UNIQUE로 설정된 칼럼을 복합 조건절로 SELECTION할때는
-- 레코드가 1개만 나타날지라도 이데이터는 리스트로 취급한다
SELECT * FROM tbl_student
WHERE st_num >= '20001' AND st_num <= '20010';

-- st_name에 저장된 값이 독고예준 인 리스트만 보여라
-- PK, UNIQUE로 설정된 칼럼이 아닌경우
-- SELECTION을 수행했을때 나타나는 레코드가1개일지라도
-- 이데이터는 리스트로 취급한다
SELECT * FROM tbl_student
WHERE st_name ='독고예준'

--PRJECTION
--SELECTION된 레코드의 개수와 무관하게, 특정 칼럼만 리스트에 포함하는 조회
-- 레코드 개수와 관계없이 보이는 칼럼을 제한하는 조회
SELECT st_num, st_name, st_dept, st_grade
FROM tbl_student;

-- SELECTION & PROJECTION
--WHERE 조건절을 사용해서 레코드를 제한하고
--칼럼명을 나열하여 필요한 항목(필드)만 보고자 할때
--칼럼리스트를 제한하기

SELECT st_num, st_name, st_dept, st_grade
FROM tbl_student
WHERE st_name = '남동예';


-- 비교연산자(>,=,<)와 관계연산자(AND,OR) 를사용하여
--SELECTION 구현하기
SELECT st_num, st_name, st_dept, st_grade
FROM tbl_student
WHERE st_num >= '20001' AND st_num = '20010';
-- '2001'<= st_num>=20010' 이렇게 사용하면 안됨

-- BETWEEN연산을 사용하여
--범위를 제한하는 SELECTION구현하기
SELECT st_num, st_name, st_dept, st_grade
FROM tbl_student
WHERE st_num BETWEEN '20001' AND '20010';

--비교연산자(=)와 관계연산자 OR 를 조합하여 SELECTION구현하기
SELECT st_num, st_name, st_dept, st_grade
FROM tbl_student
WHERE st_num = '20001' OR st_num = '20003' OR st_num='20006';



-- 한개의칼럼에 다수의 OR 조건을 부여
-- SELECTION을 수행할때는 IN 연사자를 사용하여 구현할수있다
SELECT st_num, st_name, st_dept, st_grade
FROM tbl_student
WHERE st_num IN ('20001','20003','20006');

--문자열(VARCHAR2, nVARCHAR2)칼럼일 경우
-- 문자열 전체가 아닌 부분만 일치하는 조건을 부여하여 SELECRION 구현하기
-- LIKE 연산자를 사용하여 부분문자열 검색 (조회)
-- '%' : 문자열의 포함여부를 제한
-- %찾기 : '찾기' 문자열로 끝나는 모든 데이터 레코드
-- '찾기%': '찾기' 문자열로 시작하는 모든 레코드
-- '%찾기%': '찾기' 문자열이 포함된 모든 데이터 레코드

-- LIKE 연산자를 사용하여 조회(검색)을 수행하면
--DB에 설정된 모든 INDEX를 무시하고 
-- 무조건 처음부터 뒤지는 연산이 수행된다

SELECT st_num, st_name, st_dept, st_grade
FROM tbl_student
WHERE st_num LIKE '%7';







