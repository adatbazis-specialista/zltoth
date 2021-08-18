USE [UniLibrary]
GO
CREATE ROLE [LibStock]
GO
use [UniLibrary]
GO
GRANT INSERT ON [dbo].[vBookStock] TO [LibStock]
GO
use [UniLibrary]
GO
GRANT SELECT ON [dbo].[vBookStock] TO [LibStock]
GO
use [UniLibrary]
GO
GRANT EXECUTE ON [dbo].[Insertview] TO [LibStock]
GO
use [UniLibrary]
GO
GRANT SELECT ON [dbo].[vStatistics] TO [LibStock]
GO
USE [UniLibrary]
GO
CREATE ROLE [LibMember]
GO
use [UniLibrary]
GO
GRANT SELECT ON [dbo].[vReader] TO [LibMember]
GO
USE [UniLibrary]
GO
CREATE ROLE [Libadmin]
GO
use [UniLibrary]
GO
GRANT EXECUTE ON [dbo].[InsertDeleteUpdateLoan] TO [Libadmin]
GO
use [UniLibrary]
GO
GRANT CONTROL ON [dbo].[LoanDueDate] TO [Libadmin]
GO
use [UniLibrary]
GO
GRANT EXECUTE ON [dbo].[LoanDueDate] TO [Libadmin]
GO
use [UniLibrary]
GO
GRANT EXECUTE ON [dbo].[InsertPrenotation] TO [Libadmin]
GO
use [UniLibrary]
GO
GRANT SELECT ON [dbo].[vPrenotatedBookAvailable] TO [Libadmin]
GO
use [UniLibrary]
GO
GRANT SELECT ON [dbo].[vReader] TO [Libadmin]
GO
use [UniLibrary]
GO
GRANT SELECT ON [dbo].[vStatistics] TO [Libadmin]
GO

USE [master]
GO
CREATE LOGIN [LStock] WITH PASSWORD=N'' MUST_CHANGE, DEFAULT_DATABASE=[master], CHECK_EXPIRATION=ON, CHECK_POLICY=ON
GO
USE [UniLibrary]
GO
CREATE USER [LStock] FOR LOGIN [LStock]
GO
USE [UniLibrary]
GO
ALTER ROLE [LibStock] ADD MEMBER [LStock]
GO

USE [master]
GO
CREATE LOGIN [LMember] WITH PASSWORD=N'' MUST_CHANGE, DEFAULT_DATABASE=[master], CHECK_EXPIRATION=ON, CHECK_POLICY=ON
GO
USE [UniLibrary]
GO
CREATE USER [LMember] FOR LOGIN [LMember]
GO
USE [UniLibrary]
GO
ALTER ROLE [LibMember] ADD MEMBER [LMember]
GO

USE [master]
GO
CREATE LOGIN [LAdmin] WITH PASSWORD=N'' MUST_CHANGE, DEFAULT_DATABASE=[master], CHECK_EXPIRATION=ON, CHECK_POLICY=ON
GO
USE [UniLibrary]
GO
CREATE USER [LAdmin] FOR LOGIN [LAdmin]
GO
USE [UniLibrary]
GO
ALTER ROLE [Libadmin] ADD MEMBER [LAdmin]
GO

USE [UniLibrary]
GO
CREATE APPLICATION ROLE [RRApp] WITH PASSWORD = N'password'
GO
use [UniLibrary]
GO
GRANT INSERT ON [dbo].[ApplicationInReadingRoom] TO [RRApp]
GO
use [UniLibrary]
GO
GRANT SELECT ON [dbo].[ApplicationInReadingRoom] TO [RRApp]
GO
USE [UniLibrary]
GO
CREATE APPLICATION ROLE [UpkeepingApp] WITH PASSWORD = N'password'
GO
use [UniLibrary]
GO
GRANT DELETE ON [dbo].[Upkeeping] TO [UpkeepingApp]
GO
use [UniLibrary]
GO
GRANT INSERT ON [dbo].[Upkeeping] TO [UpkeepingApp]
GO
use [UniLibrary]
GO
GRANT SELECT ON [dbo].[Upkeeping] TO [UpkeepingApp]
GO


