SELECT EMP.ENAME, EMP.SAL, EMP.DEPTNO FROM EMP WHERE EMP.SAL > (SELECT AVG(EMP.SAL) FROM EMP);
SELECT D.DNAME FROM DEPT D WHERE (SELECT COUNT(*) FROM EMP I WHERE I.DEPTNO = D.DEPTNO GROUP BY I.DEPTNO) > 4;
SELECT E.ENAME, E.SAL, DEPT.DNAME FROM DEPT, EMP E WHERE DEPT.DEPTNO = E.DEPTNO AND E.SAL > ANY (SELECT I.SAL FROM EMP I WHERE DEPTNO = 20);
