--시퀸스 변경
--형식)ALTER SEQUENCE 시퀸스명 {MAXVALUE|MINVALUE|INCREMENT BY} 변경값

--USER2_SEQ 시퀸스의 최대값을 99로 변경하고 증가값은 5로 변경
SELECT SEQUENCE_NAME,MAX_VALUE,MIN_VALUE,INCREMENT_BY FROM USER_SEQUENCES;
ALTER SEQUENCE USER2_SEQ MAXVALUE 99 INCREMENT BY 5; 
SELECT SEQUENCE_NAME,MAX_VALUE,MIN_VALUE,INCREMENT_BY FROM USER_SEQUENCES;

--USER2 테이블에 행 삽입
SELECT USER2_SEQ.CURRVAL FROM DUAL;--검색결과 : 5
INSERT INTO USER2 VALUES(USER2_SEQ.NEXTVAL,'일지매','03/09/09');
SELECT * FROM USER2;
COMMIT;

--시퀸스 삭제
--형식)DROP SEQUENCE 시퀸스명

--USER2_SEQ 시퀸스 삭제
SELECT SEQUENCE_NAME,MAX_VALUE,MIN_VALUE,INCREMENT_BY FROM USER_SEQUENCES;
DROP SEQUENCE USER2_SEQ;
SELECT SEQUENCE_NAME,MAX_VALUE,MIN_VALUE,INCREMENT_BY FROM USER_SEQUENCES;

--인덱스(INDEX) : 테이블에 저장된 행을 보다 빠르게 검색하기 위한 기능을 제공하는 객체
--컬럼에 인덱스를 설정하면 인덱스 영역을 생성하여 컬럼에 대한 행 검색 속도 증가
--조건식에서 많이 사용하는 컬럼에 설정하며 행이 많을 때 설정하는 것이 효율적

--유니크 인덱스(UNIQUE INDEX) : PRIMARY KEY 제약조건이나 UNIQUE 제약조건에 의해 자동으로 생성되는 인덱스
--비유니크 인덱스(NON-UNIQUE INDEX) : 사용자가 컬럼을 이용하여 수동으로 생성하는 인덱스

--USER3 테이블 생성 - 회원번호(숫자형-PRIMARY KEY),회원이름(문자형),이메일(문자형-UNIQUE)
--PRIMARY KEY 제약조건이나 UNIQUE 제약조건에 의해 유니크 인덱스 자동 생성
CREATE TABLE USER3(NO NUMBER(2) CONSTRAINT USER3_NO_PK PRIMARY KEY,NAME VARCHAR2(20)
    ,EMAIL VARCHAR2(50) CONSTRAINT USER3_EMAIL_UK UNIQUE);
    
--USER3 테이블의 제약조건 확인
SELECT CONSTRAINT_NAME,CONSTRAINT_TYPE FROM USER_CONSTRAINTS WHERE TABLE_NAME='USER3';

--USER3 테이블의 인덱스 확인 - USER_INDEXES : 인덱스 정보를 제공하는 딕셔너리, USER_IND_COLUMNS : 컬럼 인덱스 정보를 제공하는 딕셔너리
--유니크 인덱스의 이름은 제약조건의 이름과 동일
SELECT C.INDEX_NAME,COLUMN_NAME,UNIQUENESS FROM USER_INDEXES I JOIN USER_IND_COLUMNS C 
    ON I.INDEX_NAME=C.INDEX_NAME WHERE C.TABLE_NAME='USER3';

--인덱스 생성 - 비유니크 인덱스(NON-UNIQUE INDEX)
--형식)CREATE INDEX 인덱스명 ON 테이블명(컬럼명)

--USER3 테이블의 NAME 컬럼을 이용하여 인덱스 생성
CREATE INDEX USER3_NAME_INDEX ON USER3(NAME);

--USER3 테이블의 인덱스 확인
SELECT C.INDEX_NAME,COLUMN_NAME,UNIQUENESS FROM USER_INDEXES I JOIN USER_IND_COLUMNS C 
    ON I.INDEX_NAME=C.INDEX_NAME WHERE C.TABLE_NAME='USER3';
    
--인덱스 삭제 - 비유니크 인덱스(NON-UNIQUE INDEX)
--형식)DROP INDEX 인덱스명
--유니크 인덱스는 PRIMARY 제약조건이나 UNIQUE 제약조건을 삭제하면 같이 삭제

--USER3 테이블의 EMAIL 컬럼에 대한 인덱스 삭제
DROP INDEX USER3_EMAIL_UK;--유니크 인덱스를 삭제할 경우 에러 발생

--USER3 테이블의 EMAIL 컬럼에 설정된 UNIQUE 제약조건 삭제
ALTER TABLE USER3 DROP CONSTRAINT USER3_EMAIL_UK;

--USER3 테이블의 제약조건 및 인덱스 확인
SELECT CONSTRAINT_NAME,CONSTRAINT_TYPE FROM USER_CONSTRAINTS WHERE TABLE_NAME='USER3';
SELECT C.INDEX_NAME,COLUMN_NAME,UNIQUENESS FROM USER_INDEXES I JOIN USER_IND_COLUMNS C 
    ON I.INDEX_NAME=C.INDEX_NAME WHERE C.TABLE_NAME='USER3';

--USER3 테이블의 NAME 컬럼에 대한 인덱스 삭제
DROP INDEX USER3_NAME_INDEX;
SELECT C.INDEX_NAME,COLUMN_NAME,UNIQUENESS FROM USER_INDEXES I JOIN USER_IND_COLUMNS C 
    ON I.INDEX_NAME=C.INDEX_NAME WHERE C.TABLE_NAME='USER3';

--동의어(SYNONYM) : 오라클 객체를 다른 이름으로 설정하여 사용하기 위한 객체
--전용 동의어 : 특정 사용자만 사용할 수 있는 동의어 - 일반 사용자에 의해 관리
--공용 동의어 : 모든 사용자가 사용할 수 있는 동의어 - 관리자에 의해 관리

--동의어 생성
--형식)CREATE [PUBLIC] SYNONYM 동의어 FOR 객체명
--PUBLIC : 공용 동의어를 생성하기 위한 키워드

--테이블 목록 확인 - USER_TABLES 딕셔너리 이용
--USER_TABLES 딕셔너리 : SYS 계정에 의해 생성된 뷰 
--다른 사용자의 테이블이나 뷰에 접근하는 방법 - 사용자 스키마를 이용하여 접근
--형식)사용자명.테이블명 또는 사용자명.뷰이름
SELECT TABLE_NAME FROM SYS.USER_TABLES;
--SYS.USER_TABLES 객체의 공용 동의어로 USER_TABLES 생성하여 제공
SELECT TABLE_NAME FROM USER_TABLES;
--SYS.USER_TABLES 객체의 공용 동의어로 TABS 생성하여 제공
SELECT TABLE_NAME FROM TABS;

--COMM 테이블에 대한 현재 접속 사용자만 사용 가능한 전용 동의어로 BONUS 생성
--현재 접속 사용자는 동의어에 대한 시스템 권한이 없으므로 동의어를 생성할 경우 에러 발생 - 관리자에게 동의어에 대한 시스템 권한 요청
CREATE SYNONYM BONUS FOR COMM;--에러

--시스템 관리자(SYSDBA - SYS 계정)로 접속하여 현재 접속 사용자(SCOTT)에세 동의어에 대한 시스템 권한 부여
--GRANT CREATE SYNONYM TO SCOTT;

--시스템 관리자에게 동의어에 대한 시스템 권한을 부여 받은 후 동의어 관련 명령 사용 가능
CREATE SYNONYM BONUS FOR COMM;
SELECT * FROM COMM;
SELECT * FROM BONUS;

--COMM 테이블 관련 동의어 확인 - USER_SYNONYMS : 동의어 관련 정보를 제공하는 딕셔너리
SELECT TABLE_NAME,SYNONYM_NAME,TABLE_OWNER FROM USER_SYNONYMS WHERE TABLE_NAME='COMM';

--동의어 삭제
--형식)DROP [PUBLIC] SYNONYM 동의어

--전용 동의어 BONUS 삭제
DROP SYNONYM BONUS;
SELECT TABLE_NAME,SYNONYM_NAME,TABLE_OWNER FROM USER_SYNONYMS WHERE TABLE_NAME='COMM';
SELECT * FROM COMM;
SELECT * FROM BONUS;--테이블이 없으므로 에러 발생

--사용자(USER) : 시스템(DBMS)을 사용할 수 있는 객체 - 계정(ACCOUNT) : 권한을 가진 사용자
--계정 관리는 시스템 관리자(SYSDBA - SYS 계정)만 가능

--계정 생성
--형식)CREATE USER 계정명 IDENTIFIED BY 암호

--KIM 계정 생성 - 관리자 세션에서 작업
--오라클 12C 버전이상에서는 계정 관리하기 전에 세션에 대한 환경설정 변경
--ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE;
--CREATE USER KIM IDENTIFIED BY 1234;

--계정 확인 - DBA_USERS : 사용자 정보를 제공하는 딕셔너리
--SELECT USERNAME,ACCOUNT_STATUS,DEFAULT_TABLESPACE,CREATED FROM DBA_USERS WHERE USERNAME='KIM';

--계정의 비밀번호 변경 - 계정의 비밀번호는 기본적으로 180일 유효기간으로 설정
--형식)ALTER USER 계정명 IDENTIFIED BY 암호

--KIM 계정의 비밀번호 변경 - 관리자 세션에서 작업
--ALTER USER KIM IDENTIFIED BY 5678;

--계정 상태 변경 - OPEN(계정 활성화 - 접속 가능), LOCK(계정 비활성화 - 접속 불가능)
--오라클 접속시 계정의 비밀번호를 5번 틀리면 계정의 상태가 자동으로 비활성화(LOCK) 상태로 변경되어 접속 불가능
--형식)ALTER USER 계정명 ACCOUNT {LOCK|UNLOCK}

--KIM 계정을 비활성화 상태로 변경 - 관리자 세션에서 작업
--SELECT USERNAME,ACCOUNT_STATUS,DEFAULT_TABLESPACE,CREATED FROM DBA_USERS WHERE USERNAME='KIM';
--ALTER USER KIM ACCOUNT LOCK;
--SELECT USERNAME,ACCOUNT_STATUS,DEFAULT_TABLESPACE,CREATED FROM DBA_USERS WHERE USERNAME='KIM';

--KIM 계정을 활성화 상태로 변경 - 관리자 세션에서 작업
--ALTER USER KIM ACCOUNT UNLOCK;
--SELECT USERNAME,ACCOUNT_STATUS,DEFAULT_TABLESPACE,CREATED FROM DBA_USERS WHERE USERNAME='KIM';

--계정의 기본 테이블스페이스 변경
--테이블스페이스(TABLESPACE) : 데이타베이스 객체(테이블,뷰,시퀸스,인덱스 등)가 저장되는 영역
--오라클에는 기본적으로 SYSTEM 테이블스페이스와 USERS 테이블스페이스 제공
--형식)ALTER USER 계정명 DEFAULT TABLESPACE 테이블스페이스명

--KIM 계정의 기본 테이블스페이스를 USERS로 변경 - 관리자 세션에서 작업
--ALTER USER KIM DEFAULT TABLESPACE USERS;
--SELECT USERNAME,ACCOUNT_STATUS,DEFAULT_TABLESPACE,CREATED FROM DBA_USERS WHERE USERNAME='KIM';

--계정의 테이블스페이스에 대한 물리적 저장크기 변경 - 용량 제한
--형식)ALTER USER 계정명 QUITA 제한크기 ON 테이블스페이스명

--KIM 계정의 물리적 저장크기를 무제한으로 변경 - 관리자 세션에서 작업
--ALTER USER KIM QUOTA UNLIMITED ON USERS;
--제약용량 확인 - DBA_TS_QUOTAS : 테이블스페이스의 물리적 저장공간에 제한 관련 정보를 제공하는 딕셔너리
SELECT TABLESPACE_NAME,USERNAME,MAX_BYTES FROM DBA_TS_QUOTAS;

--KIM 계정의 물리적 저장크기를 20MBYTE로 변경 - 관리자 세션에서 작업
ALTER USER KIM QUOTA 20M ON USERS;
SELECT TABLESPACE_NAME,USERNAME,MAX_BYTES FROM DBA_TS_QUOTAS;

--계정 삭제
--형식)DROP USER 계정명

--KIM 계정 삭제 - 관리자 세션에서 작업
--SELECT USERNAME,ACCOUNT_STATUS,DEFAULT_TABLESPACE,CREATED FROM DBA_USERS WHERE USERNAME='KIM';
--DROP USER KIM;
--SELECT USERNAME,ACCOUNT_STATUS,DEFAULT_TABLESPACE,CREATED FROM DBA_USERS WHERE USERNAME='KIM';