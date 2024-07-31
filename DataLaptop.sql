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
    CatName nvarchar,
    Brandname nvarchar,
    ModelName nvarchar,
);


Create Table ProductDetails
(
    ProductDetailId int primary key,
    RAM varchar,
    Graphic varchar,
    CPU varchar,
    Display varchar,
    Types varchar,
);

Create Table Products
(
    ProductId int primary key,
    ModelId int,
    ProductName nvarchar,
    ProductDetailsId int,
    Stock int null,
    Price money not null,
    Waranty NVARCHAR,
    Discount float,
    constraint fkm FOReign key (ModelId) REFERENCES Model (ModelId),
    CONSTRAINT fkpd FOREIGN KEY (ProductDetailsId) REFERENCES ProductDetails (ProductDetailId),
);



Create Table District
(
    DistrictId int primary key,
    CityName nvarchar,
    DistrictName nvarchar,
);

Create Table Customer
(
    CustomerID int PRIMARY KEY,
    CustomerFirstName nvarchar(100),
    CustomerLastName nvarchar(100),
    Phone varchar(10),
    DistrictId int,
    Addresss nvarchar,
    Email varchar,
    CONSTRAINT fkdistrict FOREIGN KEY (DistrictId) REFERENCES District (DistrictId)
);

Create Table Orderrs
(
    OrderId int primary key,
    CustomerId int,
    OrderDate date,
    Statuss nvarchar(15),
    TotalAmount Money,
    CONSTRAINT fkccc FOREIGN KEY (CustomerId) REFERENCES Customer (CustomerID)
);

create Table Voucher
(
    VoucherId int primary key,
    VoucherName nvarchar(20),
    VoucherRate float,
    VoucherExpires date,
);

create Table Reviews
(
    RatingId int primary key,
    ProductId int,
    CustomerId int,
    Rating int,
    Comment text,
    Commentdate date,
    CONSTRAINT fkp FOREIGN KEY (ProductId) REFERENCES Products (ProductId),
    CONSTRAINT fkcc FOREIGN KEY (CustomerId) REFERENCES Customer (CustomerID)
);

create table Store(
  StoreId int primary key,
  StoreName varchar(20),
  StoreAddress nvarchar(100),
);


Create Table OrderDetails
(
    OrderDetailsId int primary key,
    OrderId int,
    ProductId int,
    Quantity int,
    VoucherId int,
    PaymentMethods varchar(1) not null,
    constraint fko FOREIGN KEY(OrderId) REFERENCES Orderrs (OrderId),
    CONSTRAINT fkpp FOREIGN KEY (ProductId) REFERENCES Products (ProductId),
    Constraint fkv Foreign KEY (VoucherId) REFERENCES Voucher (VoucherId),
);


UPDATE Orderrs
SET TotalAmount = (
    SELECT SUM(p.Price * od.Quantity)
    FROM OrderDetails od
    JOIN Products p ON od.ProductId = p.ProductId
    WHERE od.OrderId = Orderrs.OrderId
);