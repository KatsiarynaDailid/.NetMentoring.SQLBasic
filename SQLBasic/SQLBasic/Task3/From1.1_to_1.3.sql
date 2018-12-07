--•	Версия 1.1. Добавляет таблицу данных кредитных карт сотрудников: номер карты, дата истечения, имя card holder, ссылку на сотрудника, …
--•	Версия 1.3. Добавляет следующие минорные изменения относительно 1.1:
--o	Переименование Region в Regions
--o	Добавление в таблицу клиентов даты основания

if exists (select * from Sys.Tables SysTables where SysTables.Name = 'Region')
begin

exec sp_Rename 'dbo.Region', 'Regions';

end

if COL_LENGTH('[dbo].Customers', 'FoundationDate') is null
begin

alter table [dbo].Customers
add [FoundationDate] datetime

end