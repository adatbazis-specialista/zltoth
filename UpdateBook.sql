USE [UniLibrary]
GO

UPDATE [dbo].[Book]
   SET 
      [OnlyForReadingroom] = 1
 WHERE BookID<15000 and BookID>14800
GO


