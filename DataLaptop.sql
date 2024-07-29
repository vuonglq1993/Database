USE master
GO

IF EXISTS (
    SELECT [name]
        FROM sys.databases
        WHERE [name] ='Laptopaz'
)
DROP DATABASE Laptopaz
GO

CREATE database Laptopaz
GO
use Laptopaz
GO