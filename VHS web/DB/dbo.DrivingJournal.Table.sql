USE [VHSDb]
GO
/****** Object:  Table [dbo].[DrivingJournal]    Script Date: 2021-12-08 10:42:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DrivingJournal](
	[DrivingJournalId] [uniqueidentifier] NOT NULL,
	[RegistrationNumber] [nvarchar](50) NOT NULL,
	[StartTime] [datetime] NOT NULL,
	[StopTime] [datetime] NOT NULL,
	[DistanceInKm] [float] NOT NULL,
	[EnergyConsumptionInkWh] [float] NOT NULL,
	[AverageConsumptionInkWhPer100km] [float] NOT NULL,
	[AverageSpeedInKmPerHour] [float] NOT NULL,
	[DateOfCreation] [datetime] NOT NULL,
	[TypeOfTravel] [nvarchar](50) NOT NULL,
	[DateLastModified] [datetime] NOT NULL,
 CONSTRAINT [PK_Drivingjournal] PRIMARY KEY CLUSTERED 
(
	[DrivingJournalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
