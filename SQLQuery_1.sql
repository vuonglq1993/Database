USE LapStore

INSERT INTO Model (ModelId, CatName, Brandname, ModelName)
VALUES
(1, N'Hàng mới', 'Dell', 'XPS 13'),
(2, N'Hàng mới', 'HP', 'Spectre x360'),
(3, N'Hàng mới', 'Apple', 'MacBook Air'),
(4, N'Hàng mới', 'Lenovo', 'ThinkPad X1'),
(5, N'Hàng mới', 'Asus', 'ZenBook 14'),
(6, N'Hàng cũ', 'Acer', 'Swift 3'),
(7, N'Hàng cũ', 'MSI', 'GF63 Thin'),
(8, N'Hàng cũ', 'Gigabyte', 'AORUS 15G'),
(9, N'Hàng cũ', 'Razer', 'Blade 15'),
(10, N'Hàng cũ', 'Huawei', 'MateBook X Pro'),
(11, N'Hàng mới', 'LG', 'Gram 17'),
(12, N'Hàng mới', 'Samsung', 'Galaxy Book Pro'),
(13, N'Hàng mới', 'Microsoft', 'Surface Laptop 4'),
(14, N'Hàng mới', 'Xiaomi', 'Mi Notebook Pro'),
(15, N'Hàng mới', 'Razer', 'Blade Stealth 13'),
(16, N'Hàng mới', 'Asus', 'ROG Flow Z13'),
(17, N'Hàng cũ', 'Dell', 'Inspiron 14'),
(18, N'Hàng cũ', 'HP', 'Envy 13'),
(19, N'Hàng cũ', 'Lenovo', 'Legion 5'),
(20, N'Hàng cũ', 'Apple', 'MacBook Pro 16');
GO

INSERT INTO ProductDetails (ProductDetailId, RAM, Graphic, CPU, Display, Types)
VALUES
(1, '8GB', 'Intel Iris Xe', 'Intel i5-1135G7', '13.4" 1920x1200', 'Laptop'),
(2, '16GB', 'NVIDIA GeForce MX330', 'Intel i7-1165G7', '13.3" 1920x1080', 'Laptop'),
(3, '8GB', 'Integrated', 'Apple M1', '13.3" 2560x1600', 'Laptop'),
(4, '16GB', 'Intel Iris Xe', 'Intel i7-1185G7', '14" 1920x1080', 'Laptop'),
(5, '16GB', 'NVIDIA GeForce MX250', 'Intel i7-10510U', '14" 1920x1080', 'Laptop'),
(6, '8GB', 'Intel UHD', 'Intel i5-1135G7', '14" 1920x1080', 'Laptop'),
(7, '8GB', 'NVIDIA GeForce GTX 1650', 'Intel i5-9300H', '15.6" 1920x1080', 'Laptop'),
(8, '16GB', 'NVIDIA GeForce RTX 3060', 'Intel i7-11800H', '15.6" 2560x1440', 'Laptop'),
(9, '16GB', 'NVIDIA GeForce RTX 3070', 'Intel i7-11800H', '15.6" 3840x2160', 'Laptop'),
(10, '16GB', 'Intel Iris Xe', 'Intel i7-11370H', '13.9" 3000x2000', 'Laptop'),
(11, '16GB', 'Intel Iris Xe', 'Intel i7-1165G7', '17" 2560x1600', 'Laptop'),
(12, '8GB', 'Intel Iris Xe', 'Intel i5-1135G7', '15.6" 1920x1080', 'Laptop'),
(13, '16GB', 'Intel Iris Xe', 'Intel i7-1185G7', '15" 2256x1504', 'Laptop'),
(14, '16GB', 'NVIDIA GeForce MX250', 'Intel i7-10510U', '15.6" 1920x1080', 'Laptop'),
(15, '8GB', 'Intel Iris Xe', 'Intel i7-1165G7', '13.3" 1920x1080', 'Laptop'),
(16, '16GB', 'NVIDIA GeForce RTX 3050', 'Intel i7-12650H', '13.4" 2560x1600', 'Laptop'),
(17, '8GB', 'Intel Iris Xe', 'Intel i5-1135G7', '14" 1920x1080', 'Laptop'),
(18, '16GB', 'NVIDIA GeForce MX330', 'Intel i7-1165G7', '13.3" 1920x1080', 'Laptop'),
(19, '16GB', 'NVIDIA GeForce GTX 1650', 'AMD Ryzen 7 5800H', '15.6" 1920x1080', 'Laptop'),
(20, '16GB', 'AMD Radeon Pro', 'Apple M1 Pro', '16" 3456x2234', 'Laptop');
GO

INSERT INTO Products (ProductId, ModelId, ProductName, ProductDetailsId, Stock, Price, PriceAfterDiscount, Waranty, Discount)
VALUES
(1, 1, 'Dell XPS 13', 1, 10, 28000.00, 28000.00 * (1 - 5.0 / 100), N'2 năm', 5.0),
(2, 2, 'HP Spectre x360', 2, 8, 32000.00, 32000.00 * (1 - 7.5 / 100), N'2 năm', 7.5),
(3, 3, 'MacBook Air', 3, 15, 25000.00, 25000.00 * (1 - 10.0 / 100), N'1 năm', 10.0),
(4, 4, 'ThinkPad X1', 4, 5, 29000.00, 29000.00 * (1 - 6.0 / 100), N'3 năm', 6.0),
(5, 5, 'ZenBook 14', 5, 12, 27000.00, 27000.00 * (1 - 8.0 / 100), N'2 năm', 8.0),
(6, 6, 'Acer Swift 3', 6, 14, 22000.00, 22000.00 * (1 - 6.5 / 100), N'2 năm', 6.5),
(7, 7, 'MSI GF63 Thin', 7, 9, 20000.00, 20000.00 * (1 - 7.0 / 100), N'1 năm', 7.0),
(8, 8, 'AORUS 15G', 8, 7, 35000.00, 35000.00 * (1 - 5.5 / 100), N'1 năm', 5.5),
(9, 9, 'Razer Blade 15', 9, 6, 45000.00, 45000.00 * (1 - 10.0 / 100), N'1 năm', 10.0),
(10, 10, 'MateBook X Pro', 10, 8, 26000.00, 26000.00 * (1 - 7.0 / 100), N'2 năm', 7.0),
(11, 11, 'LG Gram 17', 11, 5, 33000.00, 33000.00 * (1 - 8.0 / 100), N'2 năm', 8.0),
(12, 12, 'Galaxy Book Pro', 12, 10, 24000.00, 24000.00 * (1 - 6.0 / 100), N'1 năm', 6.0),
(13, 13, 'Surface Laptop 4', 13, 12, 27000.00, 27000.00 * (1 - 7.5 / 100), N'1 năm', 7.5),
(14, 14, 'Mi Notebook Pro', 14, 9, 25000.00, 25000.00 * (1 - 6.5 / 100), N'2 năm', 6.5),
(15, 15, 'Blade Stealth 13', 15, 7, 29000.00, 29000.00 * (1 - 8.0 / 100), N'1 năm', 8.0),
(16, 16, 'ROG Flow Z13', 16, 6, 32000.00, 32000.00 * (1 - 7.0 / 100), N'2 năm', 7.0),
(17, 17, 'Inspiron 14', 17, 11, 23000.00, 23000.00 * (1 - 6.0 / 100), N'2 năm', 6.0),
(18, 18, 'Envy 13', 18, 8, 21000.00, 21000.00 * (1 - 5.5 / 100), N'2 năm', 5.5),
(19, 19, 'Legion 5', 19, 10, 29000.00, 29000.00 * (1 - 8.0 / 100), N'2 năm', 8.0),
(20, 20, 'MacBook Pro 16', 20, 7, 45000.00, 45000.00 * (1 - 10.0 / 100), N'1 năm', 10.0);
GO

INSERT INTO District (DistrictId, CityName, DistrictName)
VALUES
(1, N'Hà Nội', N'Hoàn Kiếm'),
(2, N'Hà Nội', N'Cầu Giấy'),
(3, N'Hà Nội', N'Ba Đình'),
(4, N'Hồ Chí Minh', N'Quận 1'),
(5, N'Hồ Chí Minh', N'Quận 3'),
(6, N'Hồ Chí Minh', N'Quận 7'),
(7, N'Đà Nẵng', N'Hải Châu'),
(8, N'Đà Nẵng', N'Thanh Khê'),
(9, N'Hải Phòng', N'Ngô Quyền'),
(10, N'Hải Phòng', N'Hồng Bàng'),
(11, N'Nha Trang', N'Lộc Thọ'),
(12, N'Nha Trang', N'Vĩnh Hải'),
(13, N'Cần Thơ', N'Ninh Kiều'),
(14, N'Cần Thơ', N'Cái Răng'),
(15, N'Bình Dương', N'Thuận An'),
(16, N'Bình Dương', N'Dĩ An'),
(17, N'Vũng Tàu', N'TP Vũng Tàu'),
(18, N'Vũng Tàu', N'TP Bà Rịa'),
(19, N'Bắc Ninh', N'Bắc Ninh'),
(20, N'Hưng Yên', N'Hưng Yên');
GO

INSERT INTO Customer (CustomerID, CustomerFirstName, CustomerLastName, Phone, DistrictId, Addresss, Email)
VALUES
(1, N'Nguyễn Văn', N'An', '0901234567', 1, N'123 Phố Huế, Hoàn Kiếm', 'nguyenvana@example.com'),
(2, N'Trần Thị', N'Bình', '0912345678', 2, N'456 Đường Cầu Giấy, Cầu Giấy', 'tranthib@example.com'),
(3, N'Lê Văn', N'Căn', '0923456789', 3, N'789 Đội Cấn, Ba Đình', 'levanc@example.com'),
(4, N'Hoàng Thị', N'Dương', '0934567890', 4, N'321 Lê Lợi, Quận 1', 'hoangthid@example.com'),
(5, N'Phạm Văn', N'Cường', '0945678901', 5, N'654 Nguyễn Thị Minh Khai, Quận 3', 'phamvane@example.com'),
(6, N'Vũ Thị', N'Minh', '0956789012', 6, N'987 Đường Nguyễn Văn Linh, Quận 7', 'vuthif@example.com'),
(7, N'Ngô Văn', N'Tiến', '0967890123', 7, N'123 Đường 2/9, Hải Châu', 'ngovan@example.com'),
(8, N'Bùi Thị', N'Hường', '0978901234', 8, N'456 Nguyễn Văn Linh, Thanh Khê', 'buithih@example.com'),
(9, N'Đỗ Văn', N'Minh', '0989012345', 9, N'789 Đường Trần Phú, Ngô Quyền', 'dovan@example.com'),
(10, N'Lý Thị', N'Mầu', '0990123456', 10, N'321 Đường Hoàng Diệu, Hồng Bàng', 'lythij@example.com'),
(11, N'Nguyễn Thị', N'Giang', '0909876543', 11, N'123 Nguyễn Thị Minh Khai, Lộc Thọ', 'nguyenthik@example.com'),
(12, N'Hoàng Văn', N'Linh', '0918765432', 12, N'456 Lê Hồng Phong, Vĩnh Hải', 'hoangvanl@example.com'),
(13, N'Trần Văn', N'Mến', '0927654321', 13, N'789 Đường 30/4, Ninh Kiều', 'tranvanm@example.com'),
(14, N'Vũ Văn', N'Ngọc', '0936543210', 14, N'321 Đường Nguyễn Văn Cừ, Cái Răng', 'vuvan@example.com'),
(15, N'Lê Thị', N'Oanh', '0945432109', 15, N'654 Đường Nguyễn An Ninh, Thuận An', 'lethio@example.com'),
(16, N'Phạm Thị', N'Phương', '0954321098', 16, N'987 Đường ĐT743, Dĩ An', 'phamthip@example.com'),
(17, N'Nguyễn Văn', N'Quyết', '0963210987', 17, N'123 Đường Thống Nhất, TP Vũng Tàu', 'nguyenvanq@example.com'),
(18, N'Trần Thị', N'Riêng', '0972109876', 18, N'456 Đường 30/4, TP Bà Rịa', 'tranthir@example.com'),
(19, N'Vũ Văn', N'Sơn', '0981098765', 19, N'789 Đường Nguyễn Du, Bắc Ninh', 'vuvans@example.com'),
(20, N'Bùi Thị', N'Tuyết', '0990987654', 20, N'321 Đường Hưng Yên, Hưng Yên', 'buithit@example.com');
GO

INSERT INTO Reviews (RatingId, ProductId, CustomerId, Rating, Comment, Commentdate)
VALUES
(1, 1, 1, 5, N'Dell XPS 13 là một chiếc laptop tuyệt vời với thiết kế sang trọng và hiệu năng mạnh mẽ.', '2024-07-01'),
(2, 2, 2, 4, N'HP Spectre x360 có chất lượng xây dựng tốt, nhưng thời lượng pin có thể cải thiện hơn.', '2024-07-02'),
(3, 3, 3, 5, N'MacBook Air với chip M1 cực kỳ nhanh và hiệu quả, rất đáng mua.', '2024-07-03'),
(4, 4, 4, 4, N'ThinkPad X1 có hiệu năng tốt, nhưng giá hơi cao.', '2024-07-04'),
(5, 5, 5, 5, N'ZenBook 14 là một lựa chọn tuyệt vời với màn hình sắc nét và hiệu suất ổn định.', '2024-07-05'),
(6, 6, 6, 3, N'Acer Swift 3 có hiệu năng vừa phải, phù hợp cho các nhu cầu cơ bản.', '2024-07-06'),
(7, 7, 7, 4, N'MSI GF63 Thin có hiệu suất tốt cho game, nhưng thiết kế hơi cồng kềnh.', '2024-07-07'),
(8, 8, 8, 5, N'AORUS 15G là một laptop mạnh mẽ với hiệu năng chơi game xuất sắc.', '2024-07-08'),
(9, 9, 9, 5, N'Razer Blade 15 là một chiếc laptop gaming cao cấp với hiệu suất đỉnh cao.', '2024-07-09'),
(10, 10, 10, 4, N'MateBook X Pro có thiết kế đẹp và hiệu suất tốt, nhưng hơi đắt.', '2024-07-10'),
(11, 11, 11, 5, N'LG Gram 17 có màn hình lớn và trọng lượng nhẹ, rất phù hợp cho công việc và giải trí.', '2024-07-11'),
(12, 12, 12, 4, N'Galaxy Book Pro có màn hình đẹp và hiệu suất tốt, nhưng pin không lâu.', '2024-07-12'),
(13, 13, 13, 5, N'Surface Laptop 4 rất tiện lợi và có chất lượng xây dựng cao.', '2024-07-13'),
(14, 14, 14, 4, N'Mi Notebook Pro có hiệu suất ổn định, tuy nhiên không nổi bật về thiết kế.', '2024-07-14'),
(15, 15, 15, 5, N'Blade Stealth 13 là một lựa chọn tuyệt vời với thiết kế mỏng và hiệu năng mạnh mẽ.', '2024-07-15'),
(16, 16, 16, 4, N'ROG Flow Z13 rất phù hợp cho các nhu cầu gaming và đồ họa.', '2024-07-16'),
(17, 17, 17, 3, N'Inspiron 14 là một laptop giá cả phải chăng, nhưng hiệu năng không nổi bật.', '2024-07-17'),
(18, 18, 18, 4, N'Envy 13 có thiết kế đẹp và hiệu suất tốt, nhưng không có nhiều tính năng nổi bật.', '2024-07-18'),
(19, 19, 19, 5, N'Legion 5 có hiệu năng cao và khả năng chơi game tốt, đáng giá với số tiền bỏ ra.', '2024-07-19'),
(20, 20, 20, 4, N'MacBook Pro 16 có màn hình tuyệt đẹp và hiệu suất mạnh mẽ, nhưng giá hơi cao.', '2024-07-20');
GO

-- Hiển thị thông tin từ tất cả các bảng
SELECT 
    -- Từ bảng District
    d.DistrictId AS DistrictId, 
    d.CityName AS DistrictCityName, 
    d.DistrictName AS DistrictName,
    
    -- Từ bảng Customer
    c.CustomerID AS CustomerID, 
    c.CustomerFirstName AS CustomerFirstName, 
    c.CustomerLastName AS CustomerLastName, 
    c.Phone AS CustomerPhone, 
    c.Addresss AS CustomerAddress, 
    c.Email AS CustomerEmail,
    
    -- Từ bảng Model
    m.ModelId AS ModelId, 
    m.CatName AS ModelCatName, 
    m.Brandname AS ModelBrandName, 
    m.ModelName AS ModelName,
    
    -- Từ bảng ProductDetails
    pd.ProductDetailId AS ProductDetailId, 
    pd.RAM AS ProductRAM, 
    pd.Graphic AS ProductGraphic, 
    pd.CPU AS ProductCPU, 
    pd.Display AS ProductDisplay, 
    pd.Types AS ProductTypes,
    
    -- Từ bảng Products
    p.ProductId AS ProductId, 
    p.ProductName AS ProductName, 
    p.Stock AS ProductStock, 
    p.Price AS ProductPrice, 
    p.Waranty AS ProductWarranty, 
    p.Discount AS ProductDiscount,
    
    -- Từ bảng Reviews
    r.RatingId AS RatingId, 
    r.Rating AS Rating, 
    r.Comment AS ReviewComment, 
    r.Commentdate AS ReviewDate
    
FROM 
    Customer c
    -- Kết nối bảng District
    INNER JOIN District d ON c.DistrictId = d.DistrictId
    -- Kết nối bảng Products với bảng ProductDetails và Model
    INNER JOIN Products p ON p.ProductId IN (SELECT ProductId FROM Reviews WHERE CustomerId = c.CustomerID)
    INNER JOIN ProductDetails pd ON p.ProductDetailsId = pd.ProductDetailId
    INNER JOIN Model m ON p.ModelId = m.ModelId
    -- Kết nối bảng Reviews
    LEFT JOIN Reviews r ON p.ProductId = r.ProductId
GO

SELECT * FROM Customer
GO

SELECT 
    m.CatName AS CategoryName,
    COUNT(p.ProductId) AS ProductCount
FROM 
    Products p
JOIN 
    Model m ON p.ModelId = m.ModelId
GROUP BY 
    m.CatName;
GO

SELECT 
    p.ProductId,
    p.ProductName,
    p.Stock,
    p.Price,
    p.Waranty,
    p.Discount,
    pd.RAM,
    pd.Graphic,
    pd.CPU,
    pd.Display,
    pd.Types,
    m.CatName,
    m.BrandName,
    m.ModelName
FROM 
    Products p
JOIN 
    Model m ON p.ModelId = m.ModelId
JOIN 
    ProductDetails pd ON p.ProductDetailsId = pd.ProductDetailId;
GO

-- Liệt kê các danh mục sản phẩm
SELECT DISTINCT
    M.CatName
FROM
    Model M
ORDER BY
    M.CatName;
GO

-- Liệt kê các thương hiệu (Brand) theo danh mục (Category)
SELECT DISTINCT
    M.CatName,
    M.Brandname
FROM
    Model M
ORDER BY
    M.CatName,
    M.Brandname;
GO

-- Liệt kê các Model theo Category và Brand
SELECT DISTINCT
    M.CatName,
    M.Brandname,
    M.ModelName
FROM
    Model M
ORDER BY
    M.CatName,
    M.Brandname,
    M.ModelName;
GO

-- Liệt kê chi tiết sản phẩm theo Category, Brand, Model
SELECT
    M.CatName,
    M.Brandname,
    M.ModelName,
    P.ProductName,
    P.Price,
    P.PriceAfterDiscount,
    P.Stock,
    PD.RAM,
    PD.Graphic,
    PD.CPU,
    PD.Display,
    PD.Types
FROM
    Products P
JOIN
    Model M ON P.ModelId = M.ModelId
JOIN
    ProductDetails PD ON P.ProductDetailsId = PD.ProductDetailId
WHERE
    M.CatName = N'Hàng Mới' 
    AND M.Brandname = 'Dell'
    AND M.ModelName = 'XPS 13' 
ORDER BY
    P.ProductName;
GO

-- Truy vấn sản phẩm và phân loại giá theo giảm giá hoặc không giảm giá
SELECT
    ProductId,
    ProductName,
    Stock,
    Price,
    PriceAfterDiscount,
    Waranty,
    Discount,
    CASE 
        WHEN Discount > 0 THEN PriceAfterDiscount
        ELSE Price
    END AS EffectivePrice
FROM
    Products;
GO

-- Truy vấn sản phẩm có áp dụng giảm giá
SELECT
    ProductId,
    ProductName,
    Stock,
    Price,
    PriceAfterDiscount,
    Waranty,
    Discount
FROM
    Products
WHERE
    Discount > 0;
GO

SELECT
    ProductId,
    ProductName,
    Price,
    PriceAfterDiscount,
    Stock,
    Waranty,
    Discount
FROM
    Products
WHERE
    Price BETWEEN 20000.00 AND 30000.00
ORDER BY
    Price;
GO