--1.	Выбрать из таблицы Customers всех заказчиков, проживающих в USA и Canada. Запрос сделать с только помощью оператора IN.
--Возвращать колонки с именем пользователя и названием страны в результатах запроса.
--Упорядочить результаты запроса по имени заказчиков и по месту проживания.

select c.ContactName, c.Country
from [dbo].[Customers] c
where c.Country in ('USA ','Canada')
order by c.ContactName, c.Address;