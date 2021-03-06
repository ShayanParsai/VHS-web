USE [VHSDb]
GO
/****** Object:  StoredProcedure [dbo].[sStatus_GetByRegNo]    Script Date: 2021-12-08 10:42:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sStatus_GetByRegNo]
	@RegistrationNumber nvarchar (50)
AS
BEGIN

	SELECT 
		StatusId = s.StatusId, 
		RegistrationNumber = s.RegistrationNumber, 
		BatteryStatus = s.BatteryStatus, 
		TripMeter = s.TripMeter, 
		LockStatus = s.LockStatus,
		AlarmStatus = s.AlarmStatus,
		DateOfCreation = s.DateOfCreation,
		DateLastModified = s.DateLastModified,
		TirePressures = s.TirePressures,
		PositionLatitude = v.PositionLatitude,
		PositionLongitude = v.PositionLongitude,
		PositionRadius = v.PositionRadius
	FROM 
		dbo.Status AS s
		LEFT OUTER JOIN dbo.VehiclePosition AS v 
		ON s.RegistrationNumber = v.RegistrationNumber
	WHERE
		s.RegistrationNumber = @RegistrationNumber;

END
GO
