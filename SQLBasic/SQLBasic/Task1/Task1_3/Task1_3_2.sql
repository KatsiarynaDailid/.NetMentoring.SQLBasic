--2.	Выбрать всех заказчиков из таблицы Customers, у которых название страны начинается на буквы из диапазона b и g.
--Использовать оператор BETWEEN. Проверить, что в результаты запроса попадает Germany. Запрос должен возвращать только колонки CustomerID и Country 
--и отсортирован по Country.

select c.CustomerID, c.Country
from [dbo].[Customers] c
where SUBSTRING(c.Country, 1, 1) BETWEEN 'b' AND 'g'
order by c.Country;