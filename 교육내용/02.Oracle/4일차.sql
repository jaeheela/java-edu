--집합 연산자(SET 연산자) : 두 개의 SELECT 명령에 대한 검색결과를 이용하여 집합 결과값을 제공하는 연산자
--합집합(UNION),교집합(INTERSECT),차집합(MINUS)

--SUPER_HERO 테이블 생성 - 속성 : 이름(문자형)
CREATE TABLE SUPER_HERO(NAME VARCHAR2(20) PRIMARY KEY);

--SUPER_HERO 테이블에 행 삽입
INSERT INTO SUPER_HERO VALUES('슈퍼맨');
INSERT INTO SUPER_HERO VALUES('아이언맨');
INSERT INTO SUPER_HERO VALUES('배트맨');
INSERT INTO SUPER_HERO VALUES('앤트맨');
INSERT INTO SUPER_HERO VALUES('스파이더맨');
SELECT * FROM SUPER_HERO;
COMMIT;

--MARVEL_HERO 테이블 생성 - 속성 : 이름(문자형),등급(숫자형)
CREATE TABLE MARVEL_HERO(NAME VARCHAR2(20) PRIMARY KEY,GRADE NUMBER(1));

--MARVEL_HERO 테이블에 행 삽입
INSERT INTO MARVEL_HERO VALUES('아이언맨',3);
INSERT INTO MARVEL_HERO VALUES('헐크',1);
INSERT INTO MARVEL_HERO VALUES('스파이더맨',4);
INSERT INTO MARVEL_HERO VALUES('토르',2);
INSERT INTO MARVEL_HERO VALUES('앤트맨',5);
SELECT * FROM MARVEL_HERO;
COMMIT;

--UNION : 두 개의 SELECT 명령으로 검색된 행을 합한 결과를 제공하는 키워드 - 중복행 제외
--형식)SELECT 검색대상,... FROM 테이블명 UNION SELECT 검색대상,... FROM 테이블명
--두 개의 SELECT 명령은 검색대상의 자료형과 갯수가 반드시 일치하도록 검색
SELECT NAME FROM SUPER_HERO UNION SELECT NAME FROM MARVEL_HERO;

--UNION ALL : 두 개의 SELECT 명령으로 검색된 행을 합한 결과를 제공하는 키워드 - 중복행 포함
--형식)SELECT 검색대상,... FROM 테이블명 UNION ALL SELECT 검색대상,... FROM 테이블명
SELECT NAME FROM SUPER_HERO UNION ALL SELECT NAME FROM MARVEL_HERO;

--INTERSECT : 두 개의 SELECT 명령으로 검색된 행에서 중복된 결과를 제공하는 키워드
--형식)SELECT 검색대상,... FROM 테이블명 INTERSECT SELECT 검색대상,... FROM 테이블명
SELECT NAME FROM SUPER_HERO INTERSECT SELECT NAME FROM MARVEL_HERO;

--MINUS : 첫번째 SELECT 명령으로 검색된 행에서 두번째 SELECT 명령의 검색행을 제외한 결과를 제공하는 키워드
--형식)SELECT 검색대상,... FROM 테이블명 MINUS SELECT 검색대상,... FROM 테이블명
SELECT NAME FROM SUPER_HERO MINUS SELECT NAME FROM MARVEL_HERO;

--집합 연산자 사용시 두개의 SELECT 명령에 대한 검색대상의 자료형 또는 갯수가 서로 다른 경우 에러 발생
SELECT NAME FROM SUPER_HERO UNION SELECT GRADE FROM MARVEL_HERO;--에러 : 검색대상의 자료형 불일치
SELECT NAME FROM SUPER_HERO UNION SELECT NAME,GRADE FROM MARVEL_HERO;--에러 : 검색대상의 갯수 불일치

--집합 연산자 사용시 두개의 SELECT 명령에 대한 검색대상의 자료형이 다른 경우 변환함수를 사용하여 자료형을 일치시켜 집합 처리
SELECT NAME FROM SUPER_HERO UNION SELECT TO_CHAR(GRADE,'0') FROM MARVEL_HERO;

--집합 연산자 사용시 두개의 SELECT 명령에 대한 검색대상의 갯수가 다른 경우 동일한 자료형의 임의값 또는 NULL를 사용하여 집합 처리
SELECT NAME,0 FROM SUPER_HERO UNION SELECT NAME,GRADE FROM MARVEL_HERO;
SELECT NAME,NULL FROM SUPER_HERO UNION SELECT NAME,GRADE FROM MARVEL_HERO;

--DML(DATA MANIPULATION LANGUAGE) : 데이타 조작어
--테이블의 행에 대한 삽입,변경,삭제 기능을 제공하는 SQL 명령 
--DML 명령 실행 후 COMMIT 명령(DML 명령의 적용) 또는 ROLLBACK 명령(DML 명령의 취소)을 실행하는 것을 권장

--INSERT : 테이블에 행을 삽입하는 명령
--형식)INSERT INTO 테이블명 VALUES(컬럼값,컬럼값,...)
--테이블에 삽입될 행의 컬럼값은 테이블 속성에 맞게 차례대로 나열하여 전달되도록 작성
--테이블의 속성 순서대로 자료형에 맞는 컬럼값을 생략없이 차례대로 전달하여 삽입

--테이블 속성(컬럼과 자료형) 확인
--형식)DESC 테이블명
DESC DEPT;

--DEPT 테이블에 새로운 행(부서정보) 삽입
INSERT INTO DEPT VALUES(50,'회계부','서울시');
SELECT * FROM DEPT;
COMMIT;

--삽입행으로 전달될 컬럼값의 갯수가 테이블의 컬럼 갯수와 맞지 않을 경우 에러 발생
INSERT INTO DEPT VALUES(60,'총무부');--전달값이 충분하지 않아 에러 발생
INSERT INTO DEPT VALUES(60,'총무부','인천시','031-1234-5678');--전달값이 너무 많아 에러 발생

--삽입행으로 전달될 컬럼값이 테이블의 컬럼 자료형과 맞지 않거나 자료형의 크기보다 큰 경우 에러 발생
INSERT INTO DEPT VALUES('육십','총무부','인천시');--컬럼의 자료형과 맞지 않은 값을 전달하여 에러 발생
INSERT INTO DEPT VALUES(60,'총무부','인천시 월미구');--컬럼 자료형의 크기보다 큰 값을 전달하여 에러 발생

--테이블의 컬럼에 부여된 제약조건을 위반하는 값이 전달될 경우 에러 발생
--PK(PRIMARY KEY) 제약조건 : 테이블에 저장된 기존행의 컬럼값과 중복된 값이 저장되도록 설정하는 제약조건
--DEPT 테이블의 DEPTNO 컬럼에 PK 제약조건 설정
SELECT DISTINCT DEPTNO FROM DEPT;--검색결과 : 10,20,30,40,50
INSERT INTO DEPT VALUES(50,'총무부','인천시');--PK 제약조건을 위반한 값을 전달하여 에러 발생
--PK 제약조건이 부여된 컬럼에는 NOT NULL 제약조건이 자동으로 설정되어 NULL 저장 불가능
INSERT INTO DEPT VALUES(NULL,'총무부','인천시');

--테이블의 속성과 컬럼의 제약조건을 위반하는 않는 값을 전달해야만 행 삽입 가능 - 데이타 무결성 유지
--데이타 무결성 : 테이블에 잘못된 값이 저장되지 않도록 하여 정상적인 결과가 검색
INSERT INTO DEPT VALUES(60,'총무부','인천시');
SELECT * FROM DEPT;
COMMIT;

--테이블에 행 삽입시 컬럼에 값을 저장하고 싶지 않은 경우 NULL 전달하여 삽입 처리
INSERT INTO DEPT VALUES(70,'영업부',NULL);--명시적 NULL 사용
SELECT * FROM DEPT;
COMMIT;

--특정 테이블 컬럼에 값을 전달하여 행 삽입 가능
--형식)INSERT INTO 테이블명(컬럼명,컬럼명,...) VALUES(컬럼값,컬럼값,...)
--테이블에 나열된 컬럼 순서대로 값을 전달하여 행 삽입
INSERT INTO DEPT(LOC,DEPTNO,DNAME) VALUES('수원시',80,'자재부');
SELECT * FROM DEPT;
COMMIT;

--테이블의 컬럼이 생략되면 생략된 컬럼에는 컬럼 기본값이 자동으로 전달되어 삽입 처리
--테이블 생성 또는 테이블 구조 변경시 컬럼 기본값(COLUMN DEFAULT VALUE) 설정 가능
--컬럼 기본값을 미설정시 NULL을 기본값으로 자동 설정
INSERT INTO DEPT(DEPTNO,DNAME) VALUES(90,'인사부');--LOC 컬럼 생략 : NULL 전달되어 삽입 - 묵시적 NULL 사용
SELECT * FROM DEPT;
COMMIT;

--날짜형 컬럼에는 날짜값 대신 SYSDATE 키워드를 사용하여 값을 전하여 삽입 처리
DESC EMP;
INSERT INTO EMP VALUES(9000,'KIM','MANAGER',7298,'00/12/10',3500,1000,40);
SELECT * FROM EMP;
INSERT INTO EMP VALUES(9001,'LEE','ANALYST',9000,SYSDATE,2000,NULL,40);
SELECT * FROM EMP;
COMMIT;

--INSERT 명령에 서브쿼리(SUBQUERY)를 사용하여 행 삽입 가능
--형식)INSERT INTO 테이블명 SELECT 검색대상,... FROM 테이블명 [WHERE 조건식]
--서브쿼리의 검색결과를 이용하여 테이블에 행 삽입 - 다른 테이블의 행을 검색하여 현재 테이블에 행 삽입 : 테이블 행 복사
--행이 삽입될 테이블의 속성과 서브쿼리의 검색대상에 대한 속성(컬럼명을 제외한 검색대상의 갯수,자료형,크기)이 동일

--BOUNS 테이블의 속성 확인 및 행 검색
DESC BONUS;
SELECT * FROM BONUS;

--EMP 테이블에서 성과급이 존재하는 사원을 검색하여 BONUS 테이블에 삽입 처리
INSERT INTO BONUS SELECT ENAME,JOB,SAL,COMM FROM EMP WHERE COMM IS NOT NULL;
SELECT * FROM BONUS;
COMMIT;

--UPDATE : 테이블에 저장된 행의 컬럼값을 변경하는 명령
--형식)UPDATE 테이블명 SET 컬럼명=변경값,컬럼명=변경값,... [WHERE 조건식]
--WHERE의 조건식이 참인 행만 검색하여 컬럼값 변경 - WHERE가 생략된 경우 테이블에 저장된 모든 행의 컬럼값을 동일하게 변경
--WHERE에서 사용되는 조건식의 컬럼은 PK 제약조건이 부여된 컬럼을 사용하는 것을 권장 - 단일행을 검색하여 컬럼값 변경
--데이타 무결성을 위반할 수 있으므로 PK 제약조건이 부여된 컬럼값은 변경하지 않는 것을 권장

--DEPT 테이블에서 부서번호가 50인 부서정보 검색
SELECT * FROM DEPT WHERE DEPTNO=50;--부서이름 : 회계부, 부서위치 : 서울시

--DEPT 테이블에서 부서번호가 50인 부서의 부서이름을 경리부로 변경하고 부서위치를 부천시로 변경
UPDATE DEPT SET DNAME='경리부',LOC='부천시' WHERE DEPTNO=50;
SELECT * FROM DEPT WHERE DEPTNO=50;--부서이름 : 경리부, 부서위치 : 부천시
COMMIT;

--컬럼의 변경값은 컬럼의 자료형,크기,제약조건이 맞는 경우에만 변경 가능
UPDATE DEPT SET LOC='부천시 원미구' WHERE DEPTNO=50;--변경값의 크기가 LOC 컬럼의 크기보다 커서 에러 발생

--UPDATE 명령에서 서브쿼리를 사용 가능 : 변경값 또는 조건식의 비교값 대신 서브쿼리 사용
--DEPT 테이블에서 부서이름이 영업부인 부서위치(NULL)를 총무부의 부서위치(인천시)와 같도록 변경
SELECT * FROM DEPT;
UPDATE DEPT SET LOC=(SELECT LOC FROM DEPT WHERE DNAME='총무부') WHERE DNAME='영업부';
SELECT * FROM DEPT;
COMMIT;

--BONUS 테이블에서 사원이름이 KIM인 사원보다 성과급이 적은 사원의 성과급을 100 증가되도록 변경
SELECT * FROM BONUS;
UPDATE BONUS SET COMM=COMM+100 WHERE COMM<(SELECT COMM FROM BONUS WHERE ENAME='KIM');
SELECT * FROM BONUS;
COMMIT;