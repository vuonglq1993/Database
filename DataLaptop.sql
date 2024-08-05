--BÀI TẬP NHÓM HỘI NGƯỜI CAO TUỔI
-- LÊ QUÝ VƯỢNG: THIẾT KẾ DATABASE, TẠO BẢNG, BỔ SUNG 1 SỐ TRUY VẤN
-- ĐẶNG QUANG HUY: NHẬP DỮ LIỆU BẢNG TRONG FILE SQLQUERY_1
USE master
        GO

IF EXISTS (
            SELECT [name]
FROM sys.databases
WHERE [name] ='LapStore'
        )
        DROP DATABASE LapStore
        GO

CREATE database LapStore
        GO
use LapStore
        GO


Create table Model
(
    ModelId int Primary key,
    CatName nvarchar(50),
    Brandname nvarchar(50),
    ModelName nvarchar(50)
);


Create Table ProductDetails
(
    ProductDetailId int primary key,
    RAM varchar(100),
    Graphic varchar(100),
    CPU varchar(100),
    Display varchar(100),
    Types varchar(100)
);

Create Table Products
(
    ProductId int primary key,
    ModelId int,
    ProductName nvarchar(100),
    ProductDetailsId int,
    Stock int null,
    Price money not null,
    PriceAfterDiscount money,
    Waranty NVARCHAR(20),
    Discount float,
    constraint fkm FOReign key (ModelId) REFERENCES Model (ModelId),
    CONSTRAINT fkpd FOREIGN KEY (ProductDetailsId) REFERENCES ProductDetails (ProductDetailId)
);



Create Table District
(
    DistrictId int primary key,
    CityName nvarchar(100),
    DistrictName nvarchar(100)
);

Create Table Customer
(
    CustomerID int PRIMARY KEY,
    CustomerFirstName nvarchar(100),
    CustomerLastName nvarchar(100),
    Phone varchar(10),
    DistrictId int,
    Addresss nvarchar(100),
    Email varchar(100),
    CONSTRAINT fkdistrict FOREIGN KEY (DistrictId) REFERENCES District (DistrictId)
);

create Table Voucher
(
    VoucherId int primary key,
    VoucherName nvarchar(100),
    VoucherRate float,
    VoucherExpires date
);

Create Table Orderrs
(
    OrderId int primary key,
    CustomerId int,
    OrderDate date,
    Statuss nvarchar(15),
    VoucherId int,
    TotalAmount Money,
    CONSTRAINT fkccc FOREIGN KEY (CustomerId) REFERENCES Customer (CustomerID),
    Constraint fkv Foreign KEY (VoucherId) REFERENCES Voucher (VoucherId)
);


create Table Reviews
(
    RatingId int primary key,
    ProductId int,
    CustomerId int,
    Rating int,
    Comment ntext,
    Commentdate date,
    CONSTRAINT fkp FOREIGN KEY (ProductId) REFERENCES Products (ProductId),
    CONSTRAINT fkcc FOREIGN KEY (CustomerId) REFERENCES Customer (CustomerID)
);

create table Store
(
    StoreId int primary key,
    StoreName nvarchar(100),
    StoreAddress nvarchar(100)
);


Create Table OrderDetails
(
    OrderDetailsId int primary key,
    OrderId int,
    ProductId int,
    Quantity int,
    PaymentMethods varchar(1) not null,
    constraint fko FOREIGN KEY(OrderId) REFERENCES Orderrs (OrderId),
    CONSTRAINT fkpp FOREIGN KEY (ProductId) REFERENCES Products (ProductId),

);
