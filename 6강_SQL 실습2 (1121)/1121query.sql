select Bdate, Address
from EMPLOYEE
where Fname='John' and Minit='B' and Lname='Smith'

select Fname, Lname, Address
from EMPLOYEE, DEPARTMENT
where Dname='Research' and Dnumber = Dno;

select Pnumber, Dnum, Lname, Address, Bdate
from PROJECT, DEPARTMENT, EMPLOYEE
where Dnum=Dnumber and Mgr_ssn=Ssn and Plocation='Stafford';

select E.Fname, E.Lname, S.Fname, S.Lname
from EMPLOYEE AS E, EMPLOYEE AS S
Where E.Super_ssn=S.Ssn;

select E.Fname, E.Lname, E.Address
from EMPLOYEE E, DEPARTMENT D
where D.Dname='Research' and D.Dnumber=E.DNO;

select *
from EMPLOYEE
where Dno=5;

select *
from EMPLOYEE, DEPARTMENT
where Dname='Research' and Dno=Dnumber;

select *
from EMPLOYEE, DEPARTMENT;

select all salary
from EMPLOYEE;

select distinct salary
from EMPLOYEE;

(select Distinct Pnumber
from PROJECT, DEPARTMENT, EMPLOYEE
where Dnum=Dnumber and Mgr_ssn=Ssn and Lname='Smith')
union
(select Distinct Pnumber
from PROJECT, WORKS_ON, EMPLOYEE
where Pnumber=Pno and Essn=Ssn and Lname='Smith');

select Fname, Lname
from EMPLOYEE
where Address like '%Houston, TX%';

select *
from EMPLOYEE
where Bdate between '1950-01-01' and '1959-12-31';

select Fname, Lname, 1.1*Salary AS Increased_sal
from EMPLOYEE As E, WORKS_ON W, PROJECT AS P
where E.Ssn=w.Essn and W.Pno=p.Pnumber and p.Pname = 'ProductX';

select *
from EMPLOYEE
where (Salary Between 30000 and 40000) and Dno=5;

select *
from EMPLOYEE
order by Salary desc, Bdate asc;

select Fname, Lname
from EMPLOYEE
where Super_ssn is null;

/* 명시적 집합 먼저 */
select Distinct Essn
from WORKS_ON
where Pno in (1,2,3);

/* Nested Queries */
select E.Fname, E.Lname
from EMPLOYEE AS E
where E.Ssn IN (select Essn
				from DEPENDENT
				where E.Sex=Sex);

select Fname, Lname
from EMPLOYEE as E
where exists (select *
			  from DEPENDENT
			  where E.Ssn=Essn and E.sex=sex);

select Fname, Lname
from EMPLOYEE
where Not exists (select *
				  from DEPENDENT
				  where Ssn=Essn);

select Fname, Lname, Address
from (EMPLOYEE join DEPARTMENT on dno = Dnumber)
where Dname = 'Research';

select Sum(salary) as Sum_sal, max(salary) as Max_sal,
	   MIN(salary) as Min_sal, AVG(salary) as Avg_sal
from EMPLOYEE;

select SUM(salary) as Sum_sal, MAX(salary) as Max_sal,
	   Min(salary) as Min_sal, AVG(salary) as Avg_sal
from (EMPLOYEE join DEPARTMENT on Dno=Dnumber)
where Dname='Research';

select count(*) as Numof_Emp
from EMPLOYEE;

select COUNT(*) as Numof_ResearchEmp
from EMPLOYEE, DEPARTMENT
where Dno=Dnumber and Dname='Research';

select Dno, COUNT(*) as Numof_Emp, AVG(salary) as Avg_sal
from EMPLOYEE
Group by Dno;

select Pnumber, Pname, Count(*) as Numof_proEmp
from PROJECT, WORKS_ON
where Pnumber=Pno
group by Pnumber, Pname;

select Pnumber, Pname, count(*) as Numof_proEmp
from PROJECT, WORKS_ON
where Pnumber=Pno
group by Pnumber, Pname
Having count(*) > 2;

select Pnumber, Pname, count(*)
from PROJECT, WORKS_ON, EMPLOYEE
where Pnumber=Pno and Ssn=Essn and Dno=5
group by Pnumber, Pname;

select Dno, Ssn, Salary
from EMPLOYEE
where Salary > 40000 and Dno IN
	(select dno
	from EMPLOYEE
	group by Dno
	Having COUNT(*) >=3)