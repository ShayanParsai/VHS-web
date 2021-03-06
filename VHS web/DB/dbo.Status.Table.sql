USE [VHSDb]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 2021-12-08 10:42:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[StatusId] [uniqueidentifier] NOT NULL,
	[RegistrationNumber] [nvarchar](50) NOT NULL,
	[BatteryStatus] [int] NOT NULL,
	[TripMeter] [float] NOT NULL,
	[LockStatus] [int] NOT NULL,
	[AlarmStatus] [int] NOT NULL,
	[DateOfCreation] [datetime] NOT NULL,
	[DateLastModified] [datetime] NOT NULL,
	[TirePressures] [nvarchar](50) NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[RegistrationNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
