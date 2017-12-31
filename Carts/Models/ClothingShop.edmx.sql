
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 12/30/2017 15:25:40
-- Generated from EDMX file: C:\Users\LYxC\Desktop\Carts\Carts\Models\ClothingShop.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Demo.Carts];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK__COMMENT__Clothes__2A4B4B5E]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[COMMENTs] DROP CONSTRAINT [FK__COMMENT__Clothes__2A4B4B5E];
GO
IF OBJECT_ID(N'[dbo].[FK__COMMENT__MemberI__29572725]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[COMMENTs] DROP CONSTRAINT [FK__COMMENT__MemberI__29572725];
GO
IF OBJECT_ID(N'[dbo].[FK__ORDER_ITE__Cloth__32E0915F]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ORDER_ITEM] DROP CONSTRAINT [FK__ORDER_ITE__Cloth__32E0915F];
GO
IF OBJECT_ID(N'[dbo].[FK__ORDER_ITE__Order__31EC6D26]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ORDER_ITEM] DROP CONSTRAINT [FK__ORDER_ITE__Order__31EC6D26];
GO
IF OBJECT_ID(N'[dbo].[FK__ORDER_LIS__Membe__2F10007B]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ORDER_LIST] DROP CONSTRAINT [FK__ORDER_LIS__Membe__2F10007B];
GO
IF OBJECT_ID(N'[dbo].[FK__STRAGE_LI__Cloth__36B12243]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[STRAGE_LIST] DROP CONSTRAINT [FK__STRAGE_LI__Cloth__36B12243];
GO
IF OBJECT_ID(N'[dbo].[FK__STRAGE_LI__Membe__35BCFE0A]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[STRAGE_LIST] DROP CONSTRAINT [FK__STRAGE_LI__Membe__35BCFE0A];
GO
IF OBJECT_ID(N'[dbo].[FK__TRACE_LIS__Cloth__3A81B327]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TRACE_LIST] DROP CONSTRAINT [FK__TRACE_LIS__Cloth__3A81B327];
GO
IF OBJECT_ID(N'[dbo].[FK__TRACE_LIS__Membe__398D8EEE]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TRACE_LIST] DROP CONSTRAINT [FK__TRACE_LIS__Membe__398D8EEE];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[CLOTHES]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CLOTHES];
GO
IF OBJECT_ID(N'[dbo].[COMMENTs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[COMMENTs];
GO
IF OBJECT_ID(N'[dbo].[MEMBERs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MEMBERs];
GO
IF OBJECT_ID(N'[dbo].[ORDER_ITEM]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ORDER_ITEM];
GO
IF OBJECT_ID(N'[dbo].[ORDER_LIST]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ORDER_LIST];
GO
IF OBJECT_ID(N'[dbo].[SHOPPING_CART]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SHOPPING_CART];
GO
IF OBJECT_ID(N'[dbo].[STRAGE_LIST]', 'U') IS NOT NULL
    DROP TABLE [dbo].[STRAGE_LIST];
GO
IF OBJECT_ID(N'[dbo].[TRACE_LIST]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TRACE_LIST];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'CLOTHES'
CREATE TABLE [dbo].[CLOTHES] (
    [Id] int  NOT NULL,
    [Price] int  NOT NULL,
    [Quantity] int  NOT NULL,
    [ClickCount] int  NOT NULL,
    [State] int  NOT NULL,
    [Cost_per_unit] int  NULL,
    [Barcode] int  NOT NULL,
    [Tag_name] varchar(max)  NOT NULL,
    [Brand_name] varchar(max)  NOT NULL,
    [Size] varchar(max)  NOT NULL,
    [Manufacture_name] varchar(max)  NOT NULL,
    [Name] varchar(max)  NOT NULL,
    [Color] varchar(max)  NOT NULL,
    [Style] varchar(max)  NOT NULL
);
GO

-- Creating table 'COMMENTs'
CREATE TABLE [dbo].[COMMENTs] (
    [Id] int  NOT NULL,
    [MemberId] int  NOT NULL,
    [ClothesId] int  NOT NULL,
    [Description] varchar(max)  NOT NULL,
    [Date_Time] datetime  NOT NULL,
    [Stars] int  NOT NULL
);
GO

-- Creating table 'MEMBERs'
CREATE TABLE [dbo].[MEMBERs] (
    [Id] int  NOT NULL,
    [FName] varchar(max)  NOT NULL,
    [LName] varchar(max)  NOT NULL,
    [Account] varchar(50)  NOT NULL,
    [Password] varchar(max)  NOT NULL,
    [Email] varchar(max)  NOT NULL,
    [PhoneNumber] varchar(max)  NOT NULL,
    [Sex] varchar(max)  NOT NULL,
    [Birthday] datetime  NOT NULL,
    [Photo] varbinary(max)  NOT NULL,
    [Credit] int  NOT NULL,
    [Class] int  NOT NULL
);
GO

-- Creating table 'ORDER_ITEM'
CREATE TABLE [dbo].[ORDER_ITEM] (
    [OrderId] int  NOT NULL,
    [ClothesId] int  NOT NULL,
    [Quantity] int  NOT NULL,
    [Cost] int  NOT NULL
);
GO

-- Creating table 'ORDER_LIST'
CREATE TABLE [dbo].[ORDER_LIST] (
    [Id] int  NOT NULL,
    [MemberId] int  NOT NULL,
    [Cost] int  NOT NULL,
    [Date_Time] datetime  NOT NULL,
    [State] varchar(max)  NOT NULL
);
GO

-- Creating table 'SHOPPING_CART'
CREATE TABLE [dbo].[SHOPPING_CART] (
    [MemberId] int  NOT NULL,
    [ClothesId] int  NOT NULL,
    [Quantity] int  NOT NULL
);
GO

-- Creating table 'STRAGE_LIST'
CREATE TABLE [dbo].[STRAGE_LIST] (
    [MemberId] int  NOT NULL,
    [ClothesId] int  NOT NULL,
    [Date_Time] datetime  NOT NULL,
    [Quantity] int  NOT NULL,
    [Cost] int  NOT NULL
);
GO

-- Creating table 'TRACE_LIST'
CREATE TABLE [dbo].[TRACE_LIST] (
    [MemberId] int  NOT NULL,
    [ClothesId] int  NOT NULL,
    [Date_Time] datetime  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'CLOTHES'
ALTER TABLE [dbo].[CLOTHES]
ADD CONSTRAINT [PK_CLOTHES]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'COMMENTs'
ALTER TABLE [dbo].[COMMENTs]
ADD CONSTRAINT [PK_COMMENTs]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'MEMBERs'
ALTER TABLE [dbo].[MEMBERs]
ADD CONSTRAINT [PK_MEMBERs]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [OrderId], [ClothesId] in table 'ORDER_ITEM'
ALTER TABLE [dbo].[ORDER_ITEM]
ADD CONSTRAINT [PK_ORDER_ITEM]
    PRIMARY KEY CLUSTERED ([OrderId], [ClothesId] ASC);
GO

-- Creating primary key on [Id] in table 'ORDER_LIST'
ALTER TABLE [dbo].[ORDER_LIST]
ADD CONSTRAINT [PK_ORDER_LIST]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [MemberId], [ClothesId] in table 'SHOPPING_CART'
ALTER TABLE [dbo].[SHOPPING_CART]
ADD CONSTRAINT [PK_SHOPPING_CART]
    PRIMARY KEY CLUSTERED ([MemberId], [ClothesId] ASC);
GO

-- Creating primary key on [MemberId], [ClothesId] in table 'STRAGE_LIST'
ALTER TABLE [dbo].[STRAGE_LIST]
ADD CONSTRAINT [PK_STRAGE_LIST]
    PRIMARY KEY CLUSTERED ([MemberId], [ClothesId] ASC);
GO

-- Creating primary key on [MemberId], [ClothesId] in table 'TRACE_LIST'
ALTER TABLE [dbo].[TRACE_LIST]
ADD CONSTRAINT [PK_TRACE_LIST]
    PRIMARY KEY CLUSTERED ([MemberId], [ClothesId] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [ClothesId] in table 'COMMENTs'
ALTER TABLE [dbo].[COMMENTs]
ADD CONSTRAINT [FK__COMMENT__Clothes__2A4B4B5E]
    FOREIGN KEY ([ClothesId])
    REFERENCES [dbo].[CLOTHES]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__COMMENT__Clothes__2A4B4B5E'
CREATE INDEX [IX_FK__COMMENT__Clothes__2A4B4B5E]
ON [dbo].[COMMENTs]
    ([ClothesId]);
GO

-- Creating foreign key on [ClothesId] in table 'ORDER_ITEM'
ALTER TABLE [dbo].[ORDER_ITEM]
ADD CONSTRAINT [FK__ORDER_ITE__Cloth__32E0915F]
    FOREIGN KEY ([ClothesId])
    REFERENCES [dbo].[CLOTHES]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__ORDER_ITE__Cloth__32E0915F'
CREATE INDEX [IX_FK__ORDER_ITE__Cloth__32E0915F]
ON [dbo].[ORDER_ITEM]
    ([ClothesId]);
GO

-- Creating foreign key on [ClothesId] in table 'STRAGE_LIST'
ALTER TABLE [dbo].[STRAGE_LIST]
ADD CONSTRAINT [FK__STRAGE_LI__Cloth__36B12243]
    FOREIGN KEY ([ClothesId])
    REFERENCES [dbo].[CLOTHES]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__STRAGE_LI__Cloth__36B12243'
CREATE INDEX [IX_FK__STRAGE_LI__Cloth__36B12243]
ON [dbo].[STRAGE_LIST]
    ([ClothesId]);
GO

-- Creating foreign key on [ClothesId] in table 'TRACE_LIST'
ALTER TABLE [dbo].[TRACE_LIST]
ADD CONSTRAINT [FK__TRACE_LIS__Cloth__3A81B327]
    FOREIGN KEY ([ClothesId])
    REFERENCES [dbo].[CLOTHES]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__TRACE_LIS__Cloth__3A81B327'
CREATE INDEX [IX_FK__TRACE_LIS__Cloth__3A81B327]
ON [dbo].[TRACE_LIST]
    ([ClothesId]);
GO

-- Creating foreign key on [MemberId] in table 'COMMENTs'
ALTER TABLE [dbo].[COMMENTs]
ADD CONSTRAINT [FK__COMMENT__MemberI__29572725]
    FOREIGN KEY ([MemberId])
    REFERENCES [dbo].[MEMBERs]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__COMMENT__MemberI__29572725'
CREATE INDEX [IX_FK__COMMENT__MemberI__29572725]
ON [dbo].[COMMENTs]
    ([MemberId]);
GO

-- Creating foreign key on [MemberId] in table 'ORDER_LIST'
ALTER TABLE [dbo].[ORDER_LIST]
ADD CONSTRAINT [FK__ORDER_LIS__Membe__2F10007B]
    FOREIGN KEY ([MemberId])
    REFERENCES [dbo].[MEMBERs]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__ORDER_LIS__Membe__2F10007B'
CREATE INDEX [IX_FK__ORDER_LIS__Membe__2F10007B]
ON [dbo].[ORDER_LIST]
    ([MemberId]);
GO

-- Creating foreign key on [MemberId] in table 'STRAGE_LIST'
ALTER TABLE [dbo].[STRAGE_LIST]
ADD CONSTRAINT [FK__STRAGE_LI__Membe__35BCFE0A]
    FOREIGN KEY ([MemberId])
    REFERENCES [dbo].[MEMBERs]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [MemberId] in table 'TRACE_LIST'
ALTER TABLE [dbo].[TRACE_LIST]
ADD CONSTRAINT [FK__TRACE_LIS__Membe__398D8EEE]
    FOREIGN KEY ([MemberId])
    REFERENCES [dbo].[MEMBERs]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [OrderId] in table 'ORDER_ITEM'
ALTER TABLE [dbo].[ORDER_ITEM]
ADD CONSTRAINT [FK__ORDER_ITE__Order__31EC6D26]
    FOREIGN KEY ([OrderId])
    REFERENCES [dbo].[ORDER_LIST]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------