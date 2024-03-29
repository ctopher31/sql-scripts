/* Cellular Pleated Update 2019 */
USE BrandSites;
GO

INSERT INTO visualization.ProductStyles (Id, Name, ProductLineId)
VALUES
(13061, '3/8" Single Cell CrystalPleat&trade;', 200),
(13062, '1/2" Double Cell CrystalPleat&trade;', 200),
(13063, '3/4" Single Cell CrystalPleat&trade;', 200),
(13064, '1 1/4" Single Cell CrystalPleat&trade;', 200);
GO

INSERT INTO visualization.OptionChoicesProductStyles (OptionChoiceId, ProductStyleId)
VALUES
(6, 13061), (6, 13062), (6, 13063), (6, 13064),
(7, 13061), (7, 13062), (7, 13063), (7, 13064),
(8, 13061), (8, 13062), (8, 13063),
(9, 13063),
(10, 13063),
(11, 13061), (11, 13062), (11, 13063), (11, 13064),
(13, 13061), (13, 13062), (13, 13063), (13, 13064);
GO

INSERT INTO visualization.Swatches (Id, ColorNumber, ColorName, Collection, ProductStyleId, ImageFileName)
VALUES
/* 3/8 Single Cell - 18 */
('13061-5200', '5200', 'White Radish', 'Discovery', 13061, 'S_06_5200.jpg'),
('13061-5201', '5201', 'Llama', 'Discovery', 13061, 'S_06_5201.jpg'),
('13061-5205', '5205', 'Pier', 'Discovery', 13061, 'S_06_5205.jpg'),
('13061-5210', '5210', 'Gingerroot', 'Discovery', 13061, 'S_06_5210.jpg'),
('13061-5214', '5214', 'Barnwood', 'Discovery', 13061, 'S_06_5214.jpg'),
('13061-5216', '5216', 'Elegant Dove', 'Discovery', 13061, 'S_06_5216.jpg'),
('13061-5800', '5800', 'White Radish', 'Endeavor', 13061, 'S_06_5800.jpg'),
('13061-5801', '5801', 'Llama', 'Endeavor', 13061, 'S_06_5801.jpg'),
('13061-5802', '5802', 'Thickened Cream', 'Endeavor', 13061, 'S_06_5802.jpg'),
('13061-5805', '5805', 'Pier', 'Endeavor', 13061, 'S_06_5805.jpg'),
('13061-5810', '5810', 'Gingerroot', 'Endeavor', 13061, 'S_06_5810.jpg'),
('13061-5813', '5813', 'Brown Squirrel', 'Endeavor', 13061, 'S_06_5813.jpg'),
('13061-5814', '5814', 'Barnwood', 'Endeavor', 13061, 'S_06_5814.jpg'),
('13061-5816', '5816', 'Elegant Dove', 'Endeavor', 13061, 'S_06_5816.jpg'),
('13061-5818', '5818', 'Soft Coal', 'Endeavor', 13061, 'S_06_5818.jpg'),
('13061-5824', '5824', 'Atlantic Frost', 'Endeavor', 13061, 'S_06_5824.jpg'),
('13061-5826', '5826', 'Canadian Tuxedo', 'Endeavor', 13061, 'S_06_5826.jpg'),
('13061-5831', '5831', 'Lime Chiffon', 'Endeavor', 13061, 'S_06_5831.jpg'),

/* 1/2 Double Cell - 91 */
('13062-1520', '1520', 'Liquid Silver', 'Splendor', 13062, 'S_06_1520.jpg'),
('13062-1521', '1521', 'Whisper White', 'Splendor', 13062, 'S_06_1521.jpg'),
('13062-1522', '1522', 'Freshwater Pearl', 'Splendor', 13062, 'S_06_1522.jpg'),
('13062-1523', '1523', 'Villa', 'Splendor', 13062, 'S_06_1523.jpg'),
('13062-1524', '1524', 'Irish Coffee', 'Splendor', 13062, 'S_06_1524.jpg'),
('13062-1525', '1525', 'Timberwolf Gray', 'Splendor', 13062, 'S_06_1525.jpg'),
('13062-1526', '1526', 'Natural Beige', 'Splendor', 13062, 'S_06_1526.jpg'),
('13062-1527', '1527', 'Quiet Gray', 'Splendor', 13062, 'S_06_1527.jpg'),
('13062-1528', '1528', 'Eggnog', 'Splendor', 13062, 'S_06_1528.jpg'),
('13062-1529', '1529', 'Gentle Tan', 'Splendor', 13062, 'S_06_1529.jpg'),
('13062-1530', '1530', 'Midnight Sky', 'Splendor', 13062, 'S_06_1530.jpg'),
('13062-1531', '1531', 'Harvested Wheat', 'Splendor', 13062, 'S_06_1531.jpg'),
('13062-1532', '1532', 'Shoreline Sand', 'Splendor', 13062, 'S_06_1532.jpg'),
('13062-1533', '1533', 'Arctic White', 'Splendor', 13062, 'S_06_1533.jpg'),
('13062-1534', '1534', 'Powder Gray', 'Splendor', 13062, 'S_06_1534.jpg'),
('13062-1535', '1535', 'Gray Dusk', 'Splendor', 13062, 'S_06_1535.jpg'),
('13062-1536', '1536', 'Champagne', 'Splendor', 13062, 'S_06_1536.jpg'),
('13062-1537', '1537', 'Caribou', 'Splendor', 13062, 'S_06_1537.jpg'),
('13062-1538', '1538', 'Gray Fedora', 'Splendor', 13062, 'S_06_1538.jpg'),
('13062-1539', '1539', 'River Delta', 'Splendor', 13062, 'S_06_1539.jpg'),
('13062-1540', '1540', 'Gentle Beige', 'Splendor', 13062, 'S_06_1540.jpg'),
('13062-1541', '1541', 'Gray Violet', 'Splendor', 13062, 'S_06_1541.jpg'),
('13062-1542', '1542', 'Tuscan Red', 'Splendor', 13062, 'S_06_1542.jpg'),
('13062-1543', '1543', 'Nostalgic Beige', 'Splendor', 13062, 'S_06_1543.jpg'),
('13062-1544', '1544', 'Sweetwater Sage', 'Splendor', 13062, 'S_06_1544.jpg'),
('13062-1545', '1545', 'Shell White', 'Splendor', 13062, 'S_06_1545.jpg'),
('13062-1547', '1547', 'Rich Burgundy', 'Splendor', 13062, 'S_06_1547.jpg'),
('13062-1548', '1548', 'Light Azure', 'Splendor', 13062, 'S_06_1548.jpg'),
('13062-1549', '1549', 'Blue Breeze', 'Splendor', 13062, 'S_06_1549.jpg'),
('13062-1550', '1550', 'Pink Rose', 'Splendor', 13062, 'S_06_1550.jpg'),
('13062-1551', '1551', 'Navy Charm', 'Splendor', 13062, 'S_06_1551.jpg'),
('13062-1552', '1552', 'Seascape', 'Splendor', 13062, 'S_06_1552.jpg'),
('13062-1553', '1553', 'Smoky Quartz', 'Splendor', 13062, 'S_06_1553.jpg'),
('13062-1554', '1554', 'Gray Mystique', 'Splendor', 13062, 'S_06_1554.jpg'),
('13062-1555', '1555', 'Golden Wheat', 'Splendor', 13062, 'S_06_1555.jpg'),
('13062-1556', '1556', 'Endless Summer', 'Splendor', 13062, 'S_06_1556.jpg'),
('13062-1557', '1557', 'Coastal Nuance', 'Splendor', 13062, 'S_06_1557.jpg'),
('13062-1559', '1559', 'Sculpture Gray', 'Splendor', 13062, 'S_06_1559.jpg'),
('13062-1560', '1560', 'Dark Taupe', 'Splendor', 13062, 'S_06_1560.jpg'),
('13062-1561', '1561', 'London Skies ', 'Splendor', 13062, 'S_06_1561.jpg'),
('13062-1562', '1562', 'Cool Amethyst', 'Splendor', 13062, 'S_06_1562.jpg'),
('13062-1563', '1563', 'Tonal Taupe', 'Splendor', 13062, 'S_06_1563.jpg'),
('13062-1564', '1564', 'Peacock Plume', 'Splendor', 13062, 'S_06_1564.jpg'),
('13062-1565', '1565', 'Chocolate Cupcake', 'Splendor', 13062, 'S_06_1565.jpg'),
('13062-1567', '1567', 'Elusive Gray', 'Splendor', 13062, 'S_06_1567.jpg'),
('13062-1568', '1568', 'River Stone', 'Splendor', 13062, 'S_06_1568.jpg'),
('13062-1569', '1569', 'Aqua Glow', 'Splendor', 13062, 'S_06_1569.jpg'),
('13062-1570', '1570', 'Umber', 'Splendor', 13062, 'S_06_1570.jpg'),
('13062-1571', '1571', 'Sandpiper', 'Splendor', 13062, 'S_06_1571.jpg'),
('13062-1572', '1572', 'Cornerstone', 'Splendor', 13062, 'S_06_1572.jpg'),
('13062-1573', '1573', 'Hushed Gray', 'Splendor', 13062, 'S_06_1573.jpg'),
('13062-1440', '1440', 'Liquid Silver', 'Sanctuary', 13062, 'S_06_1440.jpg'),
('13062-1441', '1441', 'Whisper White', 'Sanctuary', 13062, 'S_06_1441.jpg'),
('13062-1442', '1442', 'Freshwater Pearl', 'Sanctuary', 13062, 'S_06_1442.jpg'),
('13062-1443', '1443', 'Villa', 'Sanctuary', 13062, 'S_06_1443.jpg'),
('13062-1444', '1444', 'Irish Coffee', 'Sanctuary', 13062, 'S_06_1444.jpg'),
('13062-1445', '1445', 'Timberwolf Gray', 'Sanctuary', 13062, 'S_06_1445.jpg'),
('13062-1446', '1446', 'Eggnog', 'Sanctuary', 13062, 'S_06_1446.jpg'),
('13062-1447', '1447', 'Gentle Tan', 'Sanctuary', 13062, 'S_06_1447.jpg'),
('13062-1448', '1448', 'Midnight Sky', 'Sanctuary', 13062, 'S_06_1448.jpg'),
('13062-1449', '1449', 'Harvested Wheat', 'Sanctuary', 13062, 'S_06_1449.jpg'),
('13062-1450', '1450', 'Shoreline Sand', 'Sanctuary', 13062, 'S_06_1450.jpg'),
('13062-1451', '1451', 'Arctic White', 'Sanctuary', 13062, 'S_06_1451.jpg'),
('13062-1452', '1452', 'Powder Gray', 'Sanctuary', 13062, 'S_06_1452.jpg'),
('13062-1453', '1453', 'Champagne', 'Sanctuary', 13062, 'S_06_1453.jpg'),
('13062-1454', '1454', 'Caribou', 'Sanctuary', 13062, 'S_06_1454.jpg'),
('13062-1455', '1455', 'Gray Fedora', 'Sanctuary', 13062, 'S_06_1455.jpg'),
('13062-1456', '1456', 'River Delta', 'Sanctuary', 13062, 'S_06_1456.jpg'),
('13062-1457', '1457', 'Gentle Beige', 'Sanctuary', 13062, 'S_06_1457.jpg'),
('13062-1458', '1458', 'Tuscan Red', 'Sanctuary', 13062, 'S_06_1458.jpg'),
('13062-1459', '1459', 'Nostalgic Beige', 'Sanctuary', 13062, 'S_06_1459.jpg'),
('13062-1460', '1460', 'Sweetwater Sage', 'Sanctuary', 13062, 'S_06_1460.jpg'),
('13062-1461', '1461', 'Shell White', 'Sanctuary', 13062, 'S_06_1461.jpg'),
('13062-1462', '1462', 'Rich Burgundy', 'Sanctuary', 13062, 'S_06_1462.jpg'),
('13062-1463', '1463', 'Light Azure', 'Sanctuary', 13062, 'S_06_1463.jpg'),
('13062-1464', '1464', 'Blue Breeze', 'Sanctuary', 13062, 'S_06_1464.jpg'),
('13062-1465', '1465', 'Pink Rose', 'Sanctuary', 13062, 'S_06_1465.jpg'),
('13062-1466', '1466', 'Navy Charm', 'Sanctuary', 13062, 'S_06_1466.jpg'),
('13062-1467', '1467', 'Seascape', 'Sanctuary', 13062, 'S_06_1467.jpg'),
('13062-1468', '1468', 'Smoky Quartz', 'Sanctuary', 13062, 'S_06_1468.jpg'),
('13062-1469', '1469', 'Gray Mystique', 'Sanctuary', 13062, 'S_06_1469.jpg'),
('13062-1470', '1470', 'Golden Wheat', 'Sanctuary', 13062, 'S_06_1470.jpg'),
('13062-1471', '1471', 'Sculpture Gray', 'Sanctuary', 13062, 'S_06_1471.jpg'),
('13062-1472', '1472', 'Dark Taupe', 'Sanctuary', 13062, 'S_06_1472.jpg'),
('13062-1473', '1473', 'Cool Amethyst', 'Sanctuary', 13062, 'S_06_1473.jpg'),
('13062-1474', '1474', 'Elusive Gray', 'Sanctuary', 13062, 'S_06_1474.jpg'),
('13062-1475', '1475', 'River Stone', 'Sanctuary', 13062, 'S_06_1475.jpg'),
('13062-1476', '1476', 'Umber', 'Sanctuary', 13062, 'S_06_1476.jpg'),
('13062-1477', '1477', 'Sandpiper', 'Sanctuary', 13062, 'S_06_1477.jpg'),
('13062-1478', '1478', 'Cornerstone', 'Sanctuary', 13062, 'S_06_1478.jpg'),
('13062-1479', '1479', 'Hushed Gray', 'Sanctuary', 13062, 'S_06_1479.jpg'),

/* 3/4 Single Cell -152 */
('13063-1320', '1320', 'Liquid Silver', 'Splendor', 13063, 'S_06_1320.jpg'),
('13063-1321', '1321', 'Whisper White', 'Splendor', 13063, 'S_06_1321.jpg'),
('13063-1322', '1322', 'Freshwater Pearl', 'Splendor', 13063, 'S_06_1322.jpg'),
('13063-1323', '1323', 'Villa', 'Splendor', 13063, 'S_06_1323.jpg'),
('13063-1324', '1324', 'Irish Coffee', 'Splendor', 13063, 'S_06_1324.jpg'),
('13063-1325', '1325', 'Timberwolf Gray', 'Splendor', 13063, 'S_06_1325.jpg'),
('13063-1326', '1326', 'Natural Beige', 'Splendor', 13063, 'S_06_1326.jpg'),
('13063-1327', '1327', 'Quiet Gray', 'Splendor', 13063, 'S_06_1327.jpg'),
('13063-1328', '1328', 'Eggnog', 'Splendor', 13063, 'S_06_1328.jpg'),
('13063-1329', '1329', 'Gentle Tan', 'Splendor', 13063, 'S_06_1329.jpg'),
('13063-1330', '1330', 'Midnight Sky', 'Splendor', 13063, 'S_06_1330.jpg'),
('13063-1331', '1331', 'Harvested Wheat', 'Splendor', 13063, 'S_06_1331.jpg'),
('13063-1332', '1332', 'Shoreline Sand', 'Splendor', 13063, 'S_06_1332.jpg'),
('13063-1333', '1333', 'Arctic White', 'Splendor', 13063, 'S_06_1333.jpg'),
('13063-1334', '1334', 'Powder Gray', 'Splendor', 13063, 'S_06_1334.jpg'),
('13063-1335', '1335', 'Gray Dusk', 'Splendor', 13063, 'S_06_1335.jpg'),
('13063-1336', '1336', 'Champagne', 'Splendor', 13063, 'S_06_1336.jpg'),
('13063-1337', '1337', 'Caribou', 'Splendor', 13063, 'S_06_1337.jpg'),
('13063-1338', '1338', 'Gray Fedora', 'Splendor', 13063, 'S_06_1338.jpg'),
('13063-1339', '1339', 'River Delta', 'Splendor', 13063, 'S_06_1339.jpg'),
('13063-1340', '1340', 'Gentle Beige', 'Splendor', 13063, 'S_06_1340.jpg'),
('13063-1341', '1341', 'Gray Violet', 'Splendor', 13063, 'S_06_1341.jpg'),
('13063-1342', '1342', 'Tuscan Red', 'Splendor', 13063, 'S_06_1342.jpg'),
('13063-1343', '1343', 'Nostalgic Beige', 'Splendor', 13063, 'S_06_1343.jpg'),
('13063-1344', '1344', 'Sweetwater Sage', 'Splendor', 13063, 'S_06_1344.jpg'),
('13063-1345', '1345', 'Shell White', 'Splendor', 13063, 'S_06_1345.jpg'),
('13063-1347', '1347', 'Rich Burgundy', 'Splendor', 13063, 'S_06_1347.jpg'),
('13063-1348', '1348', 'Light Azure', 'Splendor', 13063, 'S_06_1348.jpg'),
('13063-1349', '1349', 'Blue Breeze', 'Splendor', 13063, 'S_06_1349.jpg'),
('13063-1350', '1350', 'Pink Rose', 'Splendor', 13063, 'S_06_1350.jpg'),
('13063-1351', '1351', 'Navy Charm', 'Splendor', 13063, 'S_06_1351.jpg'),
('13063-1352', '1352', 'Seascape', 'Splendor', 13063, 'S_06_1352.jpg'),
('13063-1353', '1353', 'Smoky Quartz', 'Splendor', 13063, 'S_06_1353.jpg'),
('13063-1354', '1354', 'Gray Mystique', 'Splendor', 13063, 'S_06_1354.jpg'),
('13063-1355', '1355', 'Golden Wheat', 'Splendor', 13063, 'S_06_1355.jpg'),
('13063-1356', '1356', 'Endless Summer', 'Splendor', 13063, 'S_06_1356.jpg'),
('13063-1357', '1357', 'Coastal Nuance', 'Splendor', 13063, 'S_06_1357.jpg'),
('13063-1359', '1359', 'Sculpture Gray', 'Splendor', 13063, 'S_06_1359.jpg'),
('13063-1360', '1360', 'Dark Taupe', 'Splendor', 13063, 'S_06_1360.jpg'),
('13063-1361', '1361', 'London Skies ', 'Splendor', 13063, 'S_06_1361.jpg'),
('13063-1362', '1362', 'Cool Amethyst', 'Splendor', 13063, 'S_06_1362.jpg'),
('13063-1363', '1363', 'Tonal Taupe', 'Splendor', 13063, 'S_06_1363.jpg'),
('13063-1364', '1364', 'Peacock Plume', 'Splendor', 13063, 'S_06_1364.jpg'),
('13063-1365', '1365', 'Chocolate Cupcake', 'Splendor', 13063, 'S_06_1365.jpg'),
('13063-1367', '1367', 'Elusive Gray', 'Splendor', 13063, 'S_06_1367.jpg'),
('13063-1368', '1368', 'River Stone', 'Splendor', 13063, 'S_06_1368.jpg'),
('13063-1369', '1369', 'Aqua Glow', 'Splendor', 13063, 'S_06_1369.jpg'),
('13063-1370', '1370', 'Umber', 'Splendor', 13063, 'S_06_1370.jpg'),
('13063-1371', '1371', 'Sandpiper', 'Splendor', 13063, 'S_06_1371.jpg'),
('13063-1372', '1372', 'Cornerstone', 'Splendor', 13063, 'S_06_1372.jpg'),
('13063-1373', '1373', 'Hushed Gray', 'Splendor', 13063, 'S_06_1373.jpg'),
('13063-1240', '1240', 'Liquid Silver', 'Sanctuary', 13063, 'S_06_1240.jpg'),
('13063-1241', '1241', 'Whisper White', 'Sanctuary', 13063, 'S_06_1241.jpg'),
('13063-1242', '1242', 'Freshwater Pearl', 'Sanctuary', 13063, 'S_06_1242.jpg'),
('13063-1243', '1243', 'Villa', 'Sanctuary', 13063, 'S_06_1243.jpg'),
('13063-1244', '1244', 'Irish Coffee', 'Sanctuary', 13063, 'S_06_1244.jpg'),
('13063-1245', '1245', 'Timberwolf Gray', 'Sanctuary', 13063, 'S_06_1245.jpg'),
('13063-1246', '1246', 'Eggnog', 'Sanctuary', 13063, 'S_06_1246.jpg'),
('13063-1247', '1247', 'Gentle Tan', 'Sanctuary', 13063, 'S_06_1247.jpg'),
('13063-1248', '1248', 'Midnight Sky', 'Sanctuary', 13063, 'S_06_1248.jpg'),
('13063-1249', '1249', 'Harvested Wheat', 'Sanctuary', 13063, 'S_06_1249.jpg'),
('13063-1250', '1250', 'Shoreline Sand', 'Sanctuary', 13063, 'S_06_1250.jpg'),
('13063-1251', '1251', 'Arctic White', 'Sanctuary', 13063, 'S_06_1251.jpg'),
('13063-1252', '1252', 'Powder Gray', 'Sanctuary', 13063, 'S_06_1252.jpg'),
('13063-1253', '1253', 'Champagne', 'Sanctuary', 13063, 'S_06_1253.jpg'),
('13063-1254', '1254', 'Caribou', 'Sanctuary', 13063, 'S_06_1254.jpg'),
('13063-1255', '1255', 'Gray Fedora', 'Sanctuary', 13063, 'S_06_1255.jpg'),
('13063-1256', '1256', 'River Delta', 'Sanctuary', 13063, 'S_06_1256.jpg'),
('13063-1257', '1257', 'Gentle Beige', 'Sanctuary', 13063, 'S_06_1257.jpg'),
('13063-1258', '1258', 'Tuscan Red', 'Sanctuary', 13063, 'S_06_1258.jpg'),
('13063-1259', '1259', 'Nostalgic Beige', 'Sanctuary', 13063, 'S_06_1259.jpg'),
('13063-1260', '1260', 'Sweetwater Sage', 'Sanctuary', 13063, 'S_06_1260.jpg'),
('13063-1261', '1261', 'Shell White', 'Sanctuary', 13063, 'S_06_1261.jpg'),
('13063-1262', '1262', 'Rich Burgundy', 'Sanctuary', 13063, 'S_06_1262.jpg'),
('13063-1263', '1263', 'Light Azure', 'Sanctuary', 13063, 'S_06_1263.jpg'),
('13063-1264', '1264', 'Blue Breeze', 'Sanctuary', 13063, 'S_06_1264.jpg'),
('13063-1265', '1265', 'Pink Rose', 'Sanctuary', 13063, 'S_06_1265.jpg'),
('13063-1266', '1266', 'Navy Charm', 'Sanctuary', 13063, 'S_06_1266.jpg'),
('13063-1267', '1267', 'Seascape', 'Sanctuary', 13063, 'S_06_1267.jpg'),
('13063-1268', '1268', 'Smoky Quartz', 'Sanctuary', 13063, 'S_06_1268.jpg'),
('13063-1269', '1269', 'Gray Mystique', 'Sanctuary', 13063, 'S_06_1269.jpg'),
('13063-1270', '1270', 'Golden Wheat', 'Sanctuary', 13063, 'S_06_1270.jpg'),
('13063-1271', '1271', 'Sculpture Gray', 'Sanctuary', 13063, 'S_06_1271.jpg'),
('13063-1272', '1272', 'Dark Taupe', 'Sanctuary', 13063, 'S_06_1272.jpg'),
('13063-1273', '1273', 'Cool Amethyst', 'Sanctuary', 13063, 'S_06_1273.jpg'),
('13063-1274', '1274', 'Elusive Gray', 'Sanctuary', 13063, 'S_06_1274.jpg'),
('13063-1275', '1275', 'River Stone', 'Sanctuary', 13063, 'S_06_1275.jpg'),
('13063-1276', '1276', 'Umber', 'Sanctuary', 13063, 'S_06_1276.jpg'),
('13063-1277', '1277', 'Sandpiper', 'Sanctuary', 13063, 'S_06_1277.jpg'),
('13063-1278', '1278', 'Cornerstone', 'Sanctuary', 13063, 'S_06_1278.jpg'),
('13063-1279', '1279', 'Hushed Gray', 'Sanctuary', 13063, 'S_06_1279.jpg'),
('13063-0370', '0370', 'Atlantic Frost', 'Endeavor', 13063, 'S_06_0370.jpg'),
('13063-0371', '0371', 'Barnwood', 'Endeavor', 13063, 'S_06_0371.jpg'),
('13063-0372', '0372', 'Brown Squirrel', 'Endeavor', 13063, 'S_06_0372.jpg'),
('13063-0373', '0373', 'Canadian Tuxedo', 'Endeavor', 13063, 'S_06_0373.jpg'),
('13063-0374', '0374', 'Elegant Dove', 'Endeavor', 13063, 'S_06_0374.jpg'),
('13063-0375', '0375', 'Gingerroot', 'Endeavor', 13063, 'S_06_0375.jpg'),
('13063-0376', '0376', 'Lime Chiffon', 'Endeavor', 13063, 'S_06_0376.jpg'),
('13063-0377', '0377', 'Llama', 'Endeavor', 13063, 'S_06_0377.jpg'),
('13063-0378', '0378', 'Pier', 'Endeavor', 13063, 'S_06_0378.jpg'),
('13063-0379', '0379', 'Soft Coal', 'Endeavor', 13063, 'S_06_0379.jpg'),
('13063-0380', '0380', 'Thickened Cream', 'Endeavor', 13063, 'S_06_0380.jpg'),
('13063-0381', '0381', 'White Radish', 'Endeavor', 13063, 'S_06_0381.jpg'),
('13063-0190', '0190', 'Barnwood', 'Discovery', 13063, 'S_06_0190.jpg'),
('13063-0191', '0191', 'Elegant Dove', 'Discovery', 13063, 'S_06_0191.jpg'),
('13063-0192', '0192', 'Gingerroot', 'Discovery', 13063, 'S_06_0192.jpg'),
('13063-0193', '0193', 'Llama', 'Discovery', 13063, 'S_06_0193.jpg'),
('13063-0194', '0194', 'Pier', 'Discovery', 13063, 'S_06_0194.jpg'),
('13063-0195', '0195', 'White Radish', 'Discovery', 13063, 'S_06_0195.jpg'),
('13063-0130', '0130', 'Feather White', 'Couture', 13063, 'S_06_0130.jpg'),
('13063-0131', '0131', 'Heron Plume', 'Couture', 13063, 'S_06_0131.jpg'),
('13063-0133', '0133', 'Noble Pewter', 'Couture', 13063, 'S_06_0133.jpg'),
('13063-0134', '0134', 'Jute', 'Couture', 13063, 'S_06_0134.jpg'),
('13063-0135', '0135', 'Peaceful Gray', 'Couture', 13063, 'S_06_0135.jpg'),
('13063-0642', '0642', 'Cinnamon Spice', 'Valletta', 13063, 'S_06_0642.jpg'),
('13063-0643', '0643', 'Crisp Carbon', 'Valletta', 13063, 'S_06_0643.jpg'),
('13063-2855', '2855', 'Adirondack', 'Valletta', 13063, 'S_06_2855.jpg'),
('13063-2858', '2858', 'Atlantic Frost', 'Valletta', 13063, 'S_06_2858.jpg'),
('13063-2851', '2851', 'Coconut Cream', 'Valletta', 13063, 'S_06_2851.jpg'),
('13063-2852', '2852', 'Manila', 'Valletta', 13063, 'S_06_2852.jpg'),
('13063-2850', '2850', 'Simply White', 'Valletta', 13063, 'S_06_2850.jpg'),
('13063-2854', '2854', 'Spring Fawn', 'Valletta', 13063, 'S_06_2854.jpg'),
('13063-2857', '2857', 'Trevi', 'Valletta', 13063, 'S_06_2857.jpg'),
('13063-2856', '2856', 'Walnut Shell', 'Valletta', 13063, 'S_06_2856.jpg'),
('13063-0590', '0590', 'Beige Influence', 'Prestige', 13063, 'S_06_0590.jpg'),
('13063-0591', '0591', 'Sophisticated Stone', 'Prestige', 13063, 'S_06_0591.jpg'),
('13063-0592', '0592', 'Refined Flax', 'Prestige', 13063, 'S_06_0592.jpg'),
('13063-0593', '0593', 'Pale Pebble', 'Prestige', 13063, 'S_06_0593.jpg'),
('13063-0594', '0594', 'Gray Juniper', 'Prestige', 13063, 'S_06_0594.jpg'),
('13063-0610', '0610', 'Gray Granite', 'Montage', 13063, 'S_06_0610.jpg'),
('13063-0611', '0611', 'Cultivated Khaki', 'Montage', 13063, 'S_06_0611.jpg'),
('13063-0612', '0612', 'Gray Moon', 'Montage', 13063, 'S_06_0612.jpg'),
('13063-0613', '0613', 'Chroma Gray', 'Montage', 13063, 'S_06_0613.jpg'),
('13063-0614', '0614', 'Gray Hues', 'Montage', 13063, 'S_06_0614.jpg'),
('13063-0620', '0620', 'Genteel Beige', 'Enchantment', 13063, 'S_06_0620.jpg'),
('13063-0621', '0621', 'Regal Gray', 'Enchantment', 13063, 'S_06_0621.jpg'),
('13063-0622', '0622', 'Silver Shadow', 'Enchantment', 13063, 'S_06_0622.jpg'),
('13063-0623', '0623', 'Glacial Gray', 'Enchantment', 13063, 'S_06_0623.jpg'),
('13063-0624', '0624', 'Ridged Sand', 'Enchantment', 13063, 'S_06_0624.jpg'),
('13063-0690', '0690', 'Golden Brioche', 'Fanfare', 13063, 'S_06_0690.jpg'),
('13063-0691', '0691', 'Cityscape', 'Fanfare', 13063, 'S_06_0691.jpg'),
('13063-0692', '0692', 'Cosmic Light', 'Fanfare', 13063, 'S_06_0692.jpg'),
('13063-0693', '0693', 'Distinguished Gray', 'Fanfare', 13063, 'S_06_0693.jpg'),
('13063-0694', '0694', 'Antiqued Khaki', 'Fanfare', 13063, 'S_06_0694.jpg'),
('13063-2916', '2916', 'Adirondack', 'Scroll FR', 13063, 'S_06_2916.jpg'),
('13063-2914', '2914', 'Manila', 'Scroll FR', 13063, 'S_06_2914.jpg'),
('13063-2901', '2901', 'Simply White', 'Scroll FR', 13063, 'S_06_2901.jpg'),
('13063-2915', '2915', 'Spring Fawn', 'Scroll FR', 13063, 'S_06_2915.jpg'),
('13063-2918', '2918', 'Trevi', 'Scroll FR', 13063, 'S_06_2918.jpg'),
('13063-2152', '2152', 'Almond', 'Simply Sheer', 13063, 'S_06_2152.jpg'),
('13063-2154', '2154', 'Mocha', 'Simply Sheer', 13063, 'S_06_2154.jpg'),
('13063-2150', '2150', 'Whisper', 'Simply Sheer', 13063, 'S_06_2150.jpg'),

/* 1 1/4 Single Cell - 14 */
('13064-0120', '0120', 'Liquid Silver', 'Splendor', 13064, 'S_06_0120.jpg'),
('13064-0121', '0121', 'Whisper White', 'Splendor', 13064, 'S_06_0121.jpg'),
('13064-0122', '0122', 'Shell White', 'Splendor', 13064, 'S_06_0122.jpg'),
('13064-0123', '0123', 'Sandpiper', 'Splendor', 13064, 'S_06_0123.jpg'),
('13064-0124', '0124', 'Cornerstone', 'Splendor', 13064, 'S_06_0124.jpg'),
('13064-0125', '0125', 'Hushed Gray', 'Splendor', 13064, 'S_06_0125.jpg'),
('13064-0110', '0110', 'Whisper White', 'Sanctuary', 13064, 'S_06_0110.jpg'),
('13064-0111', '0111', 'Shell White', 'Sanctuary', 13064, 'S_06_0111.jpg'),
('13064-0112', '0112', 'Sandpiper', 'Sanctuary', 13064, 'S_06_0112.jpg'),
('13064-0113', '0113', 'Hushed Gray', 'Sanctuary', 13064, 'S_06_0113.jpg'),
('13064-0660', '0660', 'Simply White', 'Valletta', 13064, 'S_06_0660.jpg'),
('13064-0661', '0661', 'Trevi', 'Valletta', 13064, 'S_06_0661.jpg'),
('13064-0662', '0662', 'Coconut Cream', 'Valletta', 13064, 'S_06_0662.jpg'),
('13064-0663', '0663', 'Manila', 'Valletta', 13064, 'S_06_0663.jpg');
GO

INSERT INTO visualization.SwatchesOptionChoices (SwatchId, OptionChoiceId)
VALUES
/* 3/8 Single Cell - 18 */
('13061-5200', 13),
('13061-5201', 13),
('13061-5205', 13),
('13061-5210', 13),
('13061-5214', 13),
('13061-5216', 13),
('13061-5800', 11),
('13061-5801', 11),
('13061-5802', 11),
('13061-5805', 11),
('13061-5810', 11),
('13061-5813', 11),
('13061-5814', 11),
('13061-5816', 11),
('13061-5818', 11),
('13061-5824', 11),
('13061-5826', 11),
('13061-5831', 11),

/* 1/2 Double Cell - 91 */
('13062-1520', 11),
('13062-1521', 11),
('13062-1522', 11),
('13062-1523', 11),
('13062-1524', 11),
('13062-1525', 11),
('13062-1526', 11),
('13062-1527', 11),
('13062-1528', 11),
('13062-1529', 11),
('13062-1530', 11),
('13062-1531', 11),
('13062-1532', 11),
('13062-1533', 11),
('13062-1534', 11),
('13062-1535', 11),
('13062-1536', 11),
('13062-1537', 11),
('13062-1538', 11),
('13062-1539', 11),
('13062-1540', 11),
('13062-1541', 11),
('13062-1542', 11),
('13062-1543', 11),
('13062-1544', 11),
('13062-1545', 11),
('13062-1547', 11),
('13062-1548', 11),
('13062-1549', 11),
('13062-1550', 11),
('13062-1551', 11),
('13062-1552', 11),
('13062-1553', 11),
('13062-1554', 11),
('13062-1555', 11),
('13062-1556', 11),
('13062-1557', 11),
('13062-1559', 11),
('13062-1560', 11),
('13062-1561', 11),
('13062-1562', 11),
('13062-1563', 11),
('13062-1564', 11),
('13062-1565', 11),
('13062-1567', 11),
('13062-1568', 11),
('13062-1569', 11),
('13062-1570', 11),
('13062-1571', 11),
('13062-1572', 11),
('13062-1573', 11),
('13062-1440', 13),
('13062-1441', 13),
('13062-1442', 13),
('13062-1443', 13),
('13062-1444', 13),
('13062-1445', 13),
('13062-1446', 13),
('13062-1447', 13),
('13062-1448', 13),
('13062-1449', 13),
('13062-1450', 13),
('13062-1451', 13),
('13062-1452', 13),
('13062-1453', 13),
('13062-1454', 13),
('13062-1455', 13),
('13062-1456', 13),
('13062-1457', 13),
('13062-1458', 13),
('13062-1459', 13),
('13062-1460', 13),
('13062-1461', 13),
('13062-1462', 13),
('13062-1463', 13),
('13062-1464', 13),
('13062-1465', 13),
('13062-1466', 13),
('13062-1467', 13),
('13062-1468', 13),
('13062-1469', 13),
('13062-1470', 13),
('13062-1471', 13),
('13062-1472', 13),
('13062-1473', 13),
('13062-1474', 13),
('13062-1475', 13),
('13062-1476', 13),
('13062-1477', 13),
('13062-1478', 13),
('13062-1479', 13),

/* 3/4 Single Cell - 152 */
('13063-1320', 11),
('13063-1321', 11),
('13063-1322', 11),
('13063-1323', 11),
('13063-1324', 11),
('13063-1325', 11),
('13063-1326', 11),
('13063-1327', 11),
('13063-1328', 11),
('13063-1329', 11),
('13063-1330', 11),
('13063-1331', 11),
('13063-1332', 11),
('13063-1333', 11),
('13063-1334', 11),
('13063-1335', 11),
('13063-1336', 11),
('13063-1337', 11),
('13063-1338', 11),
('13063-1339', 11),
('13063-1340', 11),
('13063-1341', 11),
('13063-1342', 11),
('13063-1343', 11),
('13063-1344', 11),
('13063-1345', 11),
('13063-1347', 11),
('13063-1348', 11),
('13063-1349', 11),
('13063-1350', 11),
('13063-1351', 11),
('13063-1352', 11),
('13063-1353', 11),
('13063-1354', 11),
('13063-1355', 11),
('13063-1356', 11),
('13063-1357', 11),
('13063-1359', 11),
('13063-1360', 11),
('13063-1361', 11),
('13063-1362', 11),
('13063-1363', 11),
('13063-1364', 11),
('13063-1365', 11),
('13063-1367', 11),
('13063-1368', 11),
('13063-1369', 11),
('13063-1370', 11),
('13063-1371', 11),
('13063-1372', 11),
('13063-1373', 11),
('13063-1240', 13),
('13063-1241', 13),
('13063-1242', 13),
('13063-1243', 13),
('13063-1244', 13),
('13063-1245', 13),
('13063-1246', 13),
('13063-1247', 13),
('13063-1248', 13),
('13063-1249', 13),
('13063-1250', 13),
('13063-1251', 13),
('13063-1252', 13),
('13063-1253', 13),
('13063-1254', 13),
('13063-1255', 13),
('13063-1256', 13),
('13063-1257', 13),
('13063-1258', 13),
('13063-1259', 13),
('13063-1260', 13),
('13063-1261', 13),
('13063-1262', 13),
('13063-1263', 13),
('13063-1264', 13),
('13063-1265', 13),
('13063-1266', 13),
('13063-1267', 13),
('13063-1268', 13),
('13063-1269', 13),
('13063-1270', 13),
('13063-1271', 13),
('13063-1272', 13),
('13063-1273', 13),
('13063-1274', 13),
('13063-1275', 13),
('13063-1276', 13),
('13063-1277', 13),
('13063-1278', 13),
('13063-1279', 13),
('13063-0370', 11),
('13063-0371', 11),
('13063-0372', 11),
('13063-0373', 11),
('13063-0374', 11),
('13063-0375', 11),
('13063-0376', 11),
('13063-0377', 11),
('13063-0378', 11),
('13063-0379', 11),
('13063-0380', 11),
('13063-0381', 11),
('13063-0190', 13),
('13063-0191', 13),
('13063-0192', 13),
('13063-0193', 13),
('13063-0194', 13),
('13063-0195', 13),
('13063-0130', 10),
('13063-0131', 10),
('13063-0133', 10),
('13063-0134', 10),
('13063-0135', 10),
('13063-0642', 11),
('13063-0643', 11),
('13063-2855', 11),
('13063-2858', 11),
('13063-2851', 11),
('13063-2852', 11),
('13063-2850', 11),
('13063-2854', 11),
('13063-2857', 11),
('13063-2856', 11),
('13063-0590', 11),
('13063-0591', 11),
('13063-0592', 11),
('13063-0593', 11),
('13063-0594', 11),
('13063-0610', 11),
('13063-0611', 11),
('13063-0612', 11),
('13063-0613', 11),
('13063-0614', 11),
('13063-0620', 11),
('13063-0621', 11),
('13063-0622', 11),
('13063-0623', 11),
('13063-0624', 11),
('13063-0690', 10),
('13063-0691', 10),
('13063-0692', 10),
('13063-0693', 10),
('13063-0694', 10),
('13063-2916', 11),
('13063-2914', 11),
('13063-2901', 11),
('13063-2915', 11),
('13063-2918', 11),
('13063-2152', 9),
('13063-2154', 9),
('13063-2150', 9),

/* 1 1/4 Single Cell - 14 */
('13064-0120', 11),
('13064-0121', 11),
('13064-0122', 11),
('13064-0123', 11),
('13064-0124', 11),
('13064-0125', 11),
('13064-0110', 13),
('13064-0111', 13),
('13064-0112', 13),
('13064-0113', 13),
('13064-0660', 11),
('13064-0661', 11),
('13064-0662', 11),
('13064-0663', 11);
GO

-- Turn off outdated styles
UPDATE visualization.ProductStyles
SET ProductLineId = 1
WHERE Id = 7641;
GO

UPDATE visualization.ProductStyles
SET ProductLineId = 1
WHERE Id = 7642;
GO

UPDATE visualization.ProductStyles
SET ProductLineId = 1
WHERE Id = 7643;
GO

-- Delete outdated styles and swatches
-- DELETE FROM visualization.SwatchesOptionChoices WHERE SwatchId Like '7641-%';
-- DELETE FROM visualization.SwatchesOptionChoices WHERE SwatchId Like '7642-%';
-- DELETE FROM visualization.SwatchesOptionChoices WHERE SwatchId Like '7643-%';
-- GO

-- DELETE FROM visualization.Swatches WHERE Id Like '7641-%';
-- DELETE FROM visualization.Swatches WHERE Id Like '7642-%';
-- DELETE FROM visualization.Swatches WHERE Id Like '7643-%';
-- GO

-- DELETE FROM visualization.OptionChoicesProductStyles WHERE ProductStyleId = 7641;
-- DELETE FROM visualization.OptionChoicesProductStyles WHERE ProductStyleId = 7642;
-- DELETE FROM visualization.OptionChoicesProductStyles WHERE ProductStyleId = 7643;
-- GO

-- DELETE FROM visualization.ProductStyles WHERE Id = 7641;
-- DELETE FROM visualization.ProductStyles WHERE Id = 7642;
-- DELETE FROM visualization.ProductStyles WHERE Id = 7643;
-- GO
