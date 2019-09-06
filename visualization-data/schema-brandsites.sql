USE BrandSites
GO

CREATE TABLE dbo.brands (
    id int IDENTITY(1,1) NOT NULL,
    title varchar(100) NULL,
    description text NULL,
    createdOn datetime NULL,
    active bit NULL,
    BrandCode nchar(1) NULL,
    CONSTRAINT PK_brands PRIMARY KEY CLUSTERED (id),
);
GO

CREATE TABLE dbo.Microsite(
    MicrositeName varchar(50) NOT NULL,
    DisplayOrderEntry char(1) NULL,
    DisplaySwatchEntry char(1) NULL,
    ShipToAccount char(6) NULL,
    brandID int NULL,
    createdOn datetime NULL,
    ProgramId int NULL,
    Title varchar(100) NULL,
    AlaskaHawaiiShipToAccount char(6) NULL,
    CanadaShipToAccount char(6) NULL,
    ProductProgramId int NULL,
    CONSTRAINT PK_Microsite PRIMARY KEY CLUSTERED (MicrositeName),
);
GO

CREATE TABLE dbo.Program(
    Id int IDENTITY(1,1) NOT NULL,
    Description varchar(30) NOT NULL,
    brandID int NULL,
    CatalogName varchar(15) NULL,
    HighLevelCategoryName varchar(20) NULL,
    CONSTRAINT PK_Program PRIMARY KEY CLUSTERED (id),
);
GO

CREATE TABLE dbo.productLines(
    id int IDENTITY(1,1) NOT NULL,
    title varchar(100) NULL,
    description text NULL,
    largeImagePath varchar(255) NULL,
    createdOn datetime NULL,
    active bit NULL,
    brandID int NULL,
    metaData text NULL,
    metaDataDescription text NULL,
    AvailableInVirtualDec char(1) NULL,
    VirtDecVignetteId int NULL,
    ProductLineGroup varchar(10) NULL,
    HtmlTitle nvarchar(100) NULL,
    MicrositeOrderingLink nvarchar(150) NULL,
    LargeImagePath2 nvarchar(255) NULL,
    HelpFileLinkName nvarchar(50) NULL,
    HelpFileName nvarchar(150) NULL,
    PricingComment nvarchar(max) NULL,
    ProductLineComment nvarchar(max) NULL,
    CIAssortmentCheckBoxID int NULL,
    CIAssortmentGroupByID int NULL,
    CINoShowGrayCheckBoxes nchar(1) NULL,
    CILiteratureUseOnly nchar(1) NULL,
    CIPricingCommentCA nvarchar(max) NULL,
    CssColor nvarchar(100) NULL,
    ColorCoordinationImage nvarchar(255) NULL,
    ColorCoordinationDescription text NULL,
    ParentCatalogCategory varchar(20) NULL,
    OrderInd nchar(1) NULL,
    StylesFilterLabel varchar(80) NULL,
    SwatchCategoriesFilterLabel varchar(80) NULL,
    FeaturedIndicator char(1) NULL,
    FeaturedDescription text NULL,
    FeaturedHeaderLine text NULL,
    ProductGroupCode char(1) NULL,
    ValueProductIndicator char(1) NULL,
    DateLastMaintained datetime NULL,
    ProductImageCode varchar(10) NULL,
    ShortDescription nvarchar(max) NULL,
    CONSTRAINT PK_productLines PRIMARY KEY CLUSTERED (id),
);
GO

CREATE TABLE dbo.styles(
    id int IDENTITY(1,1) NOT NULL,
    title nvarchar(100) NULL,
    smallImagePath nvarchar(150) NULL,
    primaryImagePath nvarchar(150) NULL,
    createdOn datetime NULL,
    active bit NULL,
    metaData ntext NULL,
    metaDataDescription ntext NULL,
    BrandId int NULL,
    ProductLineCode nchar(10) NULL,
    Model nchar(15) NULL,
    AllowOrderEntry nchar(1) NULL,
    HighlightComment nvarchar(250) NULL,
    BlindOrShade nchar(1) NULL,
    Specifications ntext NULL,
    ProgramId int NULL,
    VignetteGroupName nvarchar(100) NULL,
    AvailableInVirtualDec nchar(1) NULL,
    VirtDecVignetteId int NULL,
    Opacity int NULL,
    HtmlTitle nvarchar(100) NULL,
    MicrositeOrderingLink nvarchar(150) NULL,
    ShortTitle nvarchar(100) NULL,
    CINoShowGrayCheckBox nchar(1) NULL,
    CatalogCategory varchar(20) NULL,
    FrenchTitle nvarchar(100) NULL,
    DateLastMaintained datetime NULL,
    StyleImageCode varchar(10) NULL,
    StartingPrice decimal(6, 2) NULL,
    RotateWidenSwatchAsset nchar(1) NULL,
    CONSTRAINT PK_styles PRIMARY KEY CLUSTERED (id),
);
GO

CREATE TABLE dbo.ProgramProductLines(
    ProgramId int NOT NULL,
    ProductLineId int NOT NULL,
    DisplayOrder int NULL,
    DateLastMaintained datetime NULL,
    CONSTRAINT PK_ProgramProductLines PRIMARY KEY CLUSTERED 
    (
        ProgramId,
        ProductLineId
    ),
);
GO

CREATE TABLE dbo.ProgramStyles(
    ProgramId int NOT NULL,
    StyleId int NOT NULL,
    DateLastMaintained datetime NULL,
    CONSTRAINT PK_ProgramStyles PRIMARY KEY CLUSTERED 
    (
        ProgramId,
        StyleId
    ),
);
GO

CREATE TABLE dbo.ColorRange(
    Id int IDENTITY(1,1) NOT NULL,
    Title varchar(30) NOT NULL,
    DisplayOrder int NOT NULL,
    ImageName varchar(100) NULL,
    CssColor nvarchar(20) NULL,
 CONSTRAINT PK_ColorRange PRIMARY KEY CLUSTERED (Id),
);
GO
