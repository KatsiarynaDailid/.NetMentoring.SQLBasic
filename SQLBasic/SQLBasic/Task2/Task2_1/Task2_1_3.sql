--3.	По таблице Orders найти количество различных покупателей (CustomerID), сделавших заказы. Использовать функцию COUNT 
--и не использовать предложения WHERE и GROUP.

select count(distinct o.CustomerID) as 'Count of Customers'
from [dbo].[Orders] o;