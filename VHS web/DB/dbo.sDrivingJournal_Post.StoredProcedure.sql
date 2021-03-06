USE [VHSDb]
GO
/****** Object:  StoredProcedure [dbo].[sDrivingJournal_Post]    Script Date: 2021-12-08 10:42:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sDrivingJournal_Post]
	@DrivingJournalId uniqueidentifier output,
	@RegistrationNumber nvarchar (50),
	@StartTime datetime,
	@StopTime datetime,
	@DistanceInKm float,
	@EnergyConsumptionInkWh float,
	@AverageConsumptionInkWhPer100km float,
	@AverageSpeedInKmPerHour float,
	@TypeOfTravel nvarchar (50)
AS
BEGIN

	SET @DrivingJournalId = NEWID();

		INSERT INTO 
			dbo.DrivingJournal
		VALUES
			(
				@DrivingJournalId,
				@RegistrationNumber,
				@StartTime,
				@StopTime,
				@DistanceInKm,
				@EnergyConsumptionInkWh,
				@AverageConsumptionInkWhPer100km,
				@AverageSpeedInKmPerHour,
				GETDATE(),
				@TypeOfTravel,
				GETDATE()
			);
END
GO
