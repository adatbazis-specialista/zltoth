USE [UniLibrary]
GO

DELETE FROM [dbo].[Prenotation]
      WHERE MemberID in (SELECT P.MemberID
	FROM LoanHistory LH left join Loan L on LH.BookID=L.BookID and LH.MemberID=L.MemberID
	inner join Prenotation P on LH.BookID=P.BookID and LH.MemberID=P.MemberID 
	
	where L.BookID is null and L.MemberID is null and DATEDIFF(d,LH.EndDate,getdate())>3)
	and BookID in (SELECT P.BookID
	FROM LoanHistory LH left join Loan L on LH.BookID=L.BookID and LH.MemberID=L.MemberID
	inner join Prenotation P on LH.BookID=P.BookID and LH.MemberID=P.MemberID 
	
	where L.BookID is null and L.MemberID is null and DATEDIFF(d,LH.EndDate,getdate())>3)

