﻿--create table 'Students'
Create table [dbo].[Students]
(
	[Id] int IDENTITY (1,1) NOT NULL,
	[FirstName] nvarchar (max) NOT NULL,
	[LastName] nvarchar (max) NOT NULL,
	[UserId] nvarchar (max) NOT NULL
	PRIMARY KEY (Id)
);
GO

Create table [dbo].[Units]
(
	[Id] int IDENTITY (1,1) NOT NULL,
	[Name] nvarchar (max) NOT NULL,
	[Description] nvarchar (max) NOT NULL,
	[StudentId] int NOT NULL
	PRIMARY KEY (Id),
	FOREIGN KEY (StudentId) REFERENCES Students (Id)
);
GO