USE [UniLibrary]
GO
declare @T smallint=1
declare @PY smallint=1970
declare @PID tinyint=1
declare @OFR bit=0
DECLARE @From smallint = 1,
			@To   smallint = 3000

			WHILE @From <= @To
			BEGIN
INSERT INTO [dbo].[Book]
           ([Title]
           ,[PublishingYear]
           ,[PublisherID]
           ,[DepartementCode]
           ,[OnlyForReadingroom])
     VALUES
           ('Biology'+cast(@T as varchar(30))
           ,@PY
           ,@PID
           ,'Bio'
           ,@OFR)

		  SET @T = @T+1
		  if @From%100=0
			SET @PY = @PY+1 
		if @From%1000=0
			SET @PID = @PID+1 
		if @From>2700
			SET @OFR = 1

		  SET @From = @From+1
		   END
GO

