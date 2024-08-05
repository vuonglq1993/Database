USE LapStore;
GO

-- Insert data into Orderrs table
INSERT INTO Orderrs (OrderId, CustomerId, OrderDate, Statuss, TotalAmount)
VALUES
(1, 1, '2024-07-01', N'Đang xử lý', 28000.00),
(2, 2, '2024-07-02', N'Hoàn thành', 32000.00),
(3, 3, '2024-07-03', N'Hoàn thành', 25000.00),
(4, 4, '2024-07-04', N'Đang xử lý', 29000.00),
(5, 5, '2024-07-05', N'Hoàn thành', 27000.00),
(6, 6, '2024-07-06', N'Đã hủy', 22000.00),
(7, 7, '2024-07-07', N'Đang xử lý', 20000.00),
(8, 8, '2024-07-08', N'Hoàn thành', 35000.00),
(9, 9, '2024-07-09', N'Hoàn thành', 45000.00),
(10, 10, '2024-07-10', N'Đang xử lý', 26000.00),
(11, 11, '2024-07-11', N'Hoàn thành', 33000.00),
(12, 12, '2024-07-12', N'Đã hủy', 24000.00),
(13, 13, '2024-07-13', N'Hoàn thành', 27000.00),
(14, 14, '2024-07-14', N'Đang xử lý', 25000.00),
(15, 15, '2024-07-15', N'Hoàn thành', 29000.00),
(16, 16, '2024-07-16', N'Đã hủy', 32000.00),
(17, 17, '2024-07-17', N'Hoàn thành', 23000.00),
(18, 18, '2024-07-18', N'Đang xử lý', 21000.00),
(19, 19, '2024-07-19', N'Hoàn thành', 29000.00),
(20, 20, '2024-07-20', N'Hoàn thành', 45000.00);
GO

-- Insert data into Voucher table
INSERT INTO Voucher (VoucherId, VoucherName, VoucherRate, VoucherExpires)
VALUES
(1, N'Giảm giá 5%', 5.0, '2024-12-31'),
(2, N'Giảm giá 7.5%', 7.5, '2024-11-30'),
(3, N'Giảm giá 10%', 10.0, '2024-10-31'),
(4, N'Giảm giá 15%', 15.0, '2024-09-30'),
(5, N'Giảm giá 20%', 20.0, '2024-08-31'),
(6, N'Giảm giá 25%', 25.0, '2024-07-31'),
(7, N'Giảm giá 30%', 30.0, '2024-06-30'),
(8, N'Giảm giá 35%', 35.0, '2024-05-31'),
(9, N'Giảm giá 40%', 40.0, '2024-04-30'),
(10, N'Giảm giá 45%', 45.0, '2024-03-31'),
(11, N'Giảm giá 50%', 50.0, '2024-02-29'),
(12, N'Giảm giá 55%', 55.0, '2024-01-31'),
(13, N'Giảm giá 60%', 60.0, '2023-12-31'),
(14, N'Giảm giá 65%', 65.0, '2023-11-30'),
(15, N'Giảm giá 70%', 70.0, '2023-10-31'),
(16, N'Giảm giá 75%', 75.0, '2023-09-30'),
(17, N'Giảm giá 80%', 80.0, '2023-08-31'),
(18, N'Giảm giá 85%', 85.0, '2023-07-31'),
(19, N'Giảm giá 90%', 90.0, '2023-06-30'),
(20, N'Giảm giá 95%', 95.0, '2023-05-31');
GO

-- Insert data into Store table
INSERT INTO Store (StoreId, StoreName, StoreAddress)
VALUES
(1, N'Store Hà Nội', N'123 Phố Huế, Hoàn Kiếm, Hà Nội'),
(2, N'Store Hà Nội', N'456 Đường Cầu Giấy, Cầu Giấy, Hà Nội'),
(3, N'Store Hà Nội', N'789 Đội Cấn, Ba Đình, Hà Nội'),
(4, N'Store Hồ Chí Minh', N'321 Lê Lợi, Quận 1, Hồ Chí Minh'),
(5, N'Store Hồ Chí Minh', N'654 Nguyễn Thị Minh Khai, Quận 3, Hồ Chí Minh'),
(6, N'Store Hồ Chí Minh', N'987 Đường Nguyễn Văn Linh, Quận 7, Hồ Chí Minh'),
(7, N'Store Đà Nẵng', N'123 Đường 2/9, Hải Châu, Đà Nẵng'),
(8, N'Store Đà Nẵng', N'456 Nguyễn Văn Linh, Thanh Khê, Đà Nẵng'),
(9, N'Store Hải Phòng', N'789 Đường Trần Phú, Ngô Quyền, Hải Phòng'),
(10, N'Store Hải Phòng', N'321 Đường Hoàng Diệu, Hồng Bàng, Hải Phòng'),
(11, N'Store Nha Trang', N'123 Nguyễn Thị Minh Khai, Lộc Thọ, Nha Trang'),
(12, N'Store Nha Trang', N'456 Lê Hồng Phong, Vĩnh Hải, Nha Trang'),
(13, N'Store Cần Thơ', N'789 Đường 30/4, Ninh Kiều, Cần Thơ'),
(14, N'Store Cần Thơ', N'321 Đường Nguyễn Văn Cừ, Cái Răng, Cần Thơ'),
(15, N'Store Bình Dương', N'654 Đường Nguyễn An Ninh, Thuận An, Bình Dương'),
(16, N'Store Bình Dương', N'987 Đường ĐT743, Dĩ An, Bình Dương'),
(17, N'Store Vũng Tàu', N'123 Đường Thống Nhất, TP Vũng Tàu, Vũng Tàu'),
(18, N'Store Vũng Tàu', N'456 Đường 30/4, TP Bà Rịa, Vũng Tàu'),
(19, N'Store Bắc Ninh', N'789 Đường Nguyễn Du, Bắc Ninh, Bắc Ninh'),
(20, N'Store Hưng Yên', N'321 Đường Hưng Yên, Hưng Yên, Hưng Yên');
GO

-- Insert data into OrderDetails table
INSERT INTO OrderDetails (OrderDetailsId, OrderId, ProductId, Quantity, VoucherId, PaymentMethods)
VALUES
(1, 1, 1, 1, 1, 'C'),
(2, 2, 2, 1, 2, 'D'),
(3, 3, 3, 1, 3, 'C'),
(4, 4, 4, 1, 4, 'C'),
(5, 5, 5, 1, 5, 'D'),
(6, 6, 6, 1, 6, 'C'),
(7, 7, 7, 1, 7, 'D'),
(8, 8, 8, 1, 8, 'C'),
(9, 9, 9, 1, 9, 'D'),
(10, 10, 10, 1, 10, 'C'),
(11, 11, 11, 1, 11, 'C'),
(12, 12, 12, 1, 12, 'D'),
(13, 13, 13, 1, 13, 'C'),
(14, 14, 14, 1, 14, 'D'),
(15, 15, 15, 1, 15, 'C'),
(16, 16, 16, 1, 16, 'C'),
(17, 17, 17, 1, 17, 'D'),
(18, 18, 18, 1, 18, 'C'),
(19, 19, 19, 1, 19, 'D'),
(20, 20, 20, 1, 20, 'C');
GO

-- Lấy tất cả các đơn hàng
SELECT * FROM Orderrs;

-- Lấy các đơn hàng đang xử lý
SELECT * FROM Orderrs WHERE Statuss = N'Đang xử lý';

-- Lấy các đơn hàng đã hoàn thành
SELECT * FROM Orderrs WHERE Statuss = N'Hoàn thành';

-- Lấy các đơn hàng đã bị hủy
SELECT * FROM Orderrs WHERE Statuss = N'Đã hủy';

-- Lấy tất cả các voucher
SELECT * FROM Voucher;

-- Lấy các voucher còn hiệu lực (trước ngày hiện tại)
SELECT * FROM Voucher WHERE VoucherExpires >= GETDATE();

-- Lấy các voucher đã hết hạn (sau ngày hiện tại)
SELECT * FROM Voucher WHERE VoucherExpires < GETDATE();

-- Lấy tất cả các cửa hàng
SELECT * FROM Store;

-- Lấy các cửa hàng ở Hà Nội
SELECT * FROM Store WHERE StoreAddress LIKE N'%Hà Nội%';

-- Lấy các cửa hàng ở Hồ Chí Minh
SELECT * FROM Store WHERE StoreAddress LIKE N'%Hồ Chí Minh%';

-- Lấy các cửa hàng ở Đà Nẵng
SELECT * FROM Store WHERE StoreAddress LIKE N'%Đà Nẵng%';

-- Lấy tất cả các chi tiết đơn hàng
SELECT * FROM OrderDetails;

-- Lấy các chi tiết đơn hàng sử dụng voucher có mã 1
SELECT * FROM OrderDetails WHERE VoucherId = 1;

-- Lấy các chi tiết đơn hàng thanh toán bằng thẻ (ký hiệu 'C')
SELECT * FROM OrderDetails WHERE PaymentMethods = 'C';

-- Lấy các chi tiết đơn hàng thanh toán bằng tiền mặt (ký hiệu 'D')
SELECT * FROM OrderDetails WHERE PaymentMethods = 'D';

SELECT 
    OrderDetails.OrderId,
    SUM(OrderDetails.Quantity * Product.UnitPrice) AS TotalAmount
FROM 
    OrderDetails
INNER JOIN
    Product ON OrderDetails.ProductId = Product.ProductId
GROUP BY 
    OrderDetails.OrderId;

