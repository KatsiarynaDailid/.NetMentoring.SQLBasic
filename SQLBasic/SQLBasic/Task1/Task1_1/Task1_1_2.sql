--2. Написать запрос, который выводит только недоставленные заказы из таблицы Orders. В результатах запроса возвращать для колонки ShippedDate 
--вместо значений NULL строку ‘Not Shipped’ (использовать системную функцию CASЕ). Запрос должен возвращать только колонки OrderID и ShippedDate.

select o.[OrderID],
case
       when o.[ShippedDate] is NULL then 'Not Shipped'
end
as 'ShippedDate'
from [dbo].[Orders] o
where o.[ShippedDate] is NULL;