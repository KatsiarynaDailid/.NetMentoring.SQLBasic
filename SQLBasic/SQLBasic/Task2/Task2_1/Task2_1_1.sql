--1.	Найти общую сумму всех заказов из таблицы Order Details с учетом количества закупленных товаров и скидок по ним. 
--Результатом запроса должна быть одна запись с одной колонкой с названием колонки 'Totals'.

select SUM(od.Quantity * od.UnitPrice * (1 - od.Discount)) as 'Total'
from [dbo].[Order Details] od;