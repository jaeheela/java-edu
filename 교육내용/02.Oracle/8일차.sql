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
    








