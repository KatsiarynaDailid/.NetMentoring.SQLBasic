﻿--3.	Выбрать из таблицы Customers все страны, в которых проживают заказчики. Страна должна быть упомянута только один раз и список 
--отсортирован по убыванию. Не использовать предложение GROUP BY. Возвращать только одну колонку в результатах запроса. 

select DISTINCT c.Country
from [dbo].[Customers] c
order by c.Country desc;