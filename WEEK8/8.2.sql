-- Write a cursor PL/SQL block to allocate incentives to employees and to the corresponding 
-- departments handling a project from the Prj_Fund reserved. According to the Prj_Credits 
-- a department is having on the Project, a portion of Prj_Fund is given to the department on 
-- that project. E.g. Credit is 2 , allocate 20%. Corresponding department has to share 70% of 
-- amount received among all employees who are working on that project equally. Remaining 
-- 30% is added to Dept_Budget.
set serveroutput on;

DECLARE
    cursor cur_prj is select dno,prj_no,prj_credit,prj_fund from proj;
    incentives emp.sal%type;
    for_emp emp.sal%type;
    for_dept emp.sal%type;
    no_of_emp int;
BEGIN  
    for rec in cur_prj loop
        incentives:=rec.prj_fund*rec.prj_credit/10;
        for_emp:=incentives*0.7;
        for_dept:=incentives*30/100;
        select count(*) into no_of_emp from emp where deptno=rec.dno and prj_id=rec.prj_no;
        update emp set sal=sal+for_emp/no_of_emp where deptno=rec.dno and prj_id=rec.prj_no;
        update dept set dept_budget=dept_budget+for_dept where dno=rec.dno;
    end loop;
END;
/