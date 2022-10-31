SET SERVEROUT ON;

--선택문 : 명령을 선택하여 실행하기 위한 구문
--IF : 조건식에 의해 명령을 선택 실행
--형식)IF(조건식) THEN 명령;명령;... END IF;
--조건식의 ( ) 기호 생략 가능

--EMP 테이블에서 사원번호 7788인 사원정보를 검색하여 사원번호,사원이름,부서번호에 대한 부서명을 출력하는 PL/SQL 작성
--부서번호에 대한 부서명 : 10(ACCOUNTING),20(RESEARCH),30(SAELS),40(OPERATION)
DECLARE
    VEMP EMP%ROWTYPE; /* 레코드 변수 선언 */
    VDNAME VARCHAR2(20) := NULL;  /* 스칼라 변수 선언 */
BEGIN
    SELECT * INTO VEMP FROM EMP WHERE EMPNO=7788;
    
    IF(VEMP.DEPTNO=10) THEN
        VDNAME := 'ACCOUNTING';
    END IF;    
    
    IF(VEMP.DEPTNO=20) THEN
        VDNAME := 'RESEARCH';
    END IF;    

    IF(VEMP.DEPTNO=30) THEN
        VDNAME := 'SAELS';
    END IF;    

    IF(VEMP.DEPTNO=40) THEN
        VDNAME := 'OPERATION';
    END IF;    

    DBMS_OUTPUT.PUT_LINE('사원번호 = '||VEMP.EMPNO);
    DBMS_OUTPUT.PUT_LINE('사원이름 = '||VEMP.ENAME);
    DBMS_OUTPUT.PUT_LINE('부서이름 = '||VDNAME);
END;
/

--형식)IF(조건식) THEN 명령;명령;... ELSE 명령;명령;... END IF;

--EMP 테이블에서 사원번호가 7788인 사원정보를 검색하여 사원번호,사원이름,사원연봉을 계산하여 출력하는 PL/SQL 작성
--사원연봉 : (급여+성과급)*12
DECLARE
    VEMP EMP%ROWTYPE;
    ANNUAL NUMBER(7,2) := 0;
BEGIN
    SELECT * INTO VEMP FROM EMP WHERE EMPNO=7788;
    
    IF VEMP.COMM IS NULL THEN
        ANNUAL := VEMP.SAL * 12;
    ELSE     
        ANNUAL := (VEMP.SAL + VEMP.COMM) * 12;
    END IF;
    
    DBMS_OUTPUT.PUT_LINE('사원번호 = '||VEMP.EMPNO);
    DBMS_OUTPUT.PUT_LINE('사원이름 = '||VEMP.ENAME);
    DBMS_OUTPUT.PUT_LINE('사원연봉 = '||ANNUAL);
END;
/

--형식)IF(조건식) THEN 명령;명령;... ELSIF(조건식) 명령;명령;... [ELSE 명령;명령;...] END IF;

--EMP 테이블에서 사원번호 7788인 사원정보를 검색하여 사원번호,사원이름,부서번호에 대한 부서명을 출력하는 PL/SQL 작성
--부서번호에 대한 부서명 : 10(ACCOUNTING),20(RESEARCH),30(SAELS),40(OPERATION)
DECLARE
    VEMP EMP%ROWTYPE;
    VDNAME VARCHAR2(20) := NULL;
BEGIN
    SELECT * INTO VEMP FROM EMP WHERE EMPNO=7788;
    
    IF(VEMP.DEPTNO=10) THEN
        VDNAME := 'ACCOUNTING';
    ELSIF(VEMP.DEPTNO=20) THEN
        VDNAME := 'RESEARCH';
    ELSIF(VEMP.DEPTNO=30) THEN
        VDNAME := 'SAELS';
    ELSIF(VEMP.DEPTNO=40) THEN
        VDNAME := 'OPERATION';
    END IF;    

    DBMS_OUTPUT.PUT_LINE('사원번호 = '||VEMP.EMPNO);
    DBMS_OUTPUT.PUT_LINE('사원이름 = '||VEMP.ENAME);
    DBMS_OUTPUT.PUT_LINE('부서이름 = '||VDNAME);
END;
/

--CASE : 변수에 저장된 값을 비교하여 명령을 선택 실행하거나 조건식을 사용하여 명령을 선택 실행하는 구문
--형식)CASE 변수명 WHEN 비교값1 THEN 명령;명령;... WHEN 비교값2 THEN 명령;명령;... END CASE;

--EMP 테이블에서 사원번호가 7788인 사원정보를 검색하여 사원번호,사원이름,업무,급여,업무별 급여 실지급액을 계산하여 출력하는 PL/SQL 작성
--업무별 급여 실지급액 - ANALYST:급여*1.1,CLERK:급여*1.2,MANAGER:급여*1.3,PRESIDENT:급여*1.4,SALESMAN:급여*1.5
DECLARE
    VEMP EMP%ROWTYPE;
    VPAY NUMBER(7,2);
BEGIN
    SELECT * INTO VEMP FROM EMP WHERE EMPNO=7788;
 
    CASE VEMP.JOB
        WHEN 'ANALYST' THEN
           VPAY := VEMP.SAL * 1.1;
        WHEN 'CLERK' THEN
           VPAY := VEMP.SAL * 1.2;
        WHEN 'MANAGER' THEN
           VPAY := VEMP.SAL * 1.3;
        WHEN 'PRESIDENT' THEN
           VPAY := VEMP.SAL * 1.4;
        WHEN 'SALESMAN' THEN
           VPAY := VEMP.SAL * 1.5;    
     END CASE;      
    
    DBMS_OUTPUT.PUT_LINE('사원번호 = '||VEMP.EMPNO);
    DBMS_OUTPUT.PUT_LINE('사원이름 = '||VEMP.ENAME);
    DBMS_OUTPUT.PUT_LINE('업무 = '||VEMP.JOB);
    DBMS_OUTPUT.PUT_LINE('급여 = '||VEMP.SAL);
    DBMS_OUTPUT.PUT_LINE('실지급액 = '||VPAY);    
END;
/

--형식)CASE WHEN 조건식1 THEN 명령;명령;... WHEN 조건식2 THEN 명령;명령;... END CASE;

--EMP 테이블에서 사원번호가 7788인 사원정보를 검색하여 사워번호,사원이름,급여,급여등급을 계산하여 출력하는 PL/SQL 작성
--급여등급 : E(0~1000),D(1001~2000),C(2001~3000),B(3001~4000),A(4001~5000)
DECLARE
    VEMP EMP%ROWTYPE;
    VGRADE VARCHAR2(1);
BEGIN
    SELECT * INTO VEMP FROM EMP WHERE EMPNO=7788;
 
    CASE 
        WHEN VEMP.SAL BETWEEN 0 AND 1000 THEN
           VGRADE := 'E';
        WHEN VEMP.SAL BETWEEN 1001 AND 2000 THEN
           VGRADE := 'D';
        WHEN VEMP.SAL BETWEEN 2001 AND 3000 THEN
           VGRADE := 'C';
        WHEN VEMP.SAL BETWEEN 3001 AND 4000 THEN
           VGRADE := 'B';
        WHEN VEMP.SAL BETWEEN 4001 AND 5000 THEN
           VGRADE := 'A';
     END CASE;      
    
    DBMS_OUTPUT.PUT_LINE('사원번호 = '||VEMP.EMPNO);
    DBMS_OUTPUT.PUT_LINE('사원이름 = '||VEMP.ENAME);
    DBMS_OUTPUT.PUT_LINE('급여 = '||VEMP.SAL);
    DBMS_OUTPUT.PUT_LINE('급여등급 = '||VGRADE);    
END;
/    
    
--반복문 : 명령을 반복 실행하기 위한 구문

--BASIC LOOP : 무한반복 - 선택문을 사용하여 조건식이 참인 경우 EXIT 명령으로 반복문 종료
--형식)LOOP 명령;명령;... END LOOP;

--1~5 범위의 숫자값을 출력하는 PL/SQL 작성
DECLARE
    I NUMBER(1) := 1;
BEGIN
    LOOP
        DBMS_OUTPUT.PUT_LINE(I);
        I := I + 1;
        IF I > 5 THEN
            EXIT;
        END IF;
    END LOOP;
END;
/

--FOR LOOP : 반복의 횟수가 정해져 있는 경우 사용하는 반복문
--형식)FOR INDEX_COUNTER IN [REVERSE] LOWER_BOUND..HIGH_BOUND LOOP 명령;명령;... END LOOP;

--1~10 범위의 정수들의 합계를 계산하여 출력하는 PL/SQL 작성
DECLARE
    TOT NUMBER(2) := 0;
BEGIN
    /* FOR LOOP 구문에서 생성되는 변수(INDEX_COUNTER)는 FOR LOOP 구문에서만 사용 가능 */
    FOR I IN 1..10 LOOP
        TOT := TOT + I;
    END LOOP;
    
    DBMS_OUTPUT.PUT_LINE('1~10 범위의 정수들의 합계 = '||TOT);
END;
/

--FOR LOOP 구문을 이용하여 테이블의 다중 검색행에 대한 반복 처리 - 내부적 커서(CURSOR)를 사용하여 반복 처리
--형식)FOR RECORD_VARIABLE IN (SELECT 검색대상,... FROM 테이블명 [WHERE 조건식]) LOOP 명령;명령;... END LOOP;
--다중 검색행을 하나씩 전달받아 레코드 변수에 저장하여 반복 처리

--EMP 테이블에 저장된 모든 사원정보를 검색하여 사원번호,사원이름을 출력하는 PL/SQL 작성
BEGIN
    FOR VEMP IN (SELECT * FROM EMP) LOOP
        DBMS_OUTPUT.PUT_LINE('사원번호 = '||VEMP.EMPNO||', 사원이름 = '||VEMP.ENAME);
    END LOOP;
END;
/

--커서(CURSOR) : 테이블의 검색행을 저장하여 처리하기 위한 기능을 제공
--1.묵시적 커서 : 검색결과가 단일행인 경우를 처리하기 위한 커서
--2.명시적 커서 : 검색결과가 다중행인 경우를 처리하기 위한 커서 - 커서(CURSOR)를 생성하여 OPEN, FATCH, CLOSE 명령으로 커서 사용

--명시적 커서의 선언 방법 및 사용
--형식) DECLAER
--         CURSOR 커서명 IS SELECT 검색대상,... FROM 테이블명 [WHERE 조건식]; /* 커서를 선언하여 생성 */
--     BEGIN
--         OPEN 커서명;/* 커서를 사용하기 위한 커서 열기 */
--         FETCH 커서명 INTO 변수명,변수명,...; /* 커서에 저장된 검색행을 제공받아 변수에 저장 */
--         CLOSE 커서명;/* 커서를 더이상 사용하기 않기 위해 커서 닫기 */
--     END;

--DEPT 테이블에 저장된 모든 부서정보를 검색하여 부서번호,부서이름,부서위치를 출력하는 PL/SQL 작성
DECLARE
    CURSOR C IS SELECT * FROM DEPT;
    VDEPT DEPT%ROWTYPE;
BEGIN
    /* 커서 열기 - 첫번째 검색행을 제공받기 위해 커서의 위치 이동 */
    OPEN C;
    
    LOOP
        /* 현재 커서의 위치에 존재하는 검색행을 제공받아 레코드 변수에 저장 - 커서는 다음행으로 자동 이동 */    
        FETCH C INTO VDEPT;
        EXIT WHEN C%NOTFOUND;/* 커서의 위치에 더이상 검색행이 없는 경우 반복문 종료 */
        DBMS_OUTPUT.PUT_LINE('부서번호 = '||VDEPT.DEPTNO||', 부서이름 = '||VDEPT.DNAME||', 부서위치 = '||VDEPT.LOC);
    END LOOP;    
    
    /* 커서 닫기 */
    CLOSE C;
END;    
/    
    
--DEPT 테이블에 저장된 모든 부서정보를 검색하여 부서번호,부서이름,부서위치를 출력하는 PL/SQL 작성
DECLARE
    CURSOR C IS SELECT * FROM DEPT;
BEGIN
    /* FOR LOOP 구문을 사용하면 커서에 대한 OPEN,FETCH,CLOSE 명령을 사용하지 않아도 자동으로 반복 처리 가능 */
    FOR VDEPT IN C LOOP
        DBMS_OUTPUT.PUT_LINE('부서번호 = '||VDEPT.DEPTNO||', 부서이름 = '||VDEPT.DNAME||', 부서위치 = '||VDEPT.LOC);
    END LOOP;    
END;    
/    

--DEPT 테이블에 저장된 모든 부서정보를 검색하여 부서번호,부서이름,부서위치를 출력하는 PL/SQL 작성
BEGIN
    /* 선언부에서 커서를 생성하지 않고 FOR LOOP 구문에서 SELECT 명령을 직접 사용하여 검색행에 대한 반복 처리 가능 */
    FOR VDEPT IN (SELECT * FROM DEPT) LOOP
        DBMS_OUTPUT.PUT_LINE('부서번호 = '||VDEPT.DEPTNO||', 부서이름 = '||VDEPT.DNAME||', 부서위치 = '||VDEPT.LOC);
    END LOOP;    
END;    
/    




