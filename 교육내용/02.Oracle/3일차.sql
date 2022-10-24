--비동등결합(NON-EQUI JOIN) : 두개이상의 테이블에서 결합조건에 = 연산자가 아닌 연산자를 사용하여 참인 행을 결합하여 검색

--EMP 테이블에 저장된 모든 사원의 사원번호,사원이름,급여 검색
SELECT EMPNO,ENAME,SAL FROM EMP;

--SALGRADE 테이블에 저장된 모든 급여등급의 급여등급번호,최소급여,최대급여 검색
SELECT GRADE,LOSAL,HISAL FROM SALGRADE;

--EMP 테이블과 SALGRADE 테이블에서 모든 사원의 사원번호,사원이름,급여,급여등급번호 검색
--결합조건 : 사원의 급여(SAL)가 급여등급의 최소급여(LOSAL)부터 최대급여(HISAL) 범위에 포함될 경우 행을 결합하여 검색
SELECT EMPNO,ENAME,SAL,GRADE FROM EMP,SALGRADE WHERE SAL BETWEEN LOSAL AND HISAL;

--외부결합(OUTER JOIN) : 결합조건이 참인 행만 결합하는 것이 아니라 결합조건이 맞지 않는 행도 NULL과 결합하여 검색
--결합조건식의 결합 테이블에 (+)를 사용하면 결합조건이 맞지 않는 행을 NULL과 결합하여 검색

--EMP 테이블에 저장된 모든 사원의 부서번호를 중복되지 않은 유일한 컬럼값 검색
SELECT DISTINCT DEPTNO FROM EMP;--검색결과 : 10,20,30

--DEPT 테이블에 저장된 모든 부서의 부서번호 검색
SELECT DEPTNO FROM DEPT;--검색결과 : 10,20,30,40

--EMP 테이블과 DEPT 테이블에 저장된 모든 사원의 사원번호,사원이름,급여,부서이름,부서위치 검색
--결합조건 : EMP 테이블의 부서번호(DETPNO)와 DEPT 테이블의 부서번호(DETPNO)가 같은 행을 결합하여 검색 - 동등결합
--40번 부서에 근무하는 사원이 없으므로 40번 부서에 대한 부서이름과 부서위치 미검색
SELECT EMPNO,ENAME,SAL,DNAME,LOC FROM EMP,DEPT WHERE EMP.DEPTNO=DEPT.DEPTNO;

--사원이 없는 부서정보도 검색하기 위해 검색조건식에서 EMP 테이블의 결합조건에 (+)를 붙여 EMP 테이블에 결합되는 행이 없는 경우
--컬럼값 대신 NULL이 결합되어 검색 - 외부결합
SELECT EMPNO,ENAME,SAL,DNAME,LOC FROM EMP,DEPT WHERE EMP.DEPTNO(+)=DEPT.DEPTNO;

--자기결합(SELF JOIN) : 하나의 테이블에서 서로 다른 별칭을 부여하여 다른 테이블로 설정해 행을 결합하여 검색
--검색대상에 반드시 테이블 별칭으로 테이블을 구분하여 컬럼값 검색

--EMP 테이블에 저장된 모든 사원의 사원번호,사원이름,관리자번호(사원번호) 검색
SELECT EMPNO,ENAME,MGR FROM EMP;

--EMP 테이블에 저장된 모든 사원의 사원번호,사원이름,관리자번호(사원번호),관리자이름(사원이름) 검색
--결합조건 : EMP 테이블(별칭:WORKER)의 관리자번호(MGR)와 EMP 테이블(별칭:MANAGER)의 사원번호(EMPNO)가 같은 행을 결합하여 검색
--동등결합이므로 EMP 테이블의 관리자번호(MGR)에 NULL이 저장된 사원은 결합조건이 맞지 않으므로 행이 결합되지 않아 미검색
SELECT WORKER.EMPNO,WORKER.ENAME,WORKER.MGR,MANAGER.ENAME 
    FROM EMP WORKER,EMP MANAGER WHERE WORKER.MGR=MANAGER.EMPNO;

--EMP 테이블의 관리자번호(MGR)에 NULL이 저장된 사원도 검색하기 위해 외부결합(OUTER JOIN)을 사용하여 검색
SELECT WORKER.EMPNO,WORKER.ENAME,WORKER.MGR,MANAGER.ENAME 
    FROM EMP WORKER,EMP MANAGER WHERE WORKER.MGR=MANAGER.EMPNO(+);
    
--EMP 테이블과 DEPT 테이블에서 SALES 부서에 근무하는 사원의 사원번호,사원이름,급여,부서이름,부서위치 검색
--결합조건 : EMP 테이블의 부서번호(DETPNO)와 DEPT 테이블의 부서번호(DETPNO)가 같은 행을 결합하여 검색 
SELECT EMPNO,ENAME,SAL,DNAME,LOC FROM EMP,DEPT WHERE EMP.DEPTNO=DEPT.DEPTNO AND DNAME='SALES';

--기존의 테이블 결합은 테이블의 결합조건과 행의 검색조건을 WHERE에서 같이 사용하므로 유지보수의 불편함 존재
--1999년에 채택된 표준 SQL(SQL3)에서는 테이블의 결합조건과 행의 검색조건 구분하여 사용되므로 다양한 테이블 결합방법 제공

--CROSS JOIN : 결합 테이블의 모든 행을 교차 결합하여 검색 - 결합조건 생략
--형식)SELECT 검색대상,... FROM 테이블명1 CROSS JOIN 테이블명2

--EMP 테이블과 DEPT 테이블에서 모든 사원의 사원번호,사원이름,급여,부서이름,부서위치 검색
SELECT EMPNO,ENAME,SAL,DNAME,LOC FROM EMP CROSS JOIN DEPT;

--NATURAL JOIN : 결합 테이블에 같은 이름의 컬럼이 하나만 있는 경우 컬럼에 저장된 컬럼값이 같은 행을 서로 결합하여 검색
--형식)SELECT 검색대상,... FROM 테이블명1 NATURAL JOIN 테이블명2

--EMP 테이블과 DEPT 테이블에서 SALES 부서에 근무하는 사원의 사원번호,사원이름,급여,부서이름,부서위치 검색
--결합조건 : EMP 테이블의 부서번호(DETPNO)와 DEPT 테이블의 부서번호(DETPNO)가 같은 행을 결합하여 검색 
--NATURAL JOIN을 사용할 경우 결합조건을 명시하지 않아도 테이블의 행을 결합하여 검색
SELECT EMPNO,ENAME,SAL,DNAME,LOC FROM EMP NATURAL JOIN DEPT;

--EMP 테이블과 DEPT 테이블에서 SALES 부서에 근무하는 사원의 사원번호,사원이름,급여,부서번호,부서이름,부서위치 검색
--NATURAL JOIN을 사용할 경우 검색대상으로 결합 테이블에 존재하는 동일한 컬럼명을 검색할 때 테이블을 명시하지 않아도 검색 가능
SELECT EMPNO,ENAME,SAL,DEPTNO,DNAME,LOC FROM EMP NATURAL JOIN DEPT;

--JOIN USING : 결합 테이블에 같은 이름의 컬럼이 여러개 있는 경우 특정 컬럼에 저장된 컬럼값이 같은 행을 서로 결합하여 검색
--형식)SELECT 검색대상,... FROM 테이블명1 JOIN 테이블명2 USING(컬럼명)

--EMP 테이블과 DEPT 테이블에서 SALES 부서에 근무하는 사원의 사원번호,사원이름,급여,부서이름,부서위치 검색
--결합조건 : EMP 테이블의 부서번호(DETPNO)와 DEPT 테이블의 부서번호(DETPNO)가 같은 행을 결합하여 검색 
SELECT EMPNO,ENAME,SAL,DNAME,LOC FROM EMP JOIN DEPT USING(DEPTNO);

-- INNER JOIN : 결합조건을 명시하여 결합 테이블에서 결합조건이 맞는 행을 결합하여 검색
--형식)SELECT 검색대상,... FROM 테이블명1 INNER JOIN 테이블명2 ON 결합조건

--EMP 테이블과 DEPT 테이블에서 SALES 부서에 근무하는 사원의 사원번호,사원이름,급여,부서이름,부서위치 검색
--결합조건 : EMP 테이블의 부서번호(DETPNO)와 DEPT 테이블의 부서번호(DETPNO)가 같은 행을 결합하여 검색 
SELECT EMPNO,ENAME,SAL,DNAME,LOC FROM EMP INNER JOIN DEPT ON EMP.DEPTNO=DEPT.DEPTNO;
SELECT EMPNO,ENAME,SAL,DNAME,LOC FROM EMP JOIN DEPT ON EMP.DEPTNO=DEPT.DEPTNO;--INNER 키워드 생략 가능

--EMP 테이블과 DEPT 테이블에서 SALES 부서에 근무하는 사원의 사원번호,사원이름,급여,부서번호,부서이름,부서위치 검색
--INNER JOIN을 사용할 경우 검색대상으로 결합 테이블에 존재하는 동일한 컬럼명을 검색할 때 반드시 테이블을 명시하여 검색
SELECT EMPNO,ENAME,SAL,EMP.DEPTNO,DNAME,LOC FROM EMP INNER JOIN DEPT ON EMP.DEPTNO=DEPT.DEPTNO;
SELECT EMPNO,ENAME,SAL,DEPT.DEPTNO,DNAME,LOC FROM EMP INNER JOIN DEPT ON EMP.DEPTNO=DEPT.DEPTNO;

--EMP 테이블과 SALGRADE 테이블에서 모든 사원의 사원번호,사원이름,급여,급여등록번호 검색
--검색조건 : EMP 테이블의 급여(SAL)가 SALGRADE 테이블의 최소급여(LOSAL)와 최대급여(HISAL)에 포함될 경우 행을 결합
SELECT EMPNO,ENAME,SAL,GRADE FROM EMP JOIN SALGRADE ON SAL BETWEEN LOSAL AND HISAL;

--EMP 테이블과 DEPT 테이블, SALGRADE 테이블에서 모든 사원의 사원번호,사원이름,급여,부서이름,부서위치,급여등급번호 검색
--결합조건-1 : EMP 테이블의 부서번호(DETPNO)와 DEPT 테이블의 부서번호(DETPNO)가 같은 행을 결합하여 검색 
--검색조건-2 : EMP 테이블의 급여(SAL)가 SALGRADE 테이블의 최소급여(LOSAL)와 최대급여(HISAL)에 포함될 경우 행을 결합
SELECT EMPNO,ENAME,SAL,DNAME,LOC,GRADE FROM EMP JOIN DEPT ON EMP.DEPTNO=DEPT.DEPTNO 
    JOIN SALGRADE ON SAL BETWEEN LOSAL AND HISAL;
    
--EMP 테이블과 DEPT 테이블에서 SALES 부서에 근무하는 사원의 사원번호,사원이름,급여,부서이름,부서위치 검색
--결합조건 : EMP 테이블의 부서번호(DETPNO)와 DEPT 테이블의 부서번호(DETPNO)가 같은 행을 결합하여 검색 
SELECT EMPNO,ENAME,SAL,DNAME,LOC FROM EMP JOIN DEPT ON EMP.DEPTNO=DEPT.DEPTNO WHERE DNAME='SALES';

--OUTER JOIN : 결합조건을 명시하여 결합 테이블에서 결합조건이 맞는 행만 결합하여 검색하는 것이 아니라 결합조건이 맞지 
--않는 경우 NULL과 결합하여 검색
--형식)SELECT 검색대상,... FROM 테이블명1 {LEFT|RIGHT|FULL} OUTER JOIN 테이블명2 ON 결합조건
--LEFT OUTER JOIN : 왼쪽 테이블의 모든 행을 검색하고 오른쪽 테이블은 결합조건이 맞는 행이 없는 경우 NULL과 결합하여 검색
--RIGHT OUTER JOIN : 오른쪽 테이블의 모든 행을 검색하고 왼쪽 테이블은 결합조건이 맞는 행이 없는 경우 NULL과 결합하여 검색
--FULL OUTER JOIN : 모든 테이블의 행을 결합하여 검색하고 오른쪽과 왼쪽 테이블에 결합조건이 맞는 행이 없는 경우 NULL과 결합하여 검색

--EMP 테이블과 DEPT 테이블에서 모든 사원의 사원번호,사원이름,급여,부서이름,부서위치 검색
--결합조건 : EMP 테이블의 부서번호(DETPNO)와 DEPT 테이블의 부서번호(DETPNO)가 같은 행을 결합하여 검색하되 
--결합조건이 맞지 않는 행은 NULL과 결합하여 검색
SELECT EMPNO,ENAME,SAL,DNAME,LOC FROM EMP LEFT OUTER JOIN DEPT ON EMP.DEPTNO=DEPT.DEPTNO;
SELECT EMPNO,ENAME,SAL,DNAME,LOC FROM EMP RIGHT OUTER JOIN DEPT ON EMP.DEPTNO=DEPT.DEPTNO;
SELECT EMPNO,ENAME,SAL,DNAME,LOC FROM EMP FULL JOIN DEPT ON EMP.DEPTNO=DEPT.DEPTNO;--OUTER 키워드 생략 가능

