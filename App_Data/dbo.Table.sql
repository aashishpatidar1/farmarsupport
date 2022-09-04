CREATE TABLE [dbo].[usinfo] (
    [Name]     VARCHAR (50) NOT NULL,
    [Mobile]   VARCHAR (50) NOT NULL,
    [Email]    VARCHAR (50) NULL,
    [District] VARCHAR (50) NULL,
    [Gender]   VARCHAR (50) NULL,
    [Password] VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_usinfo_1] PRIMARY KEY CLUSTERED ([Mobile] ASC)
)
