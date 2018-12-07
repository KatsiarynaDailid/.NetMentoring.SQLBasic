--1.	Выбрать в таблице Orders заказы, которые были доставлены после 6 мая 1998 года (колонка ShippedDate) включительно и которые доставлены 
--с ShipVia >= 2. Запрос должен возвращать только колонки OrderID, ShippedDate и ShipVia. 

declare @date datetime
set @date='1998-05-06'

select o.OrderID, o.ShippedDate, o.ShipVia
from [dbo].[Orders] o
where o.ShipVia >= 2 and o.ShippedDate >= @date; 