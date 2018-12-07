--•	1.0 -> 1.1
--•	Версия 1.0. Основана на оригинальной базе Northwind
--•	Версия 1.1. Добавляет таблицу данных кредитных карт сотрудников: номер карты, дата истечения, имя card holder, ссылку на сотрудника

if not exists (select * from Sys.Tables SysTables where SysTables.[Name] = 'CreditCards')
begin

create table [dbo].CreditCards(
	"CardNumber" "int" IDENTITY (1, 1) NOT NULL ,
	"ExpirationDate" "datetime" NULL ,
	"CardHolderName" nvarchar (40) NULL ,
	"EmployeeID" "int" NULL,
	CONSTRAINT "FK_CreditCards_Employees" FOREIGN KEY 
	(
		"EmployeeID"
	) REFERENCES "dbo"."Employees" (
		"EmployeeID"
	)
)
end