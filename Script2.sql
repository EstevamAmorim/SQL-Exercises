DELETE FROM EMP;

DELETE FROM DEPT;

ALTER TABLE DEPT ADD LOC VARCHAR(12);

INSERT INTO DEPT (DEPTNO, DNAME, LOC) VALUES(10, 'ACCOUNTING', 'NEW YORK');
INSERT INTO DEPT (DEPTNO, DNAME, LOC) VALUES(20, 'RESEARCH', 'DALLAS');
INSERT INTO DEPT (DEPTNO, DNAME, LOC) VALUES(30, 'SALES', 'CHICAGO');
INSERT INTO DEPT (DEPTNO, DNAME, LOC) VALUES(40, 'OPERATIONS', 'BOSTON');



INSERT INTO EMP(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO) VALUES(7839, 'KING', 'PRESIDENT', NULL, '17/11/81', 5000, 10);
INSERT INTO EMP(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO) VALUES(7566, 'JONES', 'MANAGER', 7839, '02/04/81', 2975, 20);
INSERT INTO EMP(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO) VALUES(7902, 'FORD', 'ANALYST', 7566, '03/12/81', 3000, 20);
INSERT INTO EMP(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO) VALUES(7369, 'SMITH', 'CLERK', 7902, '17/12/80', 800, 20);
INSERT INTO EMP(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO) VALUES(7698, 'BLAKE', 'MANAGER',  7839, '01/05/81', 2850, 30);
INSERT INTO EMP(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) VALUES(7499, 'ALLEN', 'SALESMAN', 7698, '20/02/81', 1600, 300, 30);
INSERT INTO EMP(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) VALUES(7521, 'WARD', 'SALESMAN', 7698, '22/02/81', 1250, 500, 30);
INSERT INTO EMP(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) VALUES(7654, 'MARTIN', 'SALESMAN', 7698, '28/09/81', 1250, 1400, 30);
INSERT INTO EMP(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO) VALUES(7782, 'CLARK', 'MANAGER', 7839, '09/06/81', 2450, 10);
INSERT INTO EMP(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO) VALUES(7788, 'SCOTT', 'ANALYST', 7566, '19/04/87', 3000, 20);
INSERT INTO EMP(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) VALUES(7844, 'TURNER', 'SALESMAN', 7698, '08/09/81', 1500, 0, 30);
INSERT INTO EMP(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO) VALUES(7876, 'ADAMS', 'CLERK', 7788, '23/05/87', 1100, 20);
INSERT INTO EMP(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO) VALUES(7900, 'JAMES', 'CLERK', 7698, '03/12/81', 950, 30);
INSERT INTO EMP(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO) VALUES(7934, 'MILLER', 'CLERK', 7782, '23/01/82', 1300, 10);
INSERT INTO EMP(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO) VALUES(8796, 'PHIL', 'CLERK', 7782, '12/01/83', 800, 10);

SELECT ENAME, JOB FROM EMP;

SELECT  * FROM EMP WHERE SAL > 500;

SELECT ENAME, HIREDATE FROM EMP WHERE DEPTNO = 30;

SELECT * FROM EMP WHERE HIREDATE > '01/06/1981';

SELECT ENAME, EMPNO FROM EMP WHERE ENAME LIKE 'A%';

SELECT ENAME, EMPNO FROM EMP WHERE ENAME LIKE '%AR%';

SELECT DEPTNO, ENAME, SAL FROM EMP WHERE SAL > 300 ORDER BY ENAME;

SELECT * FROM DEPT ORDER BY DEPTNO DESC;

SELECT DEPTNO, ENAME, SAL FROM EMP ORDER BY DEPTNO, SAL;

SELECT DEPT.DEPTNO, ENAME, DNAME FROM DEPT, EMP WHERE DEPT.DEPTNO = EMP.DEPTNO AND DNAME = 'SALES';

SELECT DEPT.DEPTNO, ENAME, DNAME FROM DEPT, EMP WHERE DEPT.DEPTNO = EMP.DEPTNO ORDER BY DNAME;

SELECT DEPT.DEPTNO, ENAME, DNAME FROM DEPT, EMP WHERE DEPT.DEPTNO = EMP.DEPTNO AND DNAME LIKE '%N%' ORDER BY DNAME;

SELECT DEPT.DEPTNO AS num_dept, ENAME, DNAME as nome_dept FROM DEPT, EMP WHERE DEPT.DEPTNO = EMP.DEPTNO AND DNAME LIKE '%N%' ORDER BY DNAME;

SELECT D.DEPTNO, ENAME, DNAME FROM DEPT D, EMP E WHERE D.DEPTNO = E.DEPTNO AND DNAME = 'SALES';

SELECT E1.ENAME AS FUNCIONARIO, E2.ENAME AS GERENTE FROM EMP E1, EMP E2 WHERE E1.MGR = E2.EMPNO;