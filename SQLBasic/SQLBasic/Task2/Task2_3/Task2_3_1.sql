--1.	Определить продавцов, которые обслуживают регион 'Western' (таблица Region). 

select DISTINCT employeesTable.EmployeeID
from [dbo].Employees employeesTable
join [dbo].EmployeeTerritories employeeTerr on employeeTerr.EmployeeID = employeesTable.EmployeeID
join [dbo].Territories territoriesTable on employeeTerr.TerritoryID = territoriesTable.TerritoryID
join [dbo].Region regionTable on territoriesTable.RegionID = regionTable.RegionID
where regionTable.RegionDescription = 'Western';