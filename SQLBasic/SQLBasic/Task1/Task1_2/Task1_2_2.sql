--2.	Выбрать из таблицы Customers всех заказчиков, не проживающих в USA и Canada. Запрос сделать с помощью оператора IN.
--Возвращать колонки с именем пользователя и названием страны в результатах запроса. Упорядочить результаты запроса по имени заказчиков.

select c.ContactName, c.Country
from [dbo].[Customers] c
where c.Country NOT IN ('USA ','Canada')
order by c.ContactName;