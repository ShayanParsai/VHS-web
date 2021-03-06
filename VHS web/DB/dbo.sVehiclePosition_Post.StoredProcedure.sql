USE [VHSDb]
GO
/****** Object:  StoredProcedure [dbo].[sVehiclePosition_Post]    Script Date: 2021-12-08 10:42:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sVehiclePosition_Post]
	@VehiclePositionId uniqueidentifier,
	@RegistrationNumber nvarchar (50),
	@PositionLatitude float,
	@PositionLongitude float,
	@PositionRadius float
AS
BEGIN
	
	UPDATE 
		dbo.VehiclePosition
	SET
		PositionLatitude = @PositionLatitude,
		PositionLongitude = @PositionLongitude,
		Point = geography::Point(@PositionLatitude, @PositionLongitude, 4326),
		DateLastModified = GETDATE()

	WHERE	
		RegistrationNumber = @RegistrationNumber;

	IF (@@ROWCOUNT = 0) BEGIN

	DECLARE @Point geography;

	SET @Point = geography::Point(@PositionLatitude, @PositionLongitude, 4326);

		INSERT INTO 
			dbo.VehiclePosition
		VALUES
			(
				@VehiclePositionId,
				@RegistrationNumber,
				@PositionLatitude,
				@PositionLongitude,
				@Point,
				GETDATE(),
				GETDATE(),
				@PositionRadius
			);
	END

END
GO
