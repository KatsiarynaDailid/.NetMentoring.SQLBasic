--3.	Выбрать всех заказчиков из таблицы Customers, у которых название страны начинается на буквы из диапазона b и g, не используя оператор BETWEEN. 

select c.CustomerID, c.Country
from [dbo].[Customers] c
where SUBSTRING(c.Country, 1, 1) in ('b', 'c', 'd', 'i', 'f', 'g');