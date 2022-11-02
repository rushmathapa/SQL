-- insert into empdpt.dpt(DEPTNO, DNAME, LOC)value('10', 'ACCOUNTING', 'NEW YORK');
 -- insert into empdpt.dpt(DEPTNO, DNAME, LOC)value('20', 'RESEARCH', 'DALLAS');
 -- insert into empdpt.dpt(DEPTNO, DNAME, LOC)value('30', 'SALES', 'CHICAGO');
 -- insert into empdpt.dpt(DEPTNO, DNAME, LOC)value('40', 'OPERATIONS', 'BOSTON');
-- select * from empdpt.dpt;
-- alter table emp add address varchar(20); 
 -- alter table emp modify JOB char(20);
 -- alter table emp modify address char(15);
 -- alter table emp change EMPNO EMP_ID INT ;
 --  alter table dpt rename to DEP;
-- select * from empdpt.emp;
   -- select * from empdpt.dep;
  -- select * from empdpt.emp where deptno = 20;
    -- select * from empdpt.emp where JOB = 'MANAGER';
    -- select * from empdpt.emp where sal between 1000 AND 2000;
   -- select ENAME, JOB, SAL from empdpt.emp where job <> 'manager';
  -- select * from empdpt.emp where hiredate between ('1981-04-22 ') and  ('1982-12-17');
   -- select ENAME from empdpt.emp where hiredate  ('1981');
	--	select ENAME from  empdpt.emp where deptno = 40;
    -- select ENAME, JOB, deptno from empdpt.emp where job = 'clerk'
    -- select job from empdpt.emp where sal > 2000;
    -- select hiredate from empdpt.emp where deptno = 30;
    -- select * from empdpt.emp where job <> 'clerk';
    -- select * from empdpt.emp where sal >= 1300;
     select * from empdpt.emp where sal <= 1500;
    
  
    
    