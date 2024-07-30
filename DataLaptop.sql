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

create table Category
(
    Catid int primary key,
    CatName nvarchar
);

create Table Brand
(
    BrandId int primary key,
    Catid int,
    BrandName nvarchar,
    CONSTRAINT fkc FOREIGN KEY (Catid) REFERENCES Category (Catid)
);

Create table Model
(
    ModelId int Primary key,
    BrandId int,
    ModelName nvarchar,
    Constraint fkb Foreign key(BrandId) references Brand(BrandId),
);

create Table Waranty
(
    WarantyId int primary key,
    WarantyLong nvarchar
);

create Table ProductDiscount
(
    DiscountId int primary key,
    DiscountName nvarchar,
    DiscountRate float
)

Create Table ProductDetails
(
    ProductDetailId int primary key,
    RAM varchar,
    Graphic varchar,
    CPU varchar,
    Display varchar,
    type varchar,
);

Create Table Products
(
    ProductId int primary key,
    ModelId int,
    ProductName nvarchar,
    ProductDetailsId int,
    Stock int,
    Price money,
    WarantyId int,
    DiscountId int,
    constraint fkm FOReign key (ModelId) REFERENCES Model (ModelId),
    CONSTRAINT fkpd FOREIGN KEY (ProductDetailsId) REFERENCES ProductDetails (ProductDetailId),
    CONSTRAINT fkw FOREIGN KEY (WarantyId) REFERENCES Waranty (WarantyId),
    CONSTRAINT fkd FOREIGN KEY (DiscountId) REFERENCES ProductDiscount (DiscountId)
);

Create Table Customer
(
    CustomerID int PRIMARY KEY,
    CustomerName nvarchar,
    Phone varchar,
    DistrictId int,
    Addresss nvarchar,
    Email varchar,
);


Create Table Stock
(
    Stockid int primary key,
    Productid int,
    Storeid int,
    Quantity int,
);

Create Table Brand{
  BrandId int primary key,
  Catid int,
  BrandName nvarchar,
  BrandAddress NVARCHAR
}

create Table Reviews
(
    RatingId int primary key,
    ProductId int,
    CustomerId int,
    Rating int,
    Comment nvarchar,
    Commentdate datetime,
    CONSTRAINT fkp FOREIGN KEY (ProductId) REFERENCES Products (ProductId),
    CONSTRAINT fkcc FOREIGN KEY (CustomerId) REFERENCES Customer (CustomerID)
);


Create Table Country
(
    CountryId int primary key,
    CountryName nvarchar,
)

Create Table City
(
    CityId int primary key,
    CountryId int,
    CityName nvarchar,
    CONSTRAINT fkcountry FOREIGN key (CountryId) REFERENCES Country(CountryId)
);

Create Table District
(
    DistrictId int primary key,
    CityId int,
    DistrictName nvarchar,
    CONSTRAINT fkcity FOREIGN KEY (CityId) References City (CityId)
);

Create Table Orderrs
(
    OrderId int primary key,
    CustomerId int,
    OrderDate datetime,
    CONSTRAINT fkccc FOREIGN KEY (CustomerId) REFERENCES Customer (CustomerID)
);

create Table Voucher
(
    VoucherId int primary key,
    CustomerId int,
    VoucherName nvarchar,
    VoucherRate float,
    CONSTRAINT fkcccc FOREIGN KEY (CustomerId) REFERENCES Customer (CustomerID)
);

Create Table Payment
(
    PaymentId int primary key,
    PaymentInformation nvarchar
);

Create Table OrderDetails
(
    OrderDetailsId int primary key,
    OrderId int,
    ProductId int,
    Quantity int,
    VoucherId int,
    PaymentId int,
    constraint fko FOREIGN KEY(OrderId) REFERENCES Orderrs (OrderId),
    CONSTRAINT fkpp FOREIGN KEY (ProductId) REFERENCES Products (ProductId),
    Constraint fkv Foreign KEY (VoucherId) REFERENCES Voucher (VoucherId),
    CONSTRAINT fkpay FOREIGN KEY (PaymentId) REFERENCES Payment (PaymentId)
);