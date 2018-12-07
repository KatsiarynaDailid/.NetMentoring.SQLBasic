--5.	Найти всех покупателей, которые живут в одном городе. 

select c1.City, c1.CompanyName as Customer1, c2.CompanyName as Customer2
from [dbo].Customers c1
join [dbo].Customers c2 on c1.City = c2.City
where c1.CompanyName <> c2.CompanyName
order by c1.City;