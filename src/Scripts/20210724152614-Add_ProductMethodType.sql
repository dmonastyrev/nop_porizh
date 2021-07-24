IF COL_LENGTH('Product', 'ManageProductTypeId') IS NULL
BEGIN
	ALTER TABLE Product ADD ManageProductTypeId INT NOT NULL DEFAULT 0
    GO
	UPDATE Product SET ManageProductTypeId = 1 WHERE [Name] like '%купон%'
    GO
	INSERT INTO LocaleStringResource VALUES ('admin.catalog.products.fields.manageproducttype', 'Type of product', 1)
	INSERT INTO LocaleStringResource VALUES ('admin.catalog.products.fields.manageproducttype', 'Единица измерения кол-ва', 2)

    INSERT INTO LocaleStringResource VALUES ('enums.nop.core.domain.catalog.manageproducttype.managemeters', 'In Meters', 1)
    INSERT INTO LocaleStringResource VALUES ('enums.nop.core.domain.catalog.manageproducttype.manageitems', 'In Items', 1)
    INSERT INTO LocaleStringResource VALUES ('enums.nop.core.domain.catalog.manageproducttype.managemeters', 'В Метрах', 2)
    INSERT INTO LocaleStringResource VALUES ('enums.nop.core.domain.catalog.manageproducttype.manageitems', 'В Штуках', 2)  
	INSERT INTO LocaleStringResource VALUES ('admin.catalog.products.fields.manageproducttype.hint', 'Set unit of measurement of product quantity', 1)  
	INSERT INTO LocaleStringResource VALUES ('admin.catalog.products.fields.manageproducttype.hint', 'Определяет единицы измерения количества продукта', 2)   
END