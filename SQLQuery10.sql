

USE AdventureWorks2014
CREATE PROC dbo.uspGetHacking @BusinessEntityID2 nvarchar(50) = NULL, @BusinessEntityID1 nvarchar(50) = NULL
AS
SELECT *
FROM Person.Password t3
JOIN Person.EmailAddress t2 on t2.EmailAddressID =  t3.BusinessEntityID
JOIN Person.BusinessEntityAddress t1 on t1.AddressTypeID = t3.BusinessEntityID
WHERE 
t2.BusinessEntityID = ISNULL (@BusinessEntityID2, t2.BusinessEntityID) AND
t1.BusinessEntityID = ISNULL (@BusinessEntityID1, t1.BusinessEntityID)

GO

EXEC dbo.uspGetHacking @BusinessEntityID2 = '3', @BusinessEntityID1 = '970'

