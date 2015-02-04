CREATE TABLE [Sales].[Opportunity]
(
	[Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY DEFAULT newid(), 
    [CustomerId] UNIQUEIDENTIFIER NOT NULL, 
    [OpportunityTypeId] UNIQUEIDENTIFIER NOT NULL, 
    [CreatedDate] DATETIME NOT NULL DEFAULT GETUTCDATE(), 
    [ModifiedDate] DATETIME NOT NULL DEFAULT GETUTCDATE(), 
    CONSTRAINT [FK_Opportunity_OpportunityType] FOREIGN KEY ([OpportunityTypeId]) REFERENCES [Sales].[OpportunityType]([Id]), 
    CONSTRAINT [FK_Opportunity_Customer] FOREIGN KEY ([CustomerId]) REFERENCES [Person].[Customer]([id])
)
