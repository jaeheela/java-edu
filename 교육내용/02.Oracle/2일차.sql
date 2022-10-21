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

--변환함수 : 전달값의 원하는 자료형의 값으로 변환하여 반환하는 함수

--TO_NUMBER(문자값) : 문자값을 전달받아 숫자값으로 변환하여 반환하는 함수
--전달된 문자값에 숫자가 아닌 형태의 문자가 존재할 경우 에러 발생
SELECT EMPNO,ENAME,SAL FROM EMP WHERE EMPNO=7839;
--비교 컬럼의 자료형의 숫자형인 경우 비교값이 문자형이면 TO_NUMBER 함수를 사용하여 숫자형으로 변환하여 비교 - 강제 형변환
SELECT EMPNO,ENAME,SAL FROM EMP WHERE EMPNO=TO_NUMBER('7839');
--비교 컬럼의 자료형의 숫자형인 경우 비교값이 문자형이면 자동으로 숫자형으로 변환하여 비교 - 자동 형변환
SELECT EMPNO,ENAME,SAL FROM EMP WHERE EMPNO='7839';

--문자값을 산술 연산할 경우 문자값이 자동으로 숫자값으로 변환되어 연산 처리 - 자동 형변환
SELECT 100+200 FROM DUAL;
SELECT 100+'200' FROM DUAL;

--EMP 테이블에서 사원번호가 7839인 사원의 사원번호,사원이름,급여,세후급여(급여*0.9) 검색
SELECT EMPNO,ENAME,SAL,SAL*0.9 FROM EMP WHERE EMPNO=7839;
SELECT EMPNO,ENAME,SAL,SAL*TO_NUMBER('0.9') FROM EMP WHERE EMPNO=7839;
SELECT EMPNO,ENAME,SAL,SAL*'0.9' FROM EMP WHERE EMPNO=7839;

--TO_DATE(문자값[,패턴문자]) : 원하는 패턴의 문자값을 전달받아 날짜값으로 변환하여 반환하는 함수
--패턴에 맞지 않는 문자값을 전달받은 경우 에러 발생 - 기본패턴 : RR/MM/DD
--비교 컬럼의 자료형의 날짜형인 경우 비교값이 문자형이면 TO_DATE 함수를 사용하여 날짜형으로 변환하여 비교 - 강제 형변환
SELECT EMPNO,ENAME,HIREDATE FROM EMP WHERE HIREDATE=TO_DATE('82/01/23');
--비교 컬럼의 자료형의 날짜형인 경우 비교값이 문자형이면 자동으로 날짜형으로 변환하여 비교 - 자동 형변환
SELECT EMPNO,ENAME,HIREDATE FROM EMP WHERE HIREDATE='82/01/23';

--날짜값은 [RR/MM/DD] 패턴 대신 [YYYY-MM-DD] 패턴으로 표현 가능
SELECT EMPNO,ENAME,HIREDATE FROM EMP WHERE HIREDATE='1982-01-23';

--패턴에 맞지 않는 문자값을 사용할 경우 에러 발생
SELECT EMPNO,ENAME,HIREDATE FROM EMP WHERE HIREDATE='01-23-1982';
--TO_DATE 함수 사용시 패턴문자를 사용하여 원하는 패턴의 문자값을 전달받아 날짜값으로 변환하여 반환 가능
SELECT EMPNO,ENAME,HIREDATE FROM EMP WHERE HIREDATE=TO_DATE('01-23-1982','MM-DD-YYYY');

--2000년 1월 1일에 태어난 사람이 현재까지 살아온 날짜 검색
SELECT SYSDATE-'2000-01-01' FROM DUAL;--에러발생 : 날짜값이 아닌 문자값 연산 처리
SELECT SYSDATE-TO_DATE('2000-01-01') FROM DUAL;
SELECT CEIL(SYSDATE-TO_DATE('2000-01-01'))||'일' "현재까지 살아온 날짜" FROM DUAL;

--TO_CHAR({숫자값|날짜값},패턴문자) : 숫자값 또는 날짜값을 전달받아 원하는 패턴의 문자값으로 변환하여 반환하는 함수

--날짜패턴문자 : RR(년),YYYY(년),MM(월),DD(일),HH24(시간),HH12(시간),MI(분),SS(초)
SELECT SYSDATE,TO_CHAR(SYSDATE,'YYYY-MM-DD'),TO_CHAR(SYSDATE,'YYYY-MM-DD HH24:MI:SS') FROM DUAL;

--EMP 테이블에서 1981년에 입사한 사원의 사원번호,사원이름,입사일 검색
--현재 접속된 사용자 환경(세션)의 날짜와 시간의 표현패턴이 [RR/MM/DD]인 경우에만 검색 가능
SELECT EMPNO,ENAME,HIREDATE FROM EMP WHERE HIREDATE LIKE '81%';
--TO_CHAR 함수를 사용하여 날짜값을 원하는 패턴의 문자값으로 반환받아 비교 처리
SELECT EMPNO,ENAME,HIREDATE FROM EMP WHERE TO_CHAR(HIREDATE,'YYYY')='1981';

--숫자패턴문자 : 9(숫자 또는 공백),0(숫자),L(화폐단위),$(달러) 
SELECT 100000000,TO_CHAR(100000000,'9,999,999,990') FROM DUAL;
SELECT 1000000000,TO_CHAR(1000000000,'9,999,999,990') FROM DUAL;
--전달받은 숫자값의 길이가 패턴문자의 길이보다 큰 경우 모든 패턴문자가 #으로 변환되어 반환
SELECT 10000000000,TO_CHAR(10000000000,'9,999,999,990') FROM DUAL;

--EMP 테이블에서 사원번호가 7844인 사원의 사원번호,사원이름,급여 검색
SELECT EMPNO,ENAME,SAL FROM EMP WHERE EMPNO=7844;
SELECT EMPNO,ENAME,TO_CHAR(SAL,'999,990') SAL FROM EMP WHERE EMPNO=7844;
SELECT EMPNO,ENAME,TO_CHAR(SAL,'L99,990') SAL FROM EMP WHERE EMPNO=7844;
SELECT EMPNO,ENAME,TO_CHAR(SAL,'$99,990.00') SAL FROM EMP WHERE EMPNO=7844;

--일반함수 : 전달값이 특정 조건에 참인 경우에만 가공처리되어 결과값을 반환하는 함수

--NVL(전달값, 변경값) : 전달값이 NULL인 경우 변경값으로 변환하여 반환하는 함수
--변경값은 전달값과 같은 자료형의 값으로만 변경 가능 - 다른 자료형의 값으로 변경한 경우 에러 발생

--EMP 테이블에 저장된 모든 사원의 사원번호,사원이름,연봉(급여*12) 검색
SELECT EMPNO,ENAME,SAL*12 ANNUAL FROM EMP;

--EMP 테이블에 저장된 모든 사원의 사원번호,사원이름,연봉((급여+성과급)*12) 검색
--성과급이 NULL인 경우 연산이 불가능하므로 NULL 검색
SELECT EMPNO,ENAME,(SAL+COMM)*12 ANNUAL FROM EMP;--검색실패
--NVL 함수를 사용하여 성과급이 NULL인 경우 0으로 변환하여 연산 처리
SELECT EMPNO,ENAME,(SAL+NVL(COMM,0))*12 ANNUAL FROM EMP;

--NVL2(전달값,변경값1,변경값2) : 전달값이 NULL이 아닌 경우 변경값1로 변환하고 NULL인 경우 변경값2로 변환하여 반환하는 함수
SELECT EMPNO,ENAME,(SAL+NVL2(COMM,COMM,0))*12 ANNUAL FROM EMP;
SELECT EMPNO,ENAME,NVL2(COMM,SAL+COMM,SAL)*12 ANNUAL FROM EMP;

--DECODE(전달값,비교값1,변경값1,비교값2,변경값,...[,기본값]) : 전달값을 비교값과 차례대로 비교하여 같은 경우 변경값으로 변환하여 반환하는 함수
--모든 비교값이 틀린 경우 기본값으로 변환하여 반환 - 기본값을 생략하면 NULL 반환

--EMP 테이블에 저장된 모든 사원의 사원번호,사원이름,업무,급여,업무별 실급여 검색
--업무별 실급여 : 사원을 업무로 구분하여 급여를 다르게 계산하여 실제로 지불할 급여
SELECT DISTINCT JOB FROM EMP;
--ANALYST : 급여*1.1, CLERK : 급여*1.2, MANAGER : 급여*1.3, PRESIDENT : 급여*1.4, SALESMAN : 급여*1.5
SELECT EMPNO,ENAME,JOB,SAL,DECODE(JOB,'ANALYST',SAL*1.1,'CLERK',SAL*1.2
    ,'MANAGER',SAL*1.3,'PRESIDENT',SAL*1.4,'SALESMAN',SAL*1.5,SAL) "업무별 실급여" FROM EMP;

--EMP 테이블에 저장된 모든 사원의 사원번호,사원이름,업무,급여 검색
SELECT EMPNO,ENAME,JOB,SAL FROM EMP;

--EMP 테이블에 저장된 모든 사원의 사원번호,사원이름,업무별 급여 검색 - 해당 업무가 아닌 경우에는 NULL 검색
SELECT EMPNO,ENAME,DECODE(JOB,'ANALYST',SAL) ANALYST ,DECODE(JOB,'CLERK',SAL) CLERK,DECODE(JOB,'MANAGER',SAL) MANAGER
    ,DECODE(JOB,'PRESIDENT',SAL) PRESIDENT,DECODE(JOB,'SALESMAN',SAL) SALESMAN FROM EMP;
