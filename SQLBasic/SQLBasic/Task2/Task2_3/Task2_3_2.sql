--2.	Выдать в результатах запроса имена всех заказчиков из таблицы Customers и суммарное количество их заказов из таблицы Orders. 
--Принять во внимание, что у некоторых заказчиков нет заказов, но они также должны быть выведены в результатах запроса. 
--Упорядочить результаты запроса по возрастанию количества заказов.

select c.ContactName, count(o.OrderID) as 'Count of Orders'
from [dbo].Customers c 
left join [dbo].Orders o on c.CustomerID = o.CustomerID
group by c.ContactName
order by 'Count of Orders';