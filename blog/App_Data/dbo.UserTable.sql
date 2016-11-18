CREATE TABLE [dbo].[UserTable] (
    [ID]       INT           NOT NULL IDENTITY,
    [UserName] VARCHAR (255) NULL,
    [Password] VARCHAR (255) NULL ,
    PRIMARY KEY CLUSTERED ([ID] ASC)
);

