CREATE TABLE [dbo].[Table]
(
	[email] NVARCHAR(50) NOT NULL PRIMARY KEY, 
    [password] NVARCHAR(50) NULL, 
    [first_name] NCHAR(50) NULL, 
    [last_name] NCHAR(50) NULL, 
    [age] INT NULL, 
    [sex] NCHAR(10) NULL, 
    [dob] DATE NULL, 
    [pic] IMAGE NULL
)
