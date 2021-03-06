USE [VHSDb]
GO
/****** Object:  StoredProcedure [dbo].[sAlarm_Post]    Script Date: 2021-12-08 10:42:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sAlarm_Post]
	@AlarmId uniqueidentifier output,
	@RegistrationNumber nvarchar (50),
	@PositionLatitude float,
	@PositionLongitude float
AS
BEGIN

	UPDATE 
		dbo.Alarm
	SET
		@AlarmId = AlarmId,
		DateLastModified = GETDATE(),
		positionLatitude = @PositionLatitude,
		positionLongitude = @PositionLongitude

	WHERE	
		RegistrationNumber = @RegistrationNumber;

	IF (@@ROWCOUNT = 0) BEGIN

	SET @AlarmId = NEWID();

		INSERT INTO 
			dbo.Alarm
		VALUES
			(
				@AlarmId,
				@RegistrationNumber,
				GETDATE(),
				GETDATE(),
				@PositionLatitude,
				@PositionLongitude
			);
	END

END
GO
