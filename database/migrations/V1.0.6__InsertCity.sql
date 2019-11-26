IF EXISTS ( SELECT  *
            FROM    sys.objects
            WHERE   object_id = OBJECT_ID(N'dbo.InsertCity'))
	DROP PROCEDURE dbo.InsertCity;

GO

CREATE PROCEDURE dbo.InsertCity
	@Name VARCHAR(255),
	@CategoryName VARCHAR(255)
AS
	BEGIN

	INSERT INTO [dbo].[Cities]([Name], [CategoryId])
		SELECT [Name] = @Name, [CategoryId] = cp.[Id]
		FROM [dbo].[PricingCategories] AS cp
		WHERE cp.[Name] = @CategoryName

	END

GO