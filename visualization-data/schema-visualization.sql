
BEGIN TRANSACTION Viz2019UpdateSchema
    WITH MARK N'Visualization 2019 Update Schema';
GO

USE BrandSites;
GO

-- IF visualization.Images exists, save data
IF EXISTS (
	SELECT name
    FROM sys.tables
    WHERE schema_id = SCHEMA_ID('visualization') AND name = 'Images'
)
BEGIN
	DECLARE @images TABLE (a nvarchar(255), b nvarchar(255), c nvarchar(255));
	INSERT INTO @images
	SELECT OriginalUrl
		,EncodedUrl
		,ShortLink
	FROM visualization.Images;
END

-- Drop visualization foreign key constraints
IF EXISTS (
    SELECT CONSTRAINT_NAME
    FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
    WHERE TABLE_SCHEMA = 'visualization' AND CONSTRAINT_NAME LIKE 'FK_%'
)
	DECLARE @constraints nvarchar(max) = '';
	SELECT @constraints += 'ALTER TABLE [visualization].[' + TABLE_NAME + '] DROP CONSTRAINT [' + CONSTRAINT_NAME + ']'
	FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
	WHERE TABLE_SCHEMA = 'visualization' AND CONSTRAINT_NAME LIKE 'FK_%';
	EXEC(@constraints);

-- Drop visualization tables
IF EXISTS (
    SELECT name
    FROM sys.tables
    WHERE schema_id = SCHEMA_ID('visualization')
) AND NOT EXISTS (
    SELECT CONSTRAINT_NAME
    FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
    WHERE TABLE_SCHEMA = 'visualization' AND CONSTRAINT_NAME LIKE 'FK_%'
)
    DECLARE @tables nvarchar(max) = '';
    SELECT @tables += 'DROP TABLE [visualization].[' + name + ']'
    FROM sys.tables
    WHERE schema_id = SCHEMA_ID('visualization');
    EXEC(@tables);

-- Drop visualization stored procedures
IF EXISTS (
    SELECT name
    FROM sys.procedures
    WHERE schema_id = SCHEMA_ID('visualization')
)
    DECLARE @procedures nvarchar(max) = '';
    SELECT @procedures += 'DROP PROCEDURE [visualization].[' + name + ']'
    FROM sys.procedures
    WHERE schema_id = SCHEMA_ID('visualization');
    EXEC(@procedures);

--IF EXISTS (
--    SELECT name
--    FROM sys.procedures
--    WHERE schema_id = SCHEMA_ID('dbo') AND name LIKE 'App_GetAdditionalSwatchInfo'
--)
--    DROP PROCEDURE dbo.App_GetAdditionalSwatchInfo;

-- Create the visualization schema if it doesn't exist
IF NOT EXISTS
(
    SELECT *
    FROM sys.schemas
    WHERE name = N'visualization'
) EXEC('CREATE SCHEMA visualization AUTHORIZATION [dbo]');

-- Create Visualization tables
CREATE TABLE visualization.Brands (
    Id int NOT NULL,
    Name nvarchar(40) UNIQUE NOT NULL,
    CONSTRAINT PK_Brands_Id PRIMARY KEY CLUSTERED (Id),
);

CREATE TABLE visualization.ProductLines (
    Id int NOT NULL,
    Name nvarchar(40) NOT NULL,
    BrandId int NOT NULL,
    CONSTRAINT PK_ProductLines_Id PRIMARY KEY CLUSTERED (Id),
    CONSTRAINT FK_ProductLines_BrandId FOREIGN KEY (BrandId) REFERENCES visualization.Brands (Id)
);

CREATE TABLE visualization.ProductStyles (
    Id int NOT NULL,
    Name nvarchar(80) NOT NULL,
    ProductLineId int NOT NULL,
    CONSTRAINT PK_ProductStyles_Id PRIMARY KEY CLUSTERED (Id),
    CONSTRAINT FK_ProductStyles_ProductLineId FOREIGN KEY (ProductLineId) REFERENCES visualization.ProductLines (Id)
);

CREATE TABLE visualization.Options (
    Id int NOT NULL,
    Name nvarchar(40) NOT NULL,
    Description nvarchar(255) NULL,
    CONSTRAINT PK_Options_Id PRIMARY KEY CLUSTERED (Id),
);

CREATE TABLE visualization.OptionChoices (
    Id int NOT NULL,
    Name nvarchar(40) NOT NULL,
    OptionId int NOT NULL,
    CONSTRAINT PK_OptionChoices_Id PRIMARY KEY CLUSTERED (Id),
    CONSTRAINT FK_OptionChoices_OptionId FOREIGN KEY (OptionId) REFERENCES visualization.Options (Id)
);

CREATE TABLE visualization.OptionChoicesProductStyles (
    OptionChoiceId int NOT NULL,
    ProductStyleId int NOT NULL,
    CONSTRAINT PK_OptionChoicesProductStyles_OptionChoiceId_ProductStyleId PRIMARY KEY CLUSTERED (OptionChoiceId, ProductStyleId),
    CONSTRAINT FK_OptionChoicesProductStyles_OptionChoiceId FOREIGN KEY (OptionChoiceId) REFERENCES visualization.OptionChoices (Id),
    CONSTRAINT FK_OptionChoicesProductStyles_ProductStyleId FOREIGN KEY (ProductStyleId) REFERENCES visualization.ProductStyles (Id)
);

CREATE TABLE visualization.Swatches (
    Id nvarchar(40) NOT NULL,
    ColorNumber nvarchar(40) NULL,
    ColorName nvarchar(40) NOT NULL,
    Collection nvarchar(40) NULL,
    ProductStyleId int NOT NULL,
    ImageFileName nvarchar(40) NOT NULL,
    CONSTRAINT PK_Swatches_Id PRIMARY KEY CLUSTERED (Id),
    CONSTRAINT FK_Swatches_ProductStyleId FOREIGN KEY (ProductStyleId) REFERENCES visualization.ProductStyles (Id)
);

CREATE TABLE visualization.SwatchesOptionChoices (
    SwatchId nvarchar(40) NOT NULL,
    OptionChoiceId int NOT NULL,
    CONSTRAINT PK_SwatchesOptionChoices_SwatchId_OptionChoiceId PRIMARY KEY CLUSTERED (SwatchId, OptionChoiceId),
    CONSTRAINT FK_SwatchesOptionChoices_SwatchId FOREIGN KEY (SwatchId) REFERENCES visualization.Swatches (Id),
    CONSTRAINT FK_SwatchesOptionChoices_OptionChoiceId FOREIGN KEY (OptionChoiceId) REFERENCES visualization.OptionChoices (Id)
);

CREATE TABLE visualization.Images (
    Id int NOT NULL IDENTITY(10001,1),
    OriginalUrl nvarchar(255) UNIQUE NOT NULL,
    EncodedUrl nvarchar(255) NULL,
    ShortLink nvarchar(255) NULL,
    CONSTRAINT PK_Images_Id PRIMARY KEY CLUSTERED (Id),
);

-- IF Images had data, reinsert it
INSERT INTO visualization.Images
SELECT a
	,b
	,c
FROM @images;
GO

-- Create the stored procedures
-- GetProductLines
CREATE PROCEDURE visualization.GetProductLines
AS
    SET NOCOUNT ON;
    SELECT * FROM visualization.ProductLines;
GO

-- GetProductLine
CREATE PROCEDURE visualization.GetProductLine
    @productLineId int
AS
    SET NOCOUNT ON;
    SELECT * FROM visualization.ProductLines WHERE Id = @productLineId;
GO

-- GetStylesForProductLine
CREATE PROCEDURE visualization.GetStylesForProductLine
    @productLineId int
AS
    SET NOCOUNT ON;
    SELECT * FROM visualization.ProductStyles WHERE ProductLineId = @productLineId;
GO

-- GetOptionsForStyle
CREATE PROCEDURE visualization.GetOptionsForStyle
    @styleId int
AS
    SET NOCOUNT ON;
    SELECT DISTINCT ot.Id AS OptionId, ot.Name AS OptionName, Description
    FROM visualization.Options AS ot
    JOIN visualization.OptionChoices AS oc
    ON ot.Id = oc.OptionId
    JOIN visualization.OptionChoicesProductStyles AS op
    ON op.OptionChoiceId = oc.Id
    WHERE op.ProductStyleId = @styleId AND op.OptionChoiceId = oc.Id
GO

-- GetOptionChoicesForStyle
CREATE PROCEDURE visualization.GetOptionChoicesForStyle
    @styleId int
AS
    SET NOCOUNT ON;
    SELECT op.OptionChoiceId, oc.Name AS OptionChoiceName, oc.OptionId
    FROM visualization.OptionChoicesProductStyles AS op
    JOIN visualization.OptionChoices AS oc
    ON op.OptionChoiceId = oc.Id
    WHERE op.ProductStyleId = @styleId AND op.OptionChoiceId = oc.Id
GO

-- GetSwatchesForStyle
CREATE PROCEDURE visualization.GetSwatchesForStyle
    @styleId int
AS
    SET NOCOUNT ON;
    SELECT * FROM visualization.Swatches WHERE ProductStyleId = @styleId;
GO

-- GetSwatchesOptionChoices
CREATE PROCEDURE visualization.GetSwatchesOptionChoices
AS
    SET NOCOUNT ON;
    SELECT * FROM visualization.SwatchesOptionChoices;
GO

-- GetProductStyles
CREATE PROCEDURE visualization.GetProductStyles
AS
    SET NOCOUNT ON;
    SELECT * FROM visualization.ProductStyles;
GO

-- GetProductStyle
CREATE PROCEDURE visualization.GetProductStyle
    @styleId int
AS
    SET NOCOUNT ON;
    SELECT * FROM visualization.ProductStyles WHERE Id = @styleId;
GO

-- GetOptions
CREATE PROCEDURE visualization.GetOptions
AS
    SET NOCOUNT ON;
    SELECT * FROM visualization.Options;
GO

-- GetOption
CREATE PROCEDURE visualization.GetOption
    @optionId int
AS
    SET NOCOUNT ON;
    SELECT * FROM visualization.Options WHERE Id = @optionId;
GO

-- GetOptionChoices
CREATE PROCEDURE visualization.GetOptionChoices
AS
    SET NOCOUNT ON;
    SELECT * FROM visualization.OptionChoices;
GO

-- GetOptionChoice
CREATE PROCEDURE visualization.GetOptionChoice
    @optionChoiceId int
AS
    SET NOCOUNT ON;
    SELECT * FROM visualization.OptionChoices WHERE Id = @optionChoiceId;
GO

-- GetSwatches
CREATE PROCEDURE visualization.GetSwatches
AS
    SET NOCOUNT ON;
    SELECT * FROM visualization.Swatches;
GO

-- GetSwatch
CREATE PROCEDURE visualization.GetSwatch
    @swatchId int
AS
    SET NOCOUNT ON;
    SELECT * FROM visualization.Swatches WHERE Id = @swatchId;
GO

-- GetShortLink
CREATE PROCEDURE visualization.GetImageUrls
    @originalUrl nvarchar(255),
    @shortLink nvarchar(255)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @encodedUrl nvarchar(255);
    SET @encodedUrl = (SELECT master.dbo.fn_varbintohexstr(HashBytes('MD5', @originalUrl)));

    IF (@shortLink != '')
        SELECT OriginalUrl, EncodedUrl, ShortLink FROM visualization.Images WHERE ShortLink = @shortLink;
    ELSE IF (@originalUrl != '' AND (SELECT COUNT(EncodedUrl) FROM visualization.Images WHERE EncodedUrl = @encodedUrl) > 0)
        SELECT OriginalUrl, EncodedUrl, ShortLink FROM visualization.Images WHERE EncodedUrl = @encodedUrl;
    ELSE IF (@originalUrl != '' AND (SELECT COUNT(EncodedUrl) FROM visualization.Images WHERE EncodedUrl = @encodedUrl) < 1)
        BEGIN
            INSERT INTO visualization.Images (OriginalUrl, EncodedUrl)
            VALUES (@originalUrl, @encodedUrl);

            DECLARE @idString nvarchar(255);
            DECLARE @binary varbinary(255);
            SET @idString = CAST(@@IDENTITY AS nvarchar(255))
            SET @binary = CONVERT(varbinary(255), @idString);
            UPDATE visualization.Images
            SET ShortLink = CAST(N'' AS xml).value('xs:base64Binary(sql:variable("@binary"))', 'nvarchar(255)')
            WHERE EncodedUrl = @encodedUrl;

            SELECT OriginalUrl, EncodedUrl, ShortLink FROM visualization.Images WHERE EncodedUrl = @encodedUrl;
        END
    ELSE
        THROW 51000, 'The parameters are incorrect', 1;
END
GO

-- App_GetAdditionalSwatchInfo
--CREATE PROCEDURE dbo.App_GetAdditionalSwatchInfo
--    @styleId int
--AS
--BEGIN
--    SET NOCOUNT ON;
--    SELECT swa.ColorNumber,
--        swa.ColorName,
--        swa.CollectionName,
--        swa.LargeImagePath,
--        swa.Opacity as SwatchOpacity,
--        swa.ProductLineCode,
--        sc.id as SwatchCategoryId,
--        sc.SwatchCategoryName,
--        sc.Opacity as SwatchCategoryOpacity,
--        sc.styleID

--    FROM dbo.Swatches as swa
--    JOIN dbo.SwatchesToCategories as stc ON stc.SwatchId = swa.id
--    JOIN dbo.SwatchCategory as sc ON sc.id = stc.SwatchCategoryId
--    WHERE sc.styleID = @styleId
--END
--GO

-- Test if schema is correct
IF EXISTS (
    SELECT TABLE_NAME
    FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
    WHERE TABLE_SCHEMA LIKE 'visualization' AND
        TABLE_NAME LIKE 'Brands' AND
        CONSTRAINT_NAME LIKE 'PK_Brands_Id'
) AND EXISTS (
    SELECT TABLE_NAME
    FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
    WHERE
        TABLE_SCHEMA LIKE 'visualization' AND
        TABLE_NAME LIKE 'ProductLines' AND
        CONSTRAINT_NAME LIKE 'PK_ProductLines_Id'
) AND EXISTS (
    SELECT TABLE_NAME
    FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
    WHERE
        TABLE_SCHEMA LIKE 'visualization' AND
        TABLE_NAME LIKE 'ProductLines' AND
        CONSTRAINT_NAME LIKE 'FK_ProductLines_BrandId'
) AND EXISTS (
    SELECT TABLE_NAME
    FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
    WHERE TABLE_SCHEMA LIKE 'visualization' AND
        TABLE_NAME LIKE 'ProductStyles' AND
        CONSTRAINT_NAME LIKE 'PK_ProductStyles_Id'
) AND EXISTS (
    SELECT TABLE_NAME
    FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
    WHERE
        TABLE_SCHEMA LIKE 'visualization' AND
        TABLE_NAME LIKE 'ProductStyles' AND
        CONSTRAINT_NAME LIKE 'FK_ProductStyles_ProductLineId'
) AND EXISTS (
    SELECT TABLE_NAME
    FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
    WHERE TABLE_SCHEMA LIKE 'visualization' AND
        TABLE_NAME LIKE 'Options' AND
        CONSTRAINT_NAME LIKE 'PK_Options_Id'
) AND EXISTS (
    SELECT TABLE_NAME
    FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
    WHERE TABLE_SCHEMA LIKE 'visualization' AND
        TABLE_NAME LIKE 'OptionChoices' AND
        CONSTRAINT_NAME LIKE 'PK_OptionChoices_Id'
) AND EXISTS (
    SELECT TABLE_NAME
    FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
    WHERE TABLE_SCHEMA LIKE 'visualization' AND
        TABLE_NAME LIKE 'OptionChoices' AND
        CONSTRAINT_NAME LIKE 'FK_OptionChoices_OptionId'
) AND EXISTS (
    SELECT TABLE_NAME
    FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
    WHERE TABLE_SCHEMA LIKE 'visualization' AND
        TABLE_NAME LIKE 'OptionChoicesProductStyles' AND
        CONSTRAINT_NAME LIKE 'PK_OptionChoicesProductStyles_OptionChoiceId_ProductStyleId'
) AND EXISTS (
    SELECT TABLE_NAME
    FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
    WHERE TABLE_SCHEMA LIKE 'visualization' AND
        TABLE_NAME LIKE 'OptionChoicesProductStyles' AND
        CONSTRAINT_NAME LIKE 'FK_OptionChoicesProductStyles_OptionChoiceId'
) AND EXISTS (
    SELECT TABLE_NAME
    FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
    WHERE TABLE_SCHEMA LIKE 'visualization' AND
        TABLE_NAME LIKE 'OptionChoicesProductStyles' AND
        CONSTRAINT_NAME LIKE 'FK_OptionChoicesProductStyles_ProductStyleId'
) AND EXISTS (
    SELECT TABLE_NAME
    FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
    WHERE TABLE_SCHEMA LIKE 'visualization' AND
        TABLE_NAME LIKE 'Swatches' AND
        CONSTRAINT_NAME LIKE 'PK_Swatches_Id'
) AND EXISTS (
    SELECT TABLE_NAME
    FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
    WHERE TABLE_SCHEMA LIKE 'visualization' AND
        TABLE_NAME LIKE 'Swatches' AND
        CONSTRAINT_NAME LIKE 'FK_Swatches_ProductStyleId'
) AND EXISTS (
    SELECT TABLE_NAME
    FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
    WHERE TABLE_SCHEMA LIKE 'visualization' AND
        TABLE_NAME LIKE 'SwatchesOptionChoices' AND
        CONSTRAINT_NAME LIKE 'PK_SwatchesOptionChoices_SwatchId_OptionChoiceId'
) AND EXISTS (
    SELECT TABLE_NAME
    FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
    WHERE TABLE_SCHEMA LIKE 'visualization' AND
        TABLE_NAME LIKE 'SwatchesOptionChoices' AND
        CONSTRAINT_NAME LIKE 'FK_SwatchesOptionChoices_OptionChoiceId'
) AND EXISTS (
    SELECT TABLE_NAME
    FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
    WHERE TABLE_SCHEMA LIKE 'visualization' AND
        TABLE_NAME LIKE 'SwatchesOptionChoices' AND
        CONSTRAINT_NAME LIKE 'FK_SwatchesOptionChoices_SwatchId'
) AND EXISTS (
    SELECT TABLE_NAME
    FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
    WHERE TABLE_SCHEMA LIKE 'visualization' AND
        TABLE_NAME LIKE 'Images' AND
        CONSTRAINT_NAME LIKE 'PK_Images_Id'
) AND (
    SELECT COUNT(name)
    FROM sys.procedures
    WHERE schema_id = SCHEMA_ID('dbo') AND name LIKE 'App_GetAdditionalSwatchInfo' OR schema_id = SCHEMA_ID('visualization')
) = 17
    BEGIN
		--  If schema is correct, commit the transaction
        COMMIT TRANSACTION Viz2019UpdateSchema;
        PRINT N'Transaction committed';
    END
ELSE
    BEGIN
		-- If the schema is not correct, rollback the transaction
        ROLLBACK TRANSACTION Viz2019UpdateSchema;
        PRINT N'Transaction NOT committed';
    END
GO

-- Verification
SELECT name, schema_id
FROM sys.tables
WHERE schema_id = SCHEMA_ID('visualization');

SELECT name, schema_id
FROM sys.procedures
WHERE schema_id = SCHEMA_ID('dbo') AND name LIKE 'App_GetAdditionalSwatchInfo' OR schema_id = SCHEMA_ID('visualization');

SELECT TABLE_CATALOG
    ,TABLE_SCHEMA
    ,TABLE_NAME
    ,COLUMN_NAME
    ,CONSTRAINT_CATALOG
    ,CONSTRAINT_SCHEMA
    ,CONSTRAINT_NAME
FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'visualization';
GO
