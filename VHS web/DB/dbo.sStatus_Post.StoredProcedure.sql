USE [VHSDb]
GO
/****** Object:  StoredProcedure [dbo].[sStatus_Post]    Script Date: 2021-12-08 10:42:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sStatus_Post]
	@StatusId uniqueidentifier output,
	@RegistrationNumber nvarchar (50),
	@BatteryStatus int,
	@TripMeter float,
	@LockStatus int,
	@AlarmStatus int,
	@TirePressures nvarchar (50)
AS
BEGIN

	UPDATE 
		dbo.Status
	SET
		@StatusId = StatusId,
		BatteryStatus = @BatteryStatus,
		TripMeter =	@TripMeter,
		LockStatus = @LockStatus,
		AlarmStatus = @AlarmStatus,
		DateLastModified = GETDATE(),
		TirePressures =	@TirePressures

	WHERE	
		RegistrationNumber = @RegistrationNumber;

	IF (@@ROWCOUNT = 0) BEGIN

	SET @StatusId = NEWID();

		INSERT INTO 
			dbo.Status
		VALUES
			(
				@StatusId,
				@RegistrationNumber,
				@BatteryStatus,
				@TripMeter,
				@LockStatus,
				@AlarmStatus,
				GETDATE(),
				GETDATE(),
				@TirePressures
			);
	END

END
GO
