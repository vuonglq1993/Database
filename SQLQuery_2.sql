USE LapStore;

INSERT INTO Orderrs (OrderId, CustomerId, OrderDate, TotalAmount, VoucherId, StoreId)
VALUES
(1, 1, '2024-07-21', 56000.00, 1, 1),
(2, 2, '2024-07-22', 64000.00, 2, 2),
(3, 3, '2024-07-23', 50000.00, 3, 3),
(4, 4, '2024-07-24', 58000.00, 4, 4),
(5, 5, '2024-07-25', 54000.00, 5, 5),
(6, 6, '2024-07-26', 44000.00, 6, 6),
(7, 7, '2024-07-27', 40000.00, 7, 7),
(8, 8, '2024-07-28', 70000.00, 8, 8),
(9, 9, '2024-07-29', 91000.00, 9, 9),
(10, 10, '2024-07-30', 52000.00, 10, 10);
GO

INSERT INTO Orderdetails (OrderDetailId, OrderId, ProductId, Quantity, Price, Discount)
VALUES
(1, 1, 1, 1, 28000.00, 5.0),
(2, 1, 6, 1, 22000.00, 6.5),
(3, 2, 2, 1, 32000.00, 7.5),
(4, 2, 12, 1, 24000.00, 6.0),
(5, 3, 3, 1, 25000.00, 10.0),
(6, 3, 18, 1, 21000.00, 5.5),
(7, 4, 4, 1, 29000.00, 6.0),
(8, 4, 16, 1, 32000.00, 7.0),
(9, 5, 5, 1, 27000.00, 8.0),
(10, 5, 17, 1, 23000.00, 6.0),
(11, 6, 7, 1, 20000.00, 7.0),
(12, 6, 11, 1, 33000.00, 8.0),
(13, 7, 8, 1, 35000.00, 5.5),
(14, 7, 10, 1, 26000.00, 7.0),
(15, 8, 9, 1, 45000.00, 10.0),
(16, 8, 15, 1, 29000.00, 8.0),
(17, 9, 20, 1, 45000.00, 10.0),
(18, 9, 13, 1, 27000.00, 7.5),
(19, 10, 14, 1, 25000.00, 6.5),
(20, 10, 19, 1, 29000.00, 8.0);
GO

INSERT INTO Voucher (VoucherId, VoucherCode, DiscountAmount, ExpiryDate)
VALUES
(1, 'VOUCHER20240701', 5000.00, '2024-12-31'),
(2, 'VOUCHER20240702', 7500.00, '2024-12-31'),
(3, 'VOUCHER20240703', 10000.00, '2024-12-31'),
(4, 'VOUCHER20240704', 6000.00, '2024-12-31'),
(5, 'VOUCHER20240705', 8000.00, '2024-12-31'),
(6, 'VOUCHER20240706', 6500.00, '2024-12-31'),
(7, 'VOUCHER20240707', 7000.00, '2024-12-31'),
(8, 'VOUCHER20240708', 5500.00, '2024-12-31'),
(9, 'VOUCHER20240709', 10000.00, '2024-12-31'),
(10, 'VOUCHER20240710', 7500.00, '2024-12-31');
GO

INSERT INTO Store (StoreId, StoreName, StoreLocation)
VALUES
(1, N'Store Hà Nội 1', N'123 Phố Huế, Hoàn Kiếm, Hà Nội'),
(2, N'Store Hà Nội 2', N'456 Đường Cầu Giấy, Cầu Giấy, Hà Nội'),
(3, N'Store Hà Nội 3', N'789 Đội Cấn, Ba Đình, Hà Nội'),
(4, N'Store Hồ Chí Minh 1', N'321 Lê Lợi, Quận 1, Hồ Chí Minh'),
(5, N'Store Hồ Chí Minh 2', N'654 Nguyễn Thị Minh Khai, Quận 3, Hồ Chí Minh'),
(6, N'Store Hồ Chí Minh 3', N'987 Đường Nguyễn Văn Linh, Quận 7, Hồ Chí Minh'),
(7, N'Store Đà Nẵng 1', N'123 Đường 2/9, Hải Châu, Đà Nẵng'),
(8, N'Store Đà Nẵng 2', N'456 Nguyễn Văn Linh, Thanh Khê, Đà Nẵng'),
(9, N'Store Hải Phòng 1', N'789 Đường Trần Phú, Ngô Quyền, Hải Phòng'),
(10, N'Store Hải Phòng 2', N'321 Đường Hoàng Diệu, Hồng Bàng, Hải Phòng');
GO