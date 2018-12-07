--3.	Выбрать в таблице Orders заказы, которые были доставлены после 6 мая 1998 года (ShippedDate) не включая эту дату или которые еще не доставлены. 
--В запросе должны возвращаться только колонки OrderID (переименовать в Order Number) и ShippedDate (переименовать в Shipped Date).
--В результатах запроса возвращать для колонки ShippedDate вместо значений NULL строку ‘Not Shipped’,
--для остальных значений возвращать дату в формате по умолчанию.

declare @date datetime
set @date='1998-05-06'

select o.[OrderID] AS 'Order Number',
case
       when o.[ShippedDate] is NULL then 'Not Shipped'
	   else o.[ShippedDate]
end
as 'Shipped Date'
from [dbo].[Orders] o
where o.[ShippedDate] > @date or o.[ShippedDate] is NULL;