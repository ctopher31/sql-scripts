/* Pleated Update 2019 */
USE BrandSites;
GO

INSERT INTO visualization.ProductStyles (Id, Name, ProductLineId)
VALUES
(1307, '1" FashionPleat&reg;', 204),
(13081, '1" EvenPleat&reg;', 204),
(13082, '2" EvenPleat&reg;', 204);
GO

INSERT INTO visualization.OptionChoicesProductStyles (OptionChoiceId, ProductStyleId)
VALUES
(6, 1307), (6, 13081), (6, 13082),
(7, 1307), (7, 13081), (7, 13082),
(8, 1307), (8, 13081), (8, 13082),
(9, 1307), (9, 13081), (9, 13082),
(11, 1307), (11, 13081), (11, 13082),
(23, 1307), (23, 13081), (23, 13082),
(24, 1307), (24, 13081), (24, 13082),
(25, 1307), (25, 13081), (25, 13082);
GO

INSERT INTO visualization.Swatches (Id, ColorNumber, ColorName, Collection, ProductStyleId, ImageFileName)
VALUES
/* 1" FashionPleat */
('1307-3109', '3109', 'Abstract Gray', 'Sheer Linen', 1307, 'S_05_3109.jpg'),
('1307-3110', '3110', 'Surreal Stone', 'Sheer Linen', 1307, 'S_05_3110.jpg'),
('1307-3111', '3111', 'Chocolate Dream', 'Sheer Linen', 1307, 'S_05_3111.jpg'),
('1307-3101', '3101', 'White', 'Sheer Linen', 1307, 'S_05_3101.jpg'),
('1307-3102', '3102', 'Alabaster', 'Sheer Linen', 1307, 'S_05_3102.jpg'),
('1307-5315', '5315', 'Gray Glow', 'Geneva', 1307, 'S_05_5315.jpg'),
('1307-5316', '5316', 'Blue Calm', 'Geneva', 1307, 'S_05_5316.jpg'),
('1307-5301', '5301', 'Frost White', 'Geneva', 1307, 'S_05_5301.jpg'),
('1307-5314', '5314', 'Pearl Stone', 'Geneva', 1307, 'S_05_5314.jpg'),
('1307-5302', '5302', 'Mottled Sycamore', 'Geneva', 1307, 'S_05_5302.jpg'),
('1307-2408', '2408', 'Shimmery Tan', 'Allure', 1307, 'S_05_2408.jpg'),
('1307-2409', '2409', 'Savvy Gray', 'Allure', 1307, 'S_05_2409.jpg'),
('1307-2001', '2001', 'White', 'Allure', 1307, 'S_05_2001.jpg'),
('1307-2007', '2007', 'Silver Lining', 'Allure', 1307, 'S_05_2007.jpg'),
('1307-2002', '2002', 'Bone', 'Allure', 1307, 'S_05_2002.jpg'),
('1307-1153', '1153', 'Wisteria White', 'Tuvalu', 1307, 'S_05_1153.jpg'),
('1307-1154', '1154', 'White Dew', 'Tuvalu', 1307, 'S_05_1154.jpg'),
('1307-1155', '1155', 'Tenuous Sand', 'Tuvalu', 1307, 'S_05_1155.jpg'),
('1307-2760', '2760', 'Elegant Taupe', 'Eloquence', 1307, 'S_05_2760.jpg'),
('1307-2761', '2761', 'Nuanced Gray', 'Eloquence', 1307, 'S_05_2761.jpg'),
('1307-2762', '2762', 'Ethereal White', 'Eloquence', 1307, 'S_05_2762.jpg'),
('1307-2763', '2763', 'Delicate White', 'Eloquence', 1307, 'S_05_2763.jpg'),
('1307-1439', '1439', 'Lunar Light', 'Desert', 1307, 'S_05_1439.jpg'),
('1307-1444', '1444', 'Sugarcane', 'Desert', 1307, 'S_05_1444.jpg'),
('1307-1440', '1440', 'Shell', 'Desert', 1307, 'S_05_1440.jpg'),
('1307-1441', '1441', 'Natural', 'Desert', 1307, 'S_05_1441.jpg'),
('1307-1442', '1442', 'Strata', 'Desert', 1307, 'S_05_1442.jpg'),
('1307-1443', '1443', 'Clamshell', 'Desert', 1307, 'S_05_1443.jpg'),

/* 1" EvenPleat */
('13081-3109', '3109', 'Abstract Gray', 'Sheer Linen', 13081, 'S_05_3109.jpg'),
('13081-3110', '3110', 'Surreal Stone', 'Sheer Linen', 13081, 'S_05_3110.jpg'),
('13081-3111', '3111', 'Chocolate Dream', 'Sheer Linen', 13081, 'S_05_3111.jpg'),
('13081-3101', '3101', 'White', 'Sheer Linen', 13081, 'S_05_3101.jpg'),
('13081-3102', '3102', 'Alabaster', 'Sheer Linen', 13081, 'S_05_3102.jpg'),
('13081-5315', '5315', 'Gray Glow', 'Geneva', 13081, 'S_05_5315.jpg'),
('13081-5316', '5316', 'Blue Calm', 'Geneva', 13081, 'S_05_5316.jpg'),
('13081-5301', '5301', 'Frost White', 'Geneva', 13081, 'S_05_5301.jpg'),
('13081-5314', '5314', 'Pearl Stone', 'Geneva', 13081, 'S_05_5314.jpg'),
('13081-5302', '5302', 'Mottled Sycamore', 'Geneva', 13081, 'S_05_5302.jpg'),
('13081-2408', '2408', 'Shimmery Tan', 'Allure', 13081, 'S_05_2408.jpg'),
('13081-2409', '2409', 'Savvy Gray', 'Allure', 13081, 'S_05_2409.jpg'),
('13081-2001', '2001', 'White', 'Allure', 13081, 'S_05_2001.jpg'),
('13081-2007', '2007', 'Silver Lining', 'Allure', 13081, 'S_05_2007.jpg'),
('13081-2002', '2002', 'Bone', 'Allure', 13081, 'S_05_2002.jpg'),
('13081-3120', '3120', 'Haberdasher Gray', 'Debonair', 13081, 'S_05_3120.jpg'),
('13081-3121', '3121', 'Unexpected Taupe', 'Debonair', 13081, 'S_05_3121.jpg'),
('13081-3122', '3122', 'Natural White', 'Debonair', 13081, 'S_05_3122.jpg'),
('13081-1153', '1153', 'Wisteria White', 'Tuvalu', 13081, 'S_05_1153.jpg'),
('13081-1154', '1154', 'White Dew', 'Tuvalu', 13081, 'S_05_1154.jpg'),
('13081-1155', '1155', 'Tenuous Sand', 'Tuvalu', 13081, 'S_05_1155.jpg'),
('13081-2760', '2760', 'Elegant Taupe', 'Eloquence', 13081, 'S_05_2760.jpg'),
('13081-2761', '2761', 'Nuanced Gray', 'Eloquence', 13081, 'S_05_2761.jpg'),
('13081-2762', '2762', 'Ethereal White', 'Eloquence', 13081, 'S_05_2762.jpg'),
('13081-2763', '2763', 'Delicate White', 'Eloquence', 13081, 'S_05_2763.jpg'),
('13081-1439', '1439', 'Lunar Light', 'Desert', 13081, 'S_05_1439.jpg'),
('13081-1444', '1444', 'Sugarcane', 'Desert', 13081, 'S_05_1444.jpg'),
('13081-1440', '1440', 'Shell', 'Desert', 13081, 'S_05_1440.jpg'),
('13081-1441', '1441', 'Natural', 'Desert', 13081, 'S_05_1441.jpg'),
('13081-1442', '1442', 'Strata', 'Desert', 13081, 'S_05_1442.jpg'),
('13081-1443', '1443', 'Clamshell', 'Desert', 13081, 'S_05_1443.jpg'),
('13081-0653', '0653', 'White Mystic', 'Marquis', 13081, 'S_05_0653.jpg'),
('13081-0654', '0654', 'Gilded Age', 'Marquis', 13081, 'S_05_0654.jpg'),
('13081-0655', '0655', 'Victorian Age', 'Marquis', 13081, 'S_05_0655.jpg'),
('13081-0503', '0503', 'Winter Day', 'Grasscloth', 13081, 'S_05_0503.jpg'),
('13081-0500', '0500', 'Natural', 'Grasscloth', 13081, 'S_05_0500.jpg'),
('13081-0501', '0501', 'Boardwalk', 'Grasscloth', 13081, 'S_05_0501.jpg'),
('13081-0550', '0550', 'Safari', 'Grasscloth', 13081, 'S_05_0550.jpg'),
('13081-0502', '0502', 'Saddle', 'Grasscloth', 13081, 'S_05_0502.jpg'),
('13081-0504', '0504', 'Fence Post', 'Grasscloth', 13081, 'S_05_0504.jpg'),
('13081-2253', '2253', 'Radiant Moon', 'Prism', 13081, 'S_05_2253.jpg'),
('13081-2250', '2250', 'Sequin', 'Prism', 13081, 'S_05_2250.jpg'),
('13081-2252', '2252', 'Tinsel', 'Prism', 13081, 'S_05_2252.jpg'),
('13081-2251', '2251', 'Liquid Bronze', 'Prism', 13081, 'S_05_2251.jpg'),
('13081-4130', '4130', 'Navy Mosaic', 'Muse', 13081, 'S_05_4130.jpg'),
('13081-4131', '4131', 'Etched Taupe', 'Muse', 13081, 'S_05_4131.jpg'),
('13081-4132', '4132', 'Coastal Gray', 'Muse', 13081, 'S_05_4132.jpg'),
('13081-4133', '4133', 'Haven', 'Muse', 13081, 'S_05_4133.jpg'),
('13081-4162', '4162', 'Modern Sphere', 'Imperial', 13081, 'S_05_4162.jpg'),
('13081-4163', '4163', 'Tropical White', 'Imperial', 13081, 'S_05_4163.jpg'),
('13081-4164', '4164', 'White Impact', 'Imperial', 13081, 'S_05_4164.jpg'),
('13081-5700', '5700', 'Heavenly', 'Serendipity', 13081, 'S_05_5700.jpg'),
('13081-5705', '5705', 'Muted Tan', 'Serendipity', 13081, 'S_05_5705.jpg'),
('13081-5706', '5706', 'Greige Fusion', 'Serendipity', 13081, 'S_05_5706.jpg'),
('13081-5707', '5707', 'Stone Mountain', 'Serendipity', 13081, 'S_05_5707.jpg'),
('13081-5708', '5708', 'Bold Roast', 'Serendipity', 13081, 'S_05_5708.jpg'),

/* 2" EvenPleat */
('13082-3220', '3220', 'Haberdasher Gray', 'Debonair', 13082, 'S_05_3220.jpg'),
('13082-3221', '3221', 'Unexpected Taupe', 'Debonair', 13082, 'S_05_3221.jpg'),
('13082-3222', '3222', 'Natural White', 'Debonair', 13082, 'S_05_3222.jpg'),
('13082-1537', '1537', 'Sugarcane', 'Desert', 13082, 'S_05_1537.jpg'),
('13082-1539', '1539', 'Lunar Light', 'Desert', 13082, 'S_05_1539.jpg'),
('13082-1531', '1531', 'Shell', 'Desert', 13082, 'S_05_1531.jpg'),
('13082-1534', '1534', 'Natural', 'Desert', 13082, 'S_05_1534.jpg'),
('13082-1536', '1536', 'Strata', 'Desert', 13082, 'S_05_1536.jpg'),
('13082-1538', '1538', 'Clamshell', 'Desert', 13082, 'S_05_1538.jpg'),
('13082-3001', '3001', 'White Delight', 'Crossweave', 13082, 'S_05_3001.jpg'),
('13082-3008', '3008', 'Burnished Gold', 'Crossweave', 13082, 'S_05_3008.jpg'),
('13082-3000', '3000', 'Natural', 'Crossweave', 13082, 'S_05_3000.jpg'),
('13082-3009', '3009', 'Tahiti', 'Crossweave', 13082, 'S_05_3009.jpg'),
('13082-3003', '3003', 'Barley', 'Crossweave', 13082, 'S_05_3003.jpg'),
('13082-3002', '3002', 'Brick', 'Crossweave', 13082, 'S_05_3002.jpg'),
('13082-4551', '4551', 'White Mystic', 'Marquis', 13082, 'S_05_4551.jpg'),
('13082-4550', '4550', 'Gilded Age', 'Marquis', 13082, 'S_05_4550.jpg'),
('13082-4552', '4552', 'Victorian Age', 'Marquis', 13082, 'S_05_4552.jpg'),
('13082-2303', '2303', 'Winter Day', 'Grasscloth', 13082, 'S_05_2303.jpg'),
('13082-2300', '2300', 'Natural', 'Grasscloth', 13082, 'S_05_2300.jpg'),
('13082-2301', '2301', 'Boardwalk', 'Grasscloth', 13082, 'S_05_2301.jpg'),
('13082-2350', '2350', 'Safari', 'Grasscloth', 13082, 'S_05_2350.jpg'),
('13082-2302', '2302', 'Saddle', 'Grasscloth', 13082, 'S_05_2302.jpg'),
('13082-2304', '2304', 'Fence Post', 'Grasscloth', 13082, 'S_05_2304.jpg'),
('13082-4650', '4650', 'Sequin', 'Prism', 13082, 'S_05_4650.jpg'),
('13082-4653', '4653', 'Radiant Moon', 'Prism', 13082, 'S_05_4653.jpg'),
('13082-4652', '4652', 'Tinsel', 'Prism', 13082, 'S_05_4652.jpg'),
('13082-4651', '4651', 'Liquid Bronze', 'Prism', 13082, 'S_05_4651.jpg'),
('13082-5800', '5800', 'Heavenly', 'Serendipity', 13082, 'S_05_5800.jpg'),
('13082-5805', '5805', 'Muted Tan', 'Serendipity', 13082, 'S_05_5805.jpg'),
('13082-5806', '5806', 'Greige Fusion', 'Serendipity', 13082, 'S_05_5806.jpg'),
('13082-5807', '5807', 'Stone Mountain', 'Serendipity', 13082, 'S_05_5807.jpg'),
('13082-5808', '5808', 'Bold Roast', 'Serendipity', 13082, 'S_05_5808.jpg'),
('13082-2801', '2801', 'White', 'Sheer Linen', 13082, 'S_05_2801.jpg'),
('13082-2802', '2802', 'Alabaster', 'Sheer Linen', 13082, 'S_05_2802.jpg'),
('13082-2809', '2809', 'Abstract Gray', 'Sheer Linen', 13082, 'S_05_2809.jpg'),
('13082-2810', '2810', 'Surreal Stone', 'Sheer Linen', 13082, 'S_05_2810.jpg'),
('13082-2811', '2811', 'Chocolate Dream', 'Sheer Linen', 13082, 'S_05_2811.jpg'),
('13082-5001', '5001', 'Frost White', 'Geneva', 13082, 'S_05_5001.jpg'),
('13082-5014', '5014', 'Pearl Stone', 'Geneva', 13082, 'S_05_5014.jpg'),
('13082-5002', '5002', 'Mottled Sycamore', 'Geneva', 13082, 'S_05_5002.jpg'),
('13082-5015', '5015', 'Gray Glow', 'Geneva', 13082, 'S_05_5015.jpg'),
('13082-5016', '5016', 'Blue Calm', 'Geneva', 13082, 'S_05_5016.jpg');
GO

INSERT INTO visualization.SwatchesOptionChoices (SwatchId, OptionChoiceId)
VALUES
/* 1" FashionPleat */
('1307-3109', 9),
('1307-3110', 9),
('1307-3111', 9),
('1307-3101', 9),
('1307-3102', 9),
('1307-5315', 11),
('1307-5316', 11),
('1307-5301', 11),
('1307-5314', 11),
('1307-5302', 11),
('1307-2408', 11),
('1307-2409', 11),
('1307-2001', 11),
('1307-2007', 11),
('1307-2002', 11),
('1307-1153', 11),
('1307-1154', 11),
('1307-1155', 11),
('1307-2760', 11),
('1307-2761', 11),
('1307-2762', 11),
('1307-2763', 11),
('1307-1439', 11),
('1307-1444', 11),
('1307-1440', 11),
('1307-1441', 11),
('1307-1442', 11),
('1307-1443', 11),

/* 1" EvenPleat */
('13081-3109', 9),
('13081-3110', 9),
('13081-3111', 9),
('13081-3101', 9),
('13081-3102', 9),
('13081-5315', 11),
('13081-5316', 11),
('13081-5301', 11),
('13081-5314', 11),
('13081-5302', 11),
('13081-2408', 11),
('13081-2409', 11),
('13081-2001', 11),
('13081-2007', 11),
('13081-2002', 11),
('13081-3120', 11),
('13081-3121', 11),
('13081-3122', 11),
('13081-1153', 11),
('13081-1154', 11),
('13081-1155', 11),
('13081-2760', 11),
('13081-2761', 11),
('13081-2762', 11),
('13081-2763', 11),
('13081-1439', 11),
('13081-1444', 11),
('13081-1440', 11),
('13081-1441', 11),
('13081-1442', 11),
('13081-1443', 11),
('13081-0653', 11),
('13081-0654', 11),
('13081-0655', 11),
('13081-0503', 11),
('13081-0500', 11),
('13081-0501', 11),
('13081-0550', 11),
('13081-0502', 11),
('13081-0504', 11),
('13081-2253', 11),
('13081-2250', 11),
('13081-2252', 11),
('13081-2251', 11),
('13081-4130', 11),
('13081-4131', 11),
('13081-4132', 11),
('13081-4133', 11),
('13081-4162', 11),
('13081-4163', 11),
('13081-4164', 11),
('13081-5700', 9),
('13081-5705', 9),
('13081-5706', 9),
('13081-5707', 9),
('13081-5708', 9),

/* 2" EvenPleat */
('13082-3220', 11),
('13082-3221', 11),
('13082-3222', 11),
('13082-1537', 11),
('13082-1539', 11),
('13082-1531', 11),
('13082-1534', 11),
('13082-1536', 11),
('13082-1538', 11),
('13082-3001', 11),
('13082-3008', 11),
('13082-3000', 11),
('13082-3009', 11),
('13082-3003', 11),
('13082-3002', 11),
('13082-4551', 11),
('13082-4550', 11),
('13082-4552', 11),
('13082-2303', 11),
('13082-2300', 11),
('13082-2301', 11),
('13082-2350', 11),
('13082-2302', 11),
('13082-2304', 11),
('13082-4650', 11),
('13082-4653', 11),
('13082-4652', 11),
('13082-4651', 11),
('13082-5800', 9),
('13082-5805', 9),
('13082-5806', 9),
('13082-5807', 9),
('13082-5808', 9),
('13082-2801', 9),
('13082-2802', 9),
('13082-2809', 9),
('13082-2810', 9),
('13082-2811', 9),
('13082-5001', 11),
('13082-5014', 11),
('13082-5002', 11),
('13082-5015', 11),
('13082-5016', 11);
GO

-- Turn off outdated styles
UPDATE visualization.ProductStyles
SET ProductLineId = 1
WHERE Id = 768;
GO

UPDATE visualization.ProductStyles
SET ProductLineId = 1
WHERE Id = 7881;
GO

UPDATE visualization.ProductStyles
SET ProductLineId = 1
WHERE Id = 7882;
GO

-- Delete outdated styles and swatches
-- DELETE FROM visualization.SwatchesOptionChoices WHERE SwatchId Like '768-%';
-- DELETE FROM visualization.SwatchesOptionChoices WHERE SwatchId Like '7881-%';
-- DELETE FROM visualization.SwatchesOptionChoices WHERE SwatchId Like '7882-%';
-- GO

-- DELETE FROM visualization.Swatches WHERE Id Like '768-%';
-- DELETE FROM visualization.Swatches WHERE Id Like '7881-%';
-- DELETE FROM visualization.Swatches WHERE Id Like '7882-%';
-- GO

-- DELETE FROM visualization.OptionChoicesProductStyles WHERE ProductStyleId = 768;
-- DELETE FROM visualization.OptionChoicesProductStyles WHERE ProductStyleId = 7881;
-- DELETE FROM visualization.OptionChoicesProductStyles WHERE ProductStyleId = 7882;
-- GO

-- DELETE FROM visualization.ProductStyles WHERE Id = 768;
-- DELETE FROM visualization.ProductStyles WHERE Id = 7881;
-- DELETE FROM visualization.ProductStyles WHERE Id = 7882;
-- GO
