CREATE TABLE [Person].[Customer]
(
	[Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY DEFAULT NEWID(), 
    [PersonId] UNIQUEIDENTIFIER NOT NULL, 
    [SalesPersonId] UNIQUEIDENTIFIER NOT NULL, 
    [CreatedDate] DATE NOT NULL DEFAULT GETUTCDATE(), 
    CONSTRAINT [FK_Customer_ToPerson] FOREIGN KEY ([PersonId]) REFERENCES Person.[Person]([Id]), 
    CONSTRAINT [FK_Customer_ToTable] FOREIGN KEY ([SalesPersonId]) REFERENCES Person.[SalesPerson]([Id])
)
