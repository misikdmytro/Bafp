IF EXISTS ( SELECT  *
            FROM    sys.objects
            WHERE   object_id = OBJECT_ID(N'dbo.InsertCourse'))
	DROP PROCEDURE dbo.InsertCourse;

GO

CREATE PROCEDURE dbo.InsertCourse
	@Name VARCHAR(255)
AS
	BEGIN

	INSERT INTO [dbo].[Courses]([Name])
	OUTPUT INSERTED.*
		VALUES (@Name)

	END

GO