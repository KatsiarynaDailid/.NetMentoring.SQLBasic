--3.	По таблице Orders найти количество заказов, сделанных каждым продавцом и для каждого покупателя.
--Необходимо определить это только для заказов, сделанных в 1998 году. 

select o.EmployeeID, o.CustomerID, count(o.OrderID) as 'Count of Orders'
from [dbo].[Orders] o
where YEAR(o.ShippedDate) = 1998
group by o.EmployeeID, o.CustomerID;