USE [VHSDb]
GO
/****** Object:  Table [dbo].[Alarm]    Script Date: 2021-12-08 10:42:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alarm](
	[AlarmId] [uniqueidentifier] NOT NULL,
	[RegistrationNumber] [nvarchar](50) NOT NULL,
	[DateOfCreation] [datetime] NOT NULL,
	[DateLastModified] [datetime] NOT NULL,
	[positionLatitude] [float] NULL,
	[positionLongitude] [float] NULL
) ON [PRIMARY]
GO
