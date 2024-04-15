use employeedetails;
# 1. To display Emplyoee name and Salary whose salary is greater than and equal to 2200
select ename,sal from empl where sal >= 2200;

# 2. To display emplyoee details who is not getting commission
select * from empl where comm =0 or comm is null;

# 3. To display employee details whose salary is not between 2500 and 4000
select * from empl where not (sal >= 2500 and sal <= 4000);
select * from empl where not sal between 2500 and 4000;

-- 4. To display name,jobtitle and salary of emplyoees who don't have manager
select ename,job,sal from empl where mgr is null;

# 5.To display the employee name which has letter 'A' in the 4th position
select ename from empl where ename like "___A%";
--                   or                          --
# 5.To display the employee name which has letter 'A' in the 3rd position
select ename from empl where ename like "__A%";

# 6. To display the name which contains letter 'T' as the last alphabet
select ename from empl where ename like "%T";
