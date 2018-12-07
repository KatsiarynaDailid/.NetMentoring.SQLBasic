--2.	Выдать всех продавцов, которые имеют более 150 заказов. Использовать вложенный SELECT.

select e.EmployeeID
from [dbo].Employees e
where (
select count(o.OrderID) 
from [dbo].Orders o
where o.EmployeeID = e.EmployeeID
) > 150;