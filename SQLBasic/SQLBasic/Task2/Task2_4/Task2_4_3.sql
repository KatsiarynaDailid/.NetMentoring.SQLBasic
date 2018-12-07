--3.	Выдать всех заказчиков (таблица Customers), которые не имеют ни одного заказа (подзапрос по таблице Orders). Использовать оператор EXISTS.

select c.CustomerID
from [dbo].Customers c
where not exists 
(select o.CustomerID
from [dbo].Orders o);