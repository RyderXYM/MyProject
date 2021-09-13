
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 09/13/2021 00:41:20
-- Generated from EDMX file: C:\Users\Ryder\source\repos\MyProject\MyProject\Models\MPmodel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Database1];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'People'
CREATE TABLE [dbo].[People] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [firstName] nvarchar(max)  NOT NULL,
    [lastName] nvarchar(max)  NOT NULL,
    [phoneNumber] nvarchar(max)  NOT NULL,
    [type] nvarchar(max)  NOT NULL,
    [Registration_Id] int  NOT NULL
);
GO

-- Creating table 'Transactions'
CREATE TABLE [dbo].[Transactions] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [price] nvarchar(max)  NOT NULL,
    [date] nvarchar(max)  NOT NULL,
    [type] nvarchar(max)  NOT NULL,
    [PersonId] int  NOT NULL,
    [Property_Id] int  NOT NULL
);
GO

-- Creating table 'Properties'
CREATE TABLE [dbo].[Properties] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [area] nvarchar(max)  NOT NULL,
    [length] nvarchar(max)  NOT NULL,
    [width] nvarchar(max)  NOT NULL,
    [height] nvarchar(max)  NOT NULL,
    [location] nvarchar(max)  NOT NULL,
    [postCode] nvarchar(max)  NOT NULL,
    [num_bedroom] nvarchar(max)  NOT NULL,
    [num_bathroom] nvarchar(max)  NOT NULL,
    [num_carpark] nvarchar(max)  NOT NULL,
    [year_built] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Registrations'
CREATE TABLE [dbo].[Registrations] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [password] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'People'
ALTER TABLE [dbo].[People]
ADD CONSTRAINT [PK_People]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Transactions'
ALTER TABLE [dbo].[Transactions]
ADD CONSTRAINT [PK_Transactions]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Properties'
ALTER TABLE [dbo].[Properties]
ADD CONSTRAINT [PK_Properties]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Registrations'
ALTER TABLE [dbo].[Registrations]
ADD CONSTRAINT [PK_Registrations]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Property_Id] in table 'Transactions'
ALTER TABLE [dbo].[Transactions]
ADD CONSTRAINT [FK_TransactionProperty]
    FOREIGN KEY ([Property_Id])
    REFERENCES [dbo].[Properties]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TransactionProperty'
CREATE INDEX [IX_FK_TransactionProperty]
ON [dbo].[Transactions]
    ([Property_Id]);
GO

-- Creating foreign key on [Registration_Id] in table 'People'
ALTER TABLE [dbo].[People]
ADD CONSTRAINT [FK_PersonRegistration]
    FOREIGN KEY ([Registration_Id])
    REFERENCES [dbo].[Registrations]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PersonRegistration'
CREATE INDEX [IX_FK_PersonRegistration]
ON [dbo].[People]
    ([Registration_Id]);
GO

-- Creating foreign key on [PersonId] in table 'Transactions'
ALTER TABLE [dbo].[Transactions]
ADD CONSTRAINT [FK_PersonTransaction]
    FOREIGN KEY ([PersonId])
    REFERENCES [dbo].[People]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PersonTransaction'
CREATE INDEX [IX_FK_PersonTransaction]
ON [dbo].[Transactions]
    ([PersonId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------