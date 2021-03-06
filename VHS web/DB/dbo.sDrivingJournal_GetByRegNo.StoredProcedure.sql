USE [VHSDb]
GO
/****** Object:  StoredProcedure [dbo].[sDrivingJournal_GetByRegNo]    Script Date: 2021-12-08 10:42:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sDrivingJournal_GetByRegNo]
	@RegistrationNumber nvarchar (50)
AS
BEGIN

	SELECT 
		DrivingJournalId = d.DrivingjournalId, 
		RegistrationNumber = d.RegistrationNumber, 
		StartTime = d.StartTime, 
		StopTime = d.StopTime,
		DistanceInKm = d.DistanceInKm,
		EnergyConsumptionInkWh = d.EnergyConsumptionInkWh,
		AverageConsumptionInkWhPer100km = d.AverageConsumptionInkWhPer100km,
		AverageSpeedInKmPerHour = d.AverageSpeedInKmPerHour,
		TypeOfTravel = d.TypeOfTravel,
		DateOfCreation = d.DateOfCreation,
		DateLastModified = d.DateLastModified
	FROM 
		dbo.DrivingJournal AS d
	WHERE
		d.RegistrationNumber = @RegistrationNumber;

END
GO
