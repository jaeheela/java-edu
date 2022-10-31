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


   
