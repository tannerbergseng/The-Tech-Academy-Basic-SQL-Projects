
USE AdventureWorks2014
GO
CREATE PROCEDURE dbo.uspGetAddress @City nvarchar(30) = NULL, @AddressLine1 nvarchar(60) = NULL
AS
SELECT *
FROM Person.Address
WHERE City = ISNULL(@City,City)
AND AddressLine1 LIKE '%' + ISNULL(@AddressLine1 ,AddressLine1) + '%'
GO

EXEC dbo.uspGetAddress @City = 'New york', @AddressLine1 = 'A'

DROP PROC dbo.uspGetAddress