/*drop database UserManagement*/


CREATE DATABASE Perfume_Website 

USE [Perfume_Website]

-- Tạo bảng [dbo].[tblUsers]
CREATE TABLE [dbo].[tblUsers](
	[UserID] [int] IDENTITY(1,1) PRIMARY KEY NOT NULL ,
	[UserName] [nvarchar](50) NOT NULL,
	[FullName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[RoleID] [int] NOT NULL,
	[Address] [nvarchar](200) NULL,
	[Phone] [nvarchar](11) NOT NULL,
)

INSERT INTO [dbo].[tblUsers] ([UserName], [FullName], [Password], [RoleID], [Address], [Phone])
VALUES 
    ('john_doe', 'John Doe', 'password123', 1, '123 Main St, CityA', '12345678901'),
    ('jane_smith', 'Jane Smith', 'pass456', 2, '456 Oak St, CityB', '23456789012'),
    ('mike_jackson', 'Mike Jackson', 'securepass', 1, '789 Pine St, CityC', '34567890123'),
    ('susan_wilson', 'Susan Wilson', 'mypassword', 3, '012 Elm St, CityD', '45678901234'),
    ('david_clark', 'David Clark', 'clarkpass', 2, '345 Birch St, CityE', '56789012345'),
    ('emily_white', 'Emily White', 'whitepass', 1, '678 Cedar St, CityF', '67890123456'),
    ('ryan_miller', 'Ryan Miller', 'millerpass', 2, '901 Maple St, CityG', '78901234567'),
    ('lisa_thompson', 'Lisa Thompson', 'lisapass', 3, '234 Walnut St, CityH', '89012345678'),
    ('steven_turner', 'Steven Turner', 'turnerpass', 1, '567 Pine St, CityI', '90123456789'),
    ('olivia_brown', 'Olivia Brown', 'brownpass', 2, '890 Spruce St, CityJ', '01234567890'),
    ('matthew_davis', 'Matthew Davis', 'mattpass', 3, '123 Cedar St, CityK', '12345678901'),
    ('emma_clarkson', 'Emma Clarkson', 'emmypass', 1, '456 Oak St, CityL', '23456789012'),
    ('ethan_robinson', 'Ethan Robinson', 'ethanpass', 2, '789 Elm St, CityM', '34567890123'),
    ('chloe_morris', 'Chloe Morris', 'chloepass', 3, '012 Birch St, CityN', '45678901234'),
    ('aiden_wilkins', 'Aiden Wilkins', 'aidenpass', 1, '345 Cedar St, CityO', '56789012345'),
    ('mia_jones', 'Mia Jones', 'miapass', 2, '678 Pine St, CityP', '67890123456'),
    ('logan_harris', 'Logan Harris', 'loganpass', 3, '901 Oak St, CityQ', '78901234567'),
    ('aubrey_smith', 'Aubrey Smith', 'aubreypass', 1, '234 Maple St, CityR', '89012345678'),
    ('brandon_turner', 'Brandon Turner', 'brandonpass', 2, '567 Walnut St, CityS', '90123456789'),
    ('hannah_brown', 'Hannah Brown', 'hannahpass', 3, '890 Cedar St, CityT', '01234567890');
	

-- Tạo bảng [dbo].[Categories]
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](15) NOT NULL,
	[Description] [ntext] NULL,
	CONSTRAINT [PK_Categories] PRIMARY KEY([CategoryID])
)

INSERT INTO [dbo].[Categories] ([CategoryName], [Description])
VALUES 
    ('Men', 'Perfume for men'),
    ('Women', 'Perfume for women'),
    ('Kids', 'Perfume for kids'),
    ('Unisex', 'Perfume suitable for both genders');



-- Tạo bảng [dbo].[Suppliers]
CREATE TABLE [dbo].[Suppliers](
	[SupplierID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](40) NOT NULL,
	[ContactName] [nvarchar](50) NULL,
	[Country] [nvarchar](50) NULL,
	[Phone] [nvarchar](24) NULL,
	[Fax] [nvarchar](24) NULL,
	[HomePage] [ntext] NULL,
	CONSTRAINT [PK_Suppliers] PRIMARY KEY([SupplierID])
)



INSERT INTO [dbo].[Suppliers] ([CompanyName], [ContactName], [Country], [Phone], [Fax], [HomePage])
VALUES 
    ('Versace', 'Supplier Contact Versace', 'Italy', '+39 02 1234 5678', '+39 02 1234 5679', 'http://www.versace.com'),
    ('Hugo Boss', 'Supplier Contact Hugo Boss', 'Germany', '+49 30 9876 5432', '+49 30 9876 5431', 'http://www.hugoboss.com'),
    ('Jaguar', 'Supplier Contact Jaguar', 'United Kingdom', '+44 20 3456 7890', '+44 20 3456 7891', 'http://www.jaguar.com'),
    ('Armani', 'Supplier Contact Armani', 'Italy', '+39 02 2345 6789', '+39 02 2345 6781', 'http://www.armani.com'),
    ('Paco Rabanne', 'Supplier Contact Paco Rabanne', 'France', '+33 1 3456 7890', '+33 1 3456 7891', 'http://www.pacorabanne.com'),
    ('Ralph Lauren', 'Supplier Contact Ralph Lauren', 'USA', '+1 212 555 1234', '+1 212 555 5678', 'http://www.ralphlauren.com'),
    ('Bvlgari', 'Supplier Contact Bvlgari', 'Italy', '+39 06 1234 5678', '+39 06 1234 5679', 'http://www.bvlgari.com'),
    ('Coach', 'Supplier Contact Coach', 'USA', '+1 212 555 6789', '+1 212 555 6790', 'http://www.coach.com'),
    ('Kenzo', 'Supplier Contact Kenzo', 'France', '+33 1 8765 4321', '+33 1 8765 4322', 'http://www.kenzo.com'),
    ('D&G', 'Supplier Contact D&G', 'Italy', '+39 02 3456 7890', '+39 02 3456 7891', 'http://www.dolcegabbana.com'),
    ('Jean Paul Gaultier', 'Supplier Contact Jean Paul Gaultier', 'France', '+33 1 2345 6789', '+33 1 2345 6781', 'http://www.jeanpaulgaultier.com'),
    ('Ajmal', 'Supplier Contact Ajmal', 'United Arab Emirates', '+971 4 1234 5678', '+971 4 1234 5679', 'http://www.ajmalperfume.com'),
    ('Calvin Klein', 'Supplier Contact Calvin Klein', 'USA', '+1 212 555 7890', '+1 212 555 7891', 'http://www.calvinklein.com'),
    ('The Body Shop', 'Supplier Contact The Body Shop', 'United Kingdom', '+44 20 9876 5432', '+44 20 9876 5431', 'http://www.thebodyshop.com'),
    ('Lattafa', 'Supplier Contact Lattafa', 'United Arab Emirates', '+971 6 2345 6789', '+971 6 2345 6781', 'http://www.lattafa.com');



-- Tạo bảng [dbo].[Products]
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](100) NOT NULL,
	[SupplierID] [int] NULL,
	[CategoryID] [int] NULL,
	[QuantityPerUnit] [nvarchar](20) NULL,
	[UnitPrice] [money] NULL,
	[UnitsInStock] [smallint] NULL,
	[UnitsOnOrder] [smallint] NULL,
	[ReorderLevel] [smallint] NULL,
	[Discontinued] [bit] NOT NULL,
	CONSTRAINT [PK_Products] PRIMARY KEY([ProductID]),
	CONSTRAINT [FK_Products_Supplier]
    FOREIGN KEY ([SupplierID])
    REFERENCES [dbo].[Suppliers] ([SupplierID]),
	CONSTRAINT [FK_Products_Category]
    FOREIGN KEY ([CategoryID])
    REFERENCES [dbo].[Categories] ([CategoryID])
)

INSERT INTO [dbo].[Products] (
    [ProductName], 
    [SupplierID], 
    [CategoryID], 
    [QuantityPerUnit], 
    [UnitPrice], 
    [UnitsInStock], 
    [UnitsOnOrder], 
    [ReorderLevel], 
    [Discontinued]
)
VALUES 
	-- 10 products for Men (https://missi.com.vn/danh-muc/nuoc-hoa-nam/)
    ('NAUTICA VOYAGE N-83 EDT', 1, 1, '100 ml', 19.99, 100, 20, 10, 0),
    ('JEAN PAUL GAULTIER LE MALE ELIXIR', 2, 1, '125ml', 29.99, 50, 10, 5, 0),
    ('NAUTICA VOYAGE SPORT EDT', 3, 1, '100ml', 39.99, 75, 15, 8, 0),
    ('MONTALE AOUD LEATHER EDP', 4, 1, '100ml', 49.99, 120, 30, 12, 0),
    ('MFK OUD SILK MOOD EDP', 5, 1, '70ml', 59.99, 80, 25, 10, 0),
    ('JAGUAR CLASSIC BLACK EDT', 6, 1, '100ml', 69.99, 60, 12, 6, 0),
    ('CAROLINA HERRERA BAD BOY LE PARFUM', 7, 1, '100ml', 79.99, 90, 18, 9, 0),
    ('BURBERRY HERO EDP', 8, 1, '100ml', 89.99, 110, 22, 11, 0),
    ('CALVIN KLEIN CK EVERYONE EDT', 9, 1, '100ml', 99.99, 150, 35, 15, 0),
    ('JEAN PAUL LE BEAU LE PARFUM', 10, 1, '125ml', 109.99, 70, 14, 7, 0),
	-- 10 products for women (https://missi.com.vn/danh-muc/nuoc-hoa-nu/)
	('KILIAN CAN’T STOP LOVING YOU', 1, 2, '50 ml', 19.99, 100, 20, 10, 0),
    ('KILIAN LOVE DON’T BE SHY EDP', 2, 2, '50ml', 29.99, 50, 10, 5, 0),
    ('LANCOME IDOLE L’INTENSE EDP', 3, 2, '75ml', 39.99, 75, 15, 8, 0),
    ('MFK OUD SILK MOOD EDP', 4, 2, '70ml', 49.99, 120, 30, 12, 0),
    ('GIORGIO ARMANI PRIVE ROSE DARABIE EDP INTENSE', 5, 2, '100ml', 59.99, 80, 25, 10, 0),
    ('GUCCI A SONG FOR THE ROSE EDP', 6, 2, '100ml', 69.99, 60, 12, 6, 0),
    ('DIOR JOY EAU DE PARFUM INTENSE', 7, 2, '90ml', 79.99, 90, 18, 9, 0),
    ('CAROLINA HERRERA VERY GOOD GIRL GLAM', 8, 2, '80ml', 89.99, 110, 22, 11, 0),
    ('JO MALONE ORANGE BLOSSOM EAU DE COLOGNE', 9, 2, '100ml', 99.99, 150, 35, 15, 0),
    ('CALVIN KLEIN CK EVERYONE EDT', 10, 2, '100ml', 109.99, 70, 14, 7, 0),
	-- 5 products for unisex (https://missi.com.vn/danh-muc/nuoc-hoa-phap/)
	('KILIAN CAN’T STOP LOVING YOU', 1, 4, '50 ml', 19.99, 100, 20, 10, 0),
    ('NAUTICA VOYAGE N-83 EDT', 2, 4, '100ml', 29.99, 50, 10, 5, 0),
    ('JEAN PAUL GAULTIER LE MALE ELIXIR', 3, 4, '75ml', 39.99, 75, 15, 8, 0),
    ('KILIAN LOVE DON’T BE SHY EDP', 4, 4, '50ml', 49.99, 120, 30, 12, 0),
    ('LANCOME IDOLE L’INTENSE EDP', 5, 4, '75ml', 59.99, 80, 25, 10, 0),
	-- 5 products kids (https://missi.com.vn/danh-muc/nuoc-hoa-niche/)
	('LOUIS VUITTON ROSE DES VENTS', 1, 3, '50 ml', 19.99, 100, 20, 10, 0),
    ('LE LABO BERGAMOTE 22 EDP', 2, 3, '100ml', 29.99, 50, 10, 5, 0),
    ('CREED SILVER MOUNTAIN WATER', 3, 3, '100ml', 39.99, 75, 15, 8, 0),
    ('THE MERCHANT OF VENICE FLAMANT ROSE EDP', 4, 3, '100ml', 49.99, 120, 30, 12, 0),
    ('THE MERCHANT OF VENICE ROSA MOCENIGA EDP', 5, 3, '100ml', 59.99, 80, 25, 10, 0);

