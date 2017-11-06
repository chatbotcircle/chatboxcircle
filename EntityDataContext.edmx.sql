
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 11/03/2017 10:38:36
-- Generated from EDMX file: C:\Work\Circle\MetalQuery\EntityDataContext.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Bot];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK__price__metal_id___4BAC3F29]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[price] DROP CONSTRAINT [FK__price__metal_id___4BAC3F29];
GO
IF OBJECT_ID(N'[dbo].[FK__price__metal_id___4E88ABD4]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[price] DROP CONSTRAINT [FK__price__metal_id___4E88ABD4];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[metal]', 'U') IS NOT NULL
    DROP TABLE [dbo].[metal];
GO
IF OBJECT_ID(N'[dbo].[price]', 'U') IS NOT NULL
    DROP TABLE [dbo].[price];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'metals'
CREATE TABLE [dbo].[metals] (
    [metal_id] int IDENTITY(1,1) NOT NULL,
    [name] nvarchar(50)  NOT NULL,
    [code] nvarchar(5)  NULL
);
GO

-- Creating table 'prices'
CREATE TABLE [dbo].[prices] (
    [price_id] int IDENTITY(1,1) NOT NULL,
    [metal_id_fk] int  NOT NULL,
    [date] datetime  NOT NULL,
    [price1] decimal(19,4)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [metal_id] in table 'metals'
ALTER TABLE [dbo].[metals]
ADD CONSTRAINT [PK_metals]
    PRIMARY KEY CLUSTERED ([metal_id] ASC);
GO

-- Creating primary key on [price_id] in table 'prices'
ALTER TABLE [dbo].[prices]
ADD CONSTRAINT [PK_prices]
    PRIMARY KEY CLUSTERED ([price_id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [metal_id_fk] in table 'prices'
ALTER TABLE [dbo].[prices]
ADD CONSTRAINT [FK__price__metal_id___4BAC3F29]
    FOREIGN KEY ([metal_id_fk])
    REFERENCES [dbo].[metals]
        ([metal_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__price__metal_id___4BAC3F29'
CREATE INDEX [IX_FK__price__metal_id___4BAC3F29]
ON [dbo].[prices]
    ([metal_id_fk]);
GO

-- Creating foreign key on [metal_id_fk] in table 'prices'
ALTER TABLE [dbo].[prices]
ADD CONSTRAINT [FK__price__metal_id___4E88ABD4]
    FOREIGN KEY ([metal_id_fk])
    REFERENCES [dbo].[metals]
        ([metal_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__price__metal_id___4E88ABD4'
CREATE INDEX [IX_FK__price__metal_id___4E88ABD4]
ON [dbo].[prices]
    ([metal_id_fk]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------