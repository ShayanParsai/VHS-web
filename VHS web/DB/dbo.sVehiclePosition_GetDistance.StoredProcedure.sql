USE [VHSDb]
GO
/****** Object:  StoredProcedure [dbo].[sVehiclePosition_GetDistance]    Script Date: 2021-12-08 10:42:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sVehiclePosition_GetDistance]
	@VehiclePositionId uniqueidentifier output,
	@RegistrationNumber nvarchar (50),
	@PositionLatitude float,
	@PositionLongitude float
AS
BEGIN
	DECLARE @Point1 geography;
	SET @Point1 = geography::Point(@PositionLatitude, @PositionLongitude, 4326)

	SET
		@VehiclePositionId = (SELECT v.VehiclePositionId
	FROM
		dbo.VehiclePosition AS v
	WHERE 
	v.RegistrationNumber = @RegistrationNumber 
	AND @Point1.STDistance(v.Point) <= v.PositionRadius)
	
END
GO
