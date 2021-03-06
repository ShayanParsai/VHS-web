USE [VHSDb]
GO
/****** Object:  Table [dbo].[VehiclePosition]    Script Date: 2021-12-08 10:42:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehiclePosition](
	[VehiclePositionId] [uniqueidentifier] NOT NULL,
	[RegistrationNumber] [nvarchar](50) NOT NULL,
	[PositionLatitude] [float] NULL,
	[PositionLongitude] [float] NULL,
	[Point] [geography] NULL,
	[DateOfCreation] [datetime] NOT NULL,
	[DateLastModified] [datetime] NOT NULL,
	[PositionRadius] [float] NULL,
 CONSTRAINT [PK_VehiclePosition] PRIMARY KEY CLUSTERED 
(
	[RegistrationNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
