USE BrandSites;
GO

SELECT s.ColorNumber, 
	s.ColorName,
	s.CollectionName, 
	s.OrderInd,
	b.title AS Brand,  
	sc.SwatchCategoryName,
	st.title AS Style
	--cr.Id AS ColorRangeId, 
	--cr.Title AS ColorRange
FROM dbo.Swatches s
JOIN dbo.brands b ON b.id = s.BrandId
JOIN dbo.SwatchesToCategories stc ON stc.SwatchId = s.id
JOIN dbo.SwatchCategory sc ON sc.id = stc.SwatchCategoryId
JOIN dbo.styles st ON st.id = sc.styleID
--JOIN dbo.SwatchesToColorRanges soco ON soco.SwatchId = s.id
--JOIN dbo.ColorRange cr ON cr.Id = soco.ColorRangeId
WHERE s.OrderInd = 'V' AND (
	sc.styleID = 1306
	OR sc.styleID = 1307 
	OR sc.styleID = 1308
	OR sc.styleID = 1310
	OR sc.styleID = 1311
	OR sc.styleID = 1330
	OR sc.styleID = 1331
	OR sc.styleID = 1332
	OR sc.styleID = 1333
	OR sc.styleID = 1334
	OR sc.styleID = 1335
	OR sc.styleID = 1336
	OR sc.styleID = 1337
	OR sc.styleID = 1338
	OR sc.styleID = 1340
);
GO

SELECT *
FROM dbo.Swatches s
WHERE s.CollectionName LIKE '%Couture%' OR s.CollectionName LIKE '%Fanfare%';
GO

SELECT sc.id, sc.SwatchCategoryName, sc.styleID
FROM dbo.SwatchCategory sc
WHERE sc.styleID = 1306;
GO

SELECT sc.id, sc.SwatchCategoryName, sc.styleID
FROM dbo.SwatchCategory sc
WHERE sc.styleID = 1341;
GO

SELECT stc.SwatchCategoryId, stc.SwatchId, sc.SwatchCategoryName, sc.styleID
FROM dbo.SwatchesToCategories stc
JOIN dbo.SwatchCategory sc ON sc.id = stc.SwatchCategoryId
WHERE sc.styleID = 1310
ORDER BY SwatchCategoryId;

SELECT scr.SwatchId, scr.ColorRangeId, cr.Title, s.CollectionName, s.ColorName, s.ColorNumber
FROM dbo.SwatchesToColorRanges scr
JOIN dbo.ColorRange cr ON cr.id = scr.ColorRangeId
JOIN dbo.Swatches s ON s.id = scr.SwatchId
ORDER BY scr.SwatchId;

SELECT s.BrandId
--	, pgpl.ProductLineId
	, st.id AS StyleId
	, st.title
	, s.id AS SwatchId
	, s.CollectionName
	, s.ColorName
	, s.ColorNumber
	, sc.id AS SwatchCategoryId
	, sc.SwatchCategoryName
FROM dbo.Swatches s
JOIN dbo.SwatchesToColorRanges scr ON scr.SwatchId = s.id
JOIN dbo.ColorRange cr ON cr.id = scr.ColorRangeId
JOIN dbo.SwatchesToCategories stc ON stc.SwatchId = s.id
JOIN dbo.SwatchCategory sc ON sc.id = stc.SwatchCategoryId
JOIN dbo.styles st ON st.id = sc.styleID
JOIN dbo.ProgramStyles pgst ON pgst.StyleId = st.id
JOIN dbo.Program pg ON pg.Id = pgst.ProgramId
--JOIN dbo.ProgramProductLines pgpl ON pgpl.ProgramId = pg.Id
WHERE st.id = 1340;
--WHERE pg.Description LIKE '%BaliBlinds - NEW%'
--WHERE pgpl.ProductLineId = 1341;
GO

UPDATE s
SET s.BrandId = 3
FROM dbo.Swatches s
JOIN dbo.SwatchesToCategories stc ON stc.SwatchId = s.id
JOIN dbo.SwatchCategory sc ON sc.id = stc.SwatchCategoryId
WHERE sc.styleID = 1311;
GO

UPDATE s
SET s.OrderInd = 'V'
FROM dbo.Swatches s
JOIN dbo.SwatchesToCategories stc ON stc.SwatchId = s.id
JOIN dbo.SwatchCategory sc ON sc.id = stc.SwatchCategoryId
WHERE sc.styleID = 1311;
GO

UPDATE stc
SET stc.SwatchCategoryId = 6873
FROM dbo.SwatchesToCategories stc
JOIN dbo.Swatches s ON s.id = stc.SwatchId
WHERE s.id >= 4514 AND s.id <= 45540 AND (s.CollectionName LIKE '%Couture%' OR s.CollectionName LIKE '%Fanfare%');
GO

UPDATE s
SET s.DateDeleted = NULL
FROM dbo.Swatches s
JOIN dbo.SwatchesToCategories stc ON s.id = stc.SwatchId
WHERE s.id >= 4514 AND s.id <= 45540 AND (s.CollectionName LIKE '%Couture%' OR s.CollectionName LIKE '%Fanfare%');
GO

UPDATE stc
SET stc.SwatchCategoryId = 6870
FROM dbo.SwatchesToCategories stc
JOIN dbo.Swatches s ON s.id = stc.SwatchId
WHERE s.CollectionName LIKE '%Lumiere%' OR s.CollectionName LIKE '%Dupioni%';
GO

UPDATE stc
SET stc.SwatchCategoryId = 6871
FROM dbo.SwatchesToCategories stc
JOIN dbo.Swatches s ON s.id = stc.SwatchId
WHERE s.CollectionName LIKE '%Luxe%' AND stc.SwatchCategoryId = 6776;
GO

UPDATE stc
SET stc.SwatchCategoryId = 6872
FROM dbo.SwatchesToCategories stc
JOIN dbo.Swatches s ON s.id = stc.SwatchId
WHERE s.CollectionName LIKE '%Luxe%' AND stc.SwatchCategoryId = 6794;
GO

/* Builds swatches */
SELECT 
	2 AS BrandId
	, '05' AS ProductLineCode
	, s.Collection AS CollectionName
	, s.ColorName
	, s.ColorNumber
	, CURRENT_TIMESTAMP AS EffectiveInDate
	, DATEADD(year, 10, CURRENT_TIMESTAMP) AS EffectiveOutDate
	, 'O' AS OrderInd
	, s.ImageFileName + '.jpg' AS LargeImagePAth
	, 'R_05_' + s.ColorNumber AS SPSRenderImageName
	, '05' AS SwatchProductLineCode
	, s.ColorNumber AS SwatchColorNumber
	, CURRENT_TIMESTAMP AS createdOn
	, 'Y' AS Renderable
	, 0 AS Opacity
	, '05G_' + s.ColorNumber AS ItemNumber
	, oc.Name AS OptionName
	, ps.Name AS StyleName
FROM visualization.Swatches s
JOIN visualization.ProductStyles ps ON ps.Id = s.ProductStyleId
JOIN visualization.SwatchesOptionChoices soc ON soc.SwatchId = s.Id
JOIN visualization.OptionChoices oc ON oc.Id = soc.OptionChoiceId
--WHERE s.ProductStyleId = 7882 AND oc.Name LIKE '%Sheer%';
--WHERE s.ProductStyleId = 7882 AND oc.Name LIKE '%Light Filtering%';
WHERE s.ProductStyleId = 7882 AND oc.Name LIKE '%Room Darkening%';
GO

/* Builds swatches to categories */
SELECT 
	1835 AS SwatchCategoryId
	, s.Collection AS CollectionName
	, s.ColorName
	, s.ColorNumber
FROM visualization.Swatches s
JOIN visualization.ProductStyles ps ON ps.Id = s.ProductStyleId
JOIN visualization.SwatchesOptionChoices soc ON soc.SwatchId = s.Id
JOIN visualization.OptionChoices oc ON oc.Id = soc.OptionChoiceId
--WHERE s.ProductStyleId = 7882 AND oc.Name LIKE '%Sheer%';
--WHERE s.ProductStyleId = 7882 AND oc.Name LIKE '%Light Filtering%';
WHERE s.ProductStyleId = 7882 AND oc.Name LIKE '%Room Darkening%';
GO

/* build colors.json data */
SELECT sc.styleID AS StyleId, sc.id AS CategoryId, s.id AS SwatchId, cr.Id AS ColorRangeId
FROM dbo.Swatches s
JOIN dbo.SwatchesToCategories stc ON stc.SwatchId = s.id
JOIN dbo.SwatchCategory sc ON sc.id = stc.SwatchCategoryId
JOIN dbo.SwatchesToColorRanges soco ON soco.SwatchId = s.id
JOIN dbo.ColorRange cr ON cr.Id = soco.ColorRangeId 
WHERE sc.styleID = 1307 OR sc.styleID = 1308;
GO

select *
from dbo.swatches s
where s.ColorNumber = '0110'

INSERT INTO dbo.Swatches (BrandId, ProductLineCode, CollectionName, ColorName, ColorNumber, EffectiveInDate, EffectiveOutDate, OrderInd, LargeImagePath, SwatchProductLineCode, SwatchColorNumber, createdOn, Renderable, Opacity)
VALUES
(2, '06', 'Sanctuary', 'Sandpiper', '0112', CURRENT_TIMESTAMP, DATEADD(year, 10, CURRENT_TIMESTAMP), 'O', 'S_06_0112.jpg', '06', '0112', CURRENT_TIMESTAMP, 'Y', 0),
(2, '06', 'Sanctuary', 'Hushed Gray', '0113', CURRENT_TIMESTAMP, DATEADD(year, 10, CURRENT_TIMESTAMP), 'O', 'S_06_0113.jpg', '06', '0113', CURRENT_TIMESTAMP, 'Y', 0);
GO

INSERT INTO dbo.SwatchesToCategories (SwatchCategoryId, SwatchId)
VALUES
(6466, (SELECT MAX(id) FROM dbo.Swatches WHERE CollectionName LIKE 'Sanctuary' AND ColorNumber Like '0112' AND ColorName LIKE 'Sandpiper')),
(6466, (SELECT MAX(id) FROM dbo.Swatches WHERE CollectionName LIKE 'Sanctuary' AND ColorNumber Like '0113' AND ColorName LIKE 'Hushed Gray'));
GO




SELECT *
FROM dbo.ProgramStyles
WHERE ProgramId = 31



SELECT
	br.id AS BrandId
	,br.title AS Brand
	,pr.Id AS ProgramId
	,pr.Description AS Program
	,st.id AS StyleId
	,st.title Style
	,sc.id AS SwatchCategoryId
	,sc.SwatchCategoryName
	,s.id AS SwatchId
	,s.ProductLineCode
	,s.CollectionName
	,s.ColorName 
	,s.ColorNumber
	,s.SwatchColorNumber
	,s.SwatchProductLineCode
	,s.LargeImagePath
	,s.SPSRenderImageName
	,cr.Title AS ColorRange
FROM dbo.Swatches s
JOIN dbo.SwatchesToColorRanges scr ON scr.SwatchId = s.id
JOIN dbo.ColorRange cr ON cr.id = scr.ColorRangeId
JOIN dbo.SwatchesToCategories stc ON stc.SwatchId = s.id
JOIN dbo.SwatchCategory sc ON sc.id = stc.SwatchCategoryId
JOIN dbo.styles st ON st.id = sc.styleID
JOIN dbo.ProgramStyles ps ON ps.StyleId = st.id
JOIN dbo.Program pr ON pr.Id = ps.ProgramId
JOIN dbo.brands br ON br.id = st.BrandId
--WHERE ps.ProgramId = 36
ORDER BY StyleId;
GO



-- Test Data for visualization.Images
--INSERT INTO visualization.Images (OriginalUrl, EncodedUrl, ShortLink)
--VALUES
--('https://s7d4.scene7.com/is/image/SpringsWindowFashions?src=ir{SpringsWindowFashionsRender/solar-vignette?&obj=controls/cordless&show&src=R_14_47501&opac=97&obj=valances/contour&show&src=R_14_47501&obj=pulls/hem-grip&show}&wid=2400&hei=2400',	'0x9f12d0c6911734807531b123bce825d9', 'MQAwADAAMAAxAA=='),
--('https://s7d4.scene7.com/is/image/SpringsWindowFashions?src=ir{SpringsWindowFashionsRender/solar-vignette?&obj=controls/cordless&show&src=R_14_47504&opac=97&obj=valances/contour&show&src=R_14_47504&obj=pulls/hem-grip&show}&wid=2400&hei=2400', '0x7fbe513b518fc3e5d1b4d4027dff7f9f', 'MQAwADAAMAAyAA=='),
--('https://s7d4.scene7.com/is/image/SpringsWindowFashions?src=ir{SpringsWindowFashionsRender/roller-vignette?&obj=controls/cordless&show&src=R_14_11203&opac=95&obj=valances/contour&show&src=R_14_11203&obj=pulls/hem-grip&show}&wid=2400&hei=2400', '0x1d06e16d0954c43c5848f36d50ecde7f', 'MQAwADAAMAAzAA=='),
--('https://s7d4.scene7.com/is/image/SpringsWindowFashions?src=ir{SpringsWindowFashionsRender/solar-vignette?&obj=controls/cordless&show&src=R_14_47503&opac=97&obj=valances/contour&show&src=R_14_47503&obj=pulls/hem-grip&show}&wid=2400&hei=2400', '0xe3093d6c2cae68cabc7bf48ef098720d', 'MQAwADAAMAA0AA=='),
--('https://s7d4.scene7.com/is/image/SpringsWindowFashions?src=ir{SpringsWindowFashionsRender/cellular-vignette?&obj=3-8in-cellular-shades-controls/3-8in-standard-cordless&show&src=R_06_0901&opac=95}&wid=2400&hei=2400', '0x773b94a2660a0ec83d5971ce569d3d50', 'MQAwADAAMAA1AA=='),
--('https://s7d4.scene7.com/is/image/SpringsWindowFashions?src=ir{SpringsWindowFashionsRender/cellular-vignette?&obj=3-8in-cellular-shades-controls/3-8in-standard-cordless&show&src=R_06_0902&opac=95}&wid=2400&hei=2400', '0xbb2e06338f78e616c2994f06f696669e', 'MQAwADAAMAA2AA=='),
--('https://s7d4.scene7.com/is/image/SpringsWindowFashions?src=ir{SpringsWindowFashionsRender/cellular-vignette?&obj=3-8in-cellular-shades-controls/3-8in-standard-cordless&show&src=R_06_0970&opac=95}&wid=2400&hei=2400', '0xdab90a863588ee051bc50e1f306b9688', 'MQAwADAAMAA3AA==');
--GO


-- Bali Essentials
-- 2" Faux Wood
SELECT *
FROM dbo.SwatchCategory
WHERE styleID = 1314;
GO

-- Cellular
SELECT *
FROM dbo.SwatchCategory
WHERE styleID = 1315;
GO

-- 1" Premium Vinyl Horizontal
SELECT *
FROM dbo.SwatchCategory
WHERE styleID = 1316;
GO

-- 3-1/2" Vinyl Verticals
SELECT *
FROM dbo.SwatchCategory
WHERE styleID = 1317;
GO







