USE LapStore;
GO

INSERT INTO Voucher (VoucherId, VoucherName, VoucherRate, VoucherExpires)
VALUES
(1, N'Giảm giá 5%', 5.0, '2024-12-31'),
(2, N'Giảm giá 7.5%', 7.5, '2024-11-30'),
(3, N'Giảm giá 10%', 10.0, '2024-10-31'),
(4, N'Giảm giá 15%', 15.0, '2024-09-30'),
(5, N'Giảm giá 20%', 20.0, '2024-08-31'),
(6, N'Giảm giá 25%', 25.0, '2024-08-31'),
(7, N'Giảm giá 30%', 30.0, '2024-09-30'),
(8, N'Giảm giá 35%', 35.0, '2024-08-31'),
(9, N'Giảm giá 40%', 40.0, '2024-08-30'),
(10, N'Giảm giá 45%', 45.0, '2024-08-31'),
(11, N'Giảm giá 50%', 50.0, '2024-08-29'),
(12, N'Giảm giá 55%', 55.0, '2024-08-31'),
(13, N'Giảm giá 60%', 60.0, '2024-12-31'),
(14, N'Giảm giá 65%', 65.0, '2024-11-30'),
(15, N'Giảm giá 70%', 70.0, '2024-10-31'),
(16, N'Giảm giá 75%', 75.0, '2024-09-30'),
(17, N'Giảm giá 80%', 80.0, '2024-08-31'),
(18, N'Giảm giá 85%', 85.0, '2024-08-31'),
(19, N'Giảm giá 90%', 90.0, '2024-08-30'),
(20, N'Giảm giá 95%', 95.0, '2024-08-31');
GO


INSERT INTO Orderrs (OrderId, CustomerId, OrderDate, Statuss, VoucherId, TotalAmount)
VALUES
(1, 1, '2024-07-01', N'Đang xử lý',1, 28000.00),
(2, 2, '2024-07-02', N'Hoàn thành', null, 32000.00),
(3, 3, '2024-07-03', N'Hoàn thành',2, 25000.00),
(4, 4, '2024-07-04', N'Đang xử lý',3, 29000.00),
(5, 5, '2024-07-05', N'Hoàn thành',1, 27000.00),
(6, 6, '2024-07-06', N'Đã hủy', null, 22000.00),
(7, 7, '2024-07-07', N'Đang xử lý',4, 20000.00),
(8, 8, '2024-07-08', N'Hoàn thành',5, 35000.00),
(9, 9, '2024-07-09', N'Hoàn thành',5, 45000.00),
(10, 10, '2024-07-10', N'Đang xử lý',null, 26000.00),
(11, 11, '2024-07-11', N'Hoàn thành',4, 33000.00),
(12, 12, '2024-07-12', N'Đã hủy',3, 24000.00),
(13, 13, '2024-07-13', N'Hoàn thành',3, 27000.00),
(14, 14, '2024-07-14', N'Đang xử lý',null, 25000.00),
(15, 15, '2024-07-15', N'Hoàn thành',6, 29000.00),
(16, 16, '2024-07-16', N'Đã hủy',2, 32000.00),
(17, 17, '2024-07-17', N'Hoàn thành',3, 23000.00),
(18, 18, '2024-07-18', N'Đang xử lý',5, 21000.00),
(19, 19, '2024-07-19', N'Hoàn thành',5, 29000.00),
(20, 20, '2024-07-20', N'Hoàn thành', 4, 45000.00);
GO



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


INSERT INTO OrderDetails (OrderDetailsId, OrderId, ProductId, Quantity, PaymentMethods)
VALUES
(1, 1, 1, 1, 'C'),
(2, 2, 2, 1, 'D'),
(3, 3, 3, 1, 'C'),
(4, 4, 4, 1, 'C'),
(5, 5, 5, 1, 'D'),
(6, 6, 6, 1, 'C'),
(7, 7, 7, 1, 'D'),
(8, 8, 8, 1, 'C'),
(9, 9, 9, 1, 'D'),
(10, 10, 10, 1, 'C'),
(11, 11, 11, 1, 'C'),
(12, 12, 12, 1, 'D'),
(13, 13, 13, 1, 'C'),
(14, 14, 14, 1, 'D'),
(15, 15, 15, 1, 'C'),
(16, 16, 16, 1, 'C'),
(17, 17, 17, 1, 'D'),
(18, 18, 18, 1, 'C'),
(19, 19, 19, 1, 'D'),
(20, 20, 20, 1, 'C');
GO
UPDATE O
SET O.TotalAmount = (
    SELECT SUM(
        CASE 
            WHEN P.Discount > 0 THEN
                OD.Quantity * COALESCE(P.PriceAfterDiscount, P.Price)
            ELSE
                OD.Quantity * P.Price
        END
    )
    FROM OrderDetails OD
    JOIN Products P ON OD.ProductId = P.ProductId
    WHERE OD.OrderId = O.OrderId
)
FROM Orderrs O;
GO

UPDATE Orderrs
SET TotalAmount = (
    SELECT SUM(P.Price * OD.Quantity)
    FROM OrderDetails OD
    JOIN Products P ON OD.ProductId = P.ProductId
    WHERE OD.OrderId = Orderrs.OrderId
)
WHERE VoucherId IS NULL;
GO

UPDATE Orderrs
SET TotalAmount = TotalAmount * (1 - (SELECT VoucherRate FROM Voucher WHERE Voucher.VoucherId = Orderrs.VoucherId) / 100)
WHERE VoucherId IS NOT NULL;
GO


-- Lấy tất cả các đơn hàng
SELECT * FROM Orderrs;


-- Lấy các đơn hàng đang xử lý
SELECT * FROM Orderrs WHERE Statuss = N'Đang xử lý';

-- Lấy các đơn hàng đã hoàn thành
SELECT * FROM Orderrs WHERE Statuss = N'Hoàn thành';

-- Lấy các đơn hàng đã bị hủy
SELECT * FROM Orderrs WHERE Statuss = N'Đã hủy';

-- Lấy các voucher còn hiệu lực (trước ngày hiện tại)
SELECT * FROM Voucher WHERE VoucherExpires >= GETDATE();


-- Lấy tất cả các cửa hàng
SELECT * FROM Store;

-- Lấy các cửa hàng ở Hà Nội
SELECT * FROM Store WHERE StoreAddress LIKE N'%Hà Nội%';

-- Lấy tất cả các chi tiết đơn hàng
SELECT * FROM OrderDetails;

-- Lấy các chi tiết đơn hàng sử dụng voucher có mã 1
SELECT * FROM Orderrs WHERE VoucherId = 1;

-- Lấy các chi tiết đơn hàng thanh toán bằng thẻ (ký hiệu 'C')
SELECT * FROM OrderDetails WHERE PaymentMethods = 'C';

-- Lấy các chi tiết đơn hàng thanh toán bằng tiền mặt (ký hiệu 'D')
SELECT * FROM OrderDetails WHERE PaymentMethods = 'D';

-- Truy vấn toàn bộ chi tiết về đơn hàng và sản phẩm theo CustomerId
SELECT 
    O.OrderId,
    O.OrderDate,
    O.Statuss AS OrderStatus,
    O.TotalAmount AS OrderTotalAmount,
    OD.OrderDetailsId,
    OD.ProductId,
    P.ProductName,
    P.Price AS ProductPrice,
    OD.Quantity AS OrderedQuantity,
    (P.Price * OD.Quantity) AS TotalPriceForProduct
FROM 
    Orderrs O
JOIN 
    OrderDetails OD ON O.OrderId = OD.OrderId
JOIN 
    Products P ON OD.ProductId = P.ProductId
WHERE 
    O.CustomerId = 2; 
GO

