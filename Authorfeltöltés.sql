USE [UniLibrary]
GO

INSERT INTO [dbo].[Author]
           ([AuthorName])
     SELECT TOP (100) 
      [FirstName]+' '+
      
      [LastName]
      
      
  FROM [AdventureWorks2019].[Person].[Person]
  order by BusinessEntityID desc
GO


