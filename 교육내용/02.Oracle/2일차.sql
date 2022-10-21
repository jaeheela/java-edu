--숫자함수 : 매개변수로 숫자값을 전달받아 가공처리하여 결과값을 반환하는 함수

--ROUND(숫자값,소숫점자릿수) : 숫자값을 전달받아 소숫점자릿수 위치만큼 검색되도록 반올림 처리하여 반환하는 함수
--DAUL : 검색 테이블 없이 SELECT 명령을 작성할 경우 사용하는 가상의 테이블
SELECT ROUND(45.582,2),ROUND(45.582,0),ROUND(45.582,-1) FROM DUAL;

--TRUNC(숫자값,소숫점자릿수) : 숫자값을 전달받아 소숫점자릿수 위치만큼 검색되도록 절삭 처리하여 반환하는 함수
SELECT TRUNC(45.582,2),TRUNC(45.582,0),TRUNC(45.582,-1) FROM DUAL;

--CEIL(숫자값) : 숫자값을 전달받아 소숫점 이하 값이 존재할 경우 증가된 숫자값(정수값)을 반환하는 함수
SELECT CEIL(15.3),CEIL(-15.3) FROM DUAL;

--FLOOR(숫자값) : 숫자값을 전달받아 소숫점 이하 값이 존재할 경우 감소된 숫자값(정수값)을 반환하는 함수
SELECT FLOOR(15.3),FLOOR(-15.3) FROM DUAL;

--MOD(숫자값1,숫자값2) : 두개의 숫자값을 전달받아 숫자값1로 숫자값2를 나눈 나머지를 반환하는 함수
SELECT 20/8,MOD(20,8) FROM DUAL;

--POWER(숫자값1,숫자값2) : 두개의 숫자값을 전달받아 숫자값1에 숫자값2의 제곱근을 반환하는 함수
SELECT 3*3*3*3*3,POWER(3,5) FROM DUAL;

--날짜함수 : 매개변수로 날짜값을 전달받아 가공처리하여 결과값을 반환하는 함수

--SYSDATE : 시스템의 현재 날짜와 시간을 제공하기 위한 키워드
--SYSDATE 키워드의 검색값은 기본적으로 [RR/MM/DD] 형식의 패턴으로 검색되지만 내부적으로는 날짜와 시간 제공
SELECT SYSDATE FROM DUAL;

--ADD_MONTHS(날짜값,숫자값) : 날짜값을 전달받아 숫자값만큼의 개월수를 더한 날짜값을 반환하는 함수
SELECT SYSDATE,ADD_MONTHS(SYSDATE,5) FROM DUAL;

--날짜값은 연산 가능
--날짜값 + 숫자값 = 날짜값  >>  일 증가
SELECT SYSDATE,SYSDATE+7 FROM DUAL;

--날짜값 + 숫자값/24 = 날짜값  >>  시간 증가
SELECT SYSDATE,SYSDATE+100/24 FROM DUAL;

--날짜값 - 숫자값 = 날짜값  >>  일 감소
SELECT SYSDATE,SYSDATE-7 FROM DUAL;

--날짜값 - 숫자값/24 = 날짜값  >>  시간 감소
SELECT SYSDATE,SYSDATE-100/24 FROM DUAL;

--날짜값 - 날짜값 = 숫자값  >>  일(실수값)
SELECT EMPNO,ENAME,HIREDATE,SYSDATE-HIREDATE FROM EMP WHERE EMPNO=7499;
SELECT EMPNO,ENAME,HIREDATE,CEIL(SYSDATE-HIREDATE)||'일' "근속일수" FROM EMP WHERE EMPNO=7499;

--NEXT_DAY(날짜값,요일) : 날짜값을 전달받아 미래의 특정 요일의 날짜값을 반환하는 함수
SELECT SYSDATE,NEXT_DAY(SYSDATE,'토') FROM DUAL;

--오라클에 접속된 현재 사용자 환경(세션 - SESSION)에 따라 사용 언어 및 날짜와 시간 패턴이 다르게 적용되어 사용
--세션의 사용 언어 및 날짜와 시간 패턴 변경 가능
ALTER SESSION SET NLS_LANGUAGE='AMERICAN';--세션의 사용 언어 변경 : AMERICAN
SELECT SYSDATE,NEXT_DAY(SYSDATE,'SAT') FROM DUAL;

ALTER SESSION SET NLS_LANGUAGE='KOREAN';--세션의 사용 언어 변경 : KOREAN
SELECT SYSDATE,NEXT_DAY(SYSDATE,'토') FROM DUAL;

--TRUNC(날짜값,표현단위) : 날짜값을 전달받아 원하는 단위만 표현하고 나머지 절삭하여 초기값으로 검색하도록 반환하는 함수
SELECT SYSDATE,TRUNC(SYSDATE,'MONTH'),TRUNC(SYSDATE,'YEAR') FROM DUAL;

