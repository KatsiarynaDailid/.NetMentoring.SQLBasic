--1.	По таблице Orders найти количество заказов с группировкой по годам. В результатах запроса надо возвращать две колонки c названиями Year и Total.
--Написать проверочный запрос, который вычисляет количество всех заказов.

select YEAR(o.ShippedDate) as Year, count(o.OrderID) as Total
from [dbo].[Orders] o
group by o.ShippedDate;

select count(o.OrderID) as 'Count of all orders'
from [dbo].[Orders] o;
