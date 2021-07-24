DROP INDEX [IX_GetLowStockProducts] ON [dbo].[Product]
GO
ALTER TABLE Product ALTER COLUMN StockQuantity DECIMAL(10,2)
ALTER TABLE Product ALTER COLUMN MinStockQuantity DECIMAL(10,2)
GO
CREATE NONCLUSTERED INDEX [IX_GetLowStockProducts] ON [dbo].[Product]
(
	[Deleted] ASC,
	[VendorId] ASC,
	[ProductTypeId] ASC,
	[ManageInventoryMethodId] ASC,
	[MinStockQuantity] ASC,
	[UseMultipleWarehouses] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE ProductAttributeCombination ALTER COLUMN StockQuantity DECIMAL(10,2)
GO
ALTER TABLE ProductWarehouseInventory ALTER COLUMN StockQuantity DECIMAL(10,2)
ALTER TABLE ProductWarehouseInventory ALTER COLUMN ReservedQuantity DECIMAL(10,2)
GO
ALTER TABLE StockQuantityHistory ALTER COLUMN QuantityAdjustment DECIMAL(10,2)
ALTER TABLE StockQuantityHistory ALTER COLUMN StockQuantity DECIMAL(10,2)
GO
ALTER TABLE OrderItem ALTER COLUMN Quantity DECIMAL(10,2)
GO
ALTER TABLE ShoppingCartItem ALTER COLUMN Quantity DECIMAL(10,2)
GO
ALTER TABLE ShipmentItem ALTER COLUMN Quantity DECIMAL(10,2)
