CREATE TABLE [Inventory].[Vehicle]
(
	[Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY DEFAULT newid(), 
    [MakeId] UNIQUEIDENTIFIER NOT NULL, 
    [ModelId] UNIQUEIDENTIFIER NOT NULL, 
    [Year] SMALLINT NOT NULL, 
    [ColorId] UNIQUEIDENTIFIER NOT NULL, 
    [Price] MONEY NOT NULL, 
    CONSTRAINT [FK_Vehicle_Make]  FOREIGN KEY ([MakeId])  REFERENCES Inventory.[Make]([Id]), 
    CONSTRAINT [FK_Vehicle_Model] FOREIGN KEY ([ModelId]) REFERENCES [Inventory].[Model]([Id]), 
    CONSTRAINT [FK_Vehicle_Color] FOREIGN KEY ([ColorId]) REFERENCES Inventory.[Color]([Id])
)
