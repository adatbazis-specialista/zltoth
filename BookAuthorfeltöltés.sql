USE [UniLibrary]
GO
declare @BID int=5002
declare @AID smallint=205

DECLARE @From smallint = 1,
			@To   smallint = 99

			WHILE @From <= @To
			BEGIN
INSERT INTO [dbo].[BookAuthor]
           ([BookID]
           ,[AuthorID])
     VALUES
           (@BID
           ,@AID)

		  SET @BID = @BID+1
		  if @From%10=0
			SET @AID = @AID+1 
		

		  SET @From = @From+1
		   END
GO

