﻿CREATE TABLE [Person].[Person]
(
	[Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY DEFAULT NEWID(), 
    [IndexId] BIGINT NOT NULL IDENTITY, 
    [FName] NVARCHAR(50) NOT NULL, 
    [LName] NVARCHAR(50) NOT NULL, 
    [BirthDate] DATE NULL, 
    CONSTRAINT [CK_Person_Age] CHECK (DATEDIFF(YEAR,[BirthDate],GETDATE()) >= 18)
)

GO

CREATE INDEX [IX_Person_IndexId] ON [Person].[Person] ([IndexId])
