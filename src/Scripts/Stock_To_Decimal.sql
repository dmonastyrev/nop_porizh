ALTER TABLE Product ALTER COLUMN StockQuantity DECIMAL(10,4)
ALTER TABLE Product ALTER COLUMN MinStockQuantity DECIMAL(10,4)

ALTER TABLE ProductAttributeCombination ALTER COLUMN StockQuantity DECIMAL(10,4)

ALTER TABLE ProductWarehouseInventory ALTER COLUMN StockQuantity DECIMAL(10,4)
ALTER TABLE ProductWarehouseInventory ALTER COLUMN ReservedQuantity DECIMAL(10,4)

ALTER TABLE StockQuantityHistory ALTER COLUMN QuantityAdjustment DECIMAL(10,4)
ALTER TABLE StockQuantityHistory ALTER COLUMN StockQuantity DECIMAL(10,4)

ALTER TABLE OrderItem ALTER COLUMN Quantity DECIMAL(10,4)

ALTER TABLE ShoppingCartItem ALTER COLUMN Quantity DECIMAL(10,4)

ALTER TABLE ShipmentItem ALTER COLUMN Quantity DECIMAL(10,4)
