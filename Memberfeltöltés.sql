

/*CREATE TABLE [dbo].[Member](
	[MemberID] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [varchar](40) NOT NULL,
	[FirstName] [varchar](40) NOT NULL,
	[PostalCode] [varchar](10) NOT NULL,
	[City] [varchar](40) NOT NULL,
	[Address] [varchar](100) NOT NULL,
	[PhoneNumber] [varchar](25) NULL,
	[BirthDate] [date] NOT NULL,
	[EnrollmentDate] [date] NOT NULL,
 CONSTRAINT [PK__Member__0CF04B380F30F4E1] PRIMARY KEY CLUSTERED 
(
	[MemberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO*/

INSERT [dbo].[Member]([LastName] ,
	[FirstName] ,
	[PostalCode] ,
	[City] ,
	[Address] ,
	[EMailaddress] ,
	[BirthDate] ,
	[EnrollmentDate] )
	select P.LastName,P.FirstName,A.PostalCode,A.City,A.AddressLine1,EMA.EmailAddress, E.BirthDate,E.HireDate
from
AdventureWorks2019.HumanResources.Employee E inner join AdventureWorks2019.Person.Person P on E.BusinessEntityID=P.BusinessEntityID
inner join AdventureWorks2019.Person.BusinessEntityAddress BEA on E.BusinessEntityID=BEA.BusinessEntityID
inner join AdventureWorks2019.Person.Address A on BEA.AddressID=A.AddressID
inner join AdventureWorks2019.Person.EmailAddress EMA on E.BusinessEntityID=EMA.BusinessEntityID
select *from Member