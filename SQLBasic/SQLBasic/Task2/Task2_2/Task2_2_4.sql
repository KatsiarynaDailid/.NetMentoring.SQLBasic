--4.	Найти покупателей и продавцов, которые живут в одном городе. Если в городе живут только один или несколько продавцов,
--или только один или несколько покупателей, то информация о таких покупателя и продавцах не должна попадать в результирующий набор. 
--Не использовать конструкцию JOIN. 

select c.City, c.CustomerID, EmployeesTable.EmployeeID
from [dbo].Customers c 
cross apply 
(select e.EmployeeID
from [dbo].Employees e
where c.City = e.City
) EmployeesTable;