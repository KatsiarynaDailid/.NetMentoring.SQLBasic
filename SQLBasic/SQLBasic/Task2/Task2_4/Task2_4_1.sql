--1.	Выдать всех поставщиков (колонка CompanyName в таблице Suppliers), у которых нет хотя бы одного продукта на складе 
--(UnitsInStock в таблице Products равно 0). Использовать вложенный SELECT для этого запроса с использованием оператора IN. 

select s.CompanyName
from [dbo].Suppliers s
where s.SupplierID in (
select p.SupplierID
from [dbo].Products p
where p.UnitsInStock = 0
);