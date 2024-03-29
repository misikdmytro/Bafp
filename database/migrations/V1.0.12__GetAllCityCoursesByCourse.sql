IF EXISTS ( SELECT  *
            FROM    sys.objects
            WHERE   object_id = OBJECT_ID(N'dbo.GetAllCityCoursesByCourse'))
	DROP PROCEDURE dbo.GetAllCityCoursesByCourse;

GO

CREATE PROCEDURE dbo.GetAllCityCoursesByCourse
	@CourseId INT
AS
	BEGIN

	SELECT [CityId] = c.[CityId], [CourseId] = c.[CourseId], Count = ISNULL(cc.[Count], 0)
		FROM (SELECT [CityId] = ct.[Id], [CourseId] = cr.[Id] FROM [dbo].[Cities] AS ct, [dbo].[Courses] AS cr) AS c
			JOIN [dbo].[CityCourses] AS cc
				ON c.[CityId] = cc.[CityId] AND c.[CourseId] = cc.[CourseId]
		WHERE c.[CourseId] = @CourseId

	END

GO