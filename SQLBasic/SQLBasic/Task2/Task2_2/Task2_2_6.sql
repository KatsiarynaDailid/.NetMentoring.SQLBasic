--6.	По таблице Employees найти для каждого продавца его руководителя.

select e.EmployeeID, (
select Managers.FirstName
from [dbo].Employees Managers
where e.ReportsTo = Managers.EmployeeID
) as Manager
from [dbo].Employees e;