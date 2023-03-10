USE [StudentManagement1]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 1/31/2023 9:28:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BellNotification]    Script Date: 1/31/2023 9:28:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BellNotification](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DateCreated] [datetime] NULL,
	[IsRead] [bit] NULL,
	[NotifiId] [int] NULL,
	[UserId] [nvarchar](250) NULL,
 CONSTRAINT [PK_BellNotification] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Events]    Script Date: 1/31/2023 9:28:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Events](
	[EventId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](250) NULL,
	[Activities] [nvarchar](250) NULL,
	[Act] [nvarchar](250) NULL,
	[PowerExerted] [nvarchar](250) NULL,
	[PowerDev] [nvarchar](250) NULL,
	[Think] [nchar](10) NULL,
	[ListEventId] [int] NULL,
	[Status] [int] NULL,
	[SchoolYearId] [int] NULL,
 CONSTRAINT [PK_Events] PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupInfos]    Script Date: 1/31/2023 9:28:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupInfos](
	[GroupInfoId] [int] IDENTITY(1,1) NOT NULL,
	[EventId] [int] NOT NULL,
	[ConnectionId] [nvarchar](max) NULL,
	[name] [nvarchar](250) NULL,
	[Role] [nvarchar](250) NULL,
	[UserId] [nvarchar](250) NULL,
	[GroupInfoId1] [int] NULL,
 CONSTRAINT [PK_GroupInfos] PRIMARY KEY CLUSTERED 
(
	[GroupInfoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ListEvents]    Script Date: 1/31/2023 9:28:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ListEvents](
	[ListEventId] [int] IDENTITY(1,1) NOT NULL,
	[ListEventName] [nvarchar](250) NULL,
	[Icon] [nvarchar](250) NULL,
 CONSTRAINT [PK_ListEvents] PRIMARY KEY CLUSTERED 
(
	[ListEventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Messages]    Script Date: 1/31/2023 9:28:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messages](
	[MessagesId] [int] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](500) NULL,
	[Timestamp] [datetime] NULL,
	[EventId] [int] NULL,
	[UserId] [nvarchar](250) NULL,
 CONSTRAINT [PK_Messages] PRIMARY KEY CLUSTERED 
(
	[MessagesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MessagesSkills]    Script Date: 1/31/2023 9:28:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MessagesSkills](
	[MessagesId] [int] NOT NULL,
	[SkillId] [int] NOT NULL,
	[YearStudent] [int] NULL,
 CONSTRAINT [PK_MessagesSkills] PRIMARY KEY CLUSTERED 
(
	[MessagesId] ASC,
	[SkillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleClaims]    Script Date: 1/31/2023 9:28:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](50) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_RoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 1/31/2023 9:28:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SchoolYears]    Script Date: 1/31/2023 9:28:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchoolYears](
	[SchoolYearId] [int] IDENTITY(1,1) NOT NULL,
	[SchoolYearName] [nvarchar](250) NULL,
 CONSTRAINT [PK_SchoolYears] PRIMARY KEY CLUSTERED 
(
	[SchoolYearId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skills]    Script Date: 1/31/2023 9:28:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skills](
	[SkillId] [int] IDENTITY(1,1) NOT NULL,
	[SkillName] [nvarchar](250) NULL,
	[Style] [nvarchar](250) NULL,
 CONSTRAINT [PK_Skills] PRIMARY KEY CLUSTERED 
(
	[SkillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserClaims]    Script Date: 1/31/2023 9:28:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](250) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserLogins]    Script Date: 1/31/2023 9:28:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_UserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 1/31/2023 9:28:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoles](
	[UserId] [nvarchar](250) NOT NULL,
	[RoleId] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 1/31/2023 9:28:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [nvarchar](250) NOT NULL,
	[Phone] [nvarchar](250) NULL,
	[Active] [bit] NULL,
	[CreateDate] [date] NULL,
	[LastLogin] [date] NULL,
	[Avatar] [nvarchar](250) NULL,
	[ScholasticId] [int] NULL,
	[ParentId] [nvarchar](50) NULL,
	[bellNotifiId] [int] NULL,
	[UserName] [nvarchar](250) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](250) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[StudentCode] [nvarchar](50) NULL,
	[BellNotifiId1] [int] NULL,
	[FullName] [nvarchar](250) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserSchoolYears]    Script Date: 1/31/2023 9:28:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserSchoolYears](
	[UserId] [nvarchar](250) NOT NULL,
	[SchoolYearId] [int] NOT NULL,
 CONSTRAINT [PK_UserSchoolYears_1] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[SchoolYearId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserTokens]    Script Date: 1/31/2023 9:28:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTokens](
	[UserId] [nvarchar](250) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211111042114_UpdateIdentity', N'5.0.12')
GO
SET IDENTITY_INSERT [dbo].[BellNotification] ON 

INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (1, CAST(N'2022-03-11T15:56:28.647' AS DateTime), 1, 2760, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (2, CAST(N'2022-03-11T15:56:28.677' AS DateTime), 1, 2761, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (3, CAST(N'2022-03-11T15:56:28.677' AS DateTime), 1, 2762, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (4, CAST(N'2022-03-11T15:56:28.680' AS DateTime), 1, 2763, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (5, CAST(N'2022-03-11T15:56:28.680' AS DateTime), 1, 2764, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (6, CAST(N'2022-03-11T15:56:28.680' AS DateTime), 1, 2765, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (1002, CAST(N'2023-01-31T09:23:35.637' AS DateTime), 1, 2750, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (1003, CAST(N'2023-01-31T09:23:35.657' AS DateTime), 1, 2754, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (1004, CAST(N'2023-01-31T09:23:35.660' AS DateTime), 1, 2756, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (1005, CAST(N'2023-01-31T09:23:35.660' AS DateTime), 1, 2767, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (1006, CAST(N'2023-01-31T09:23:35.663' AS DateTime), 1, 2768, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (1007, CAST(N'2023-01-31T09:23:35.663' AS DateTime), 1, 2769, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (1008, CAST(N'2023-01-31T09:23:35.663' AS DateTime), 1, 2770, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (1009, CAST(N'2023-01-31T09:23:35.667' AS DateTime), 1, 2771, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (1010, CAST(N'2023-01-31T09:23:35.667' AS DateTime), 1, 2772, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (1011, CAST(N'2023-01-31T09:23:35.670' AS DateTime), 1, 2773, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (1012, CAST(N'2023-01-31T09:23:35.670' AS DateTime), 1, 2775, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (1013, CAST(N'2023-01-31T09:23:35.670' AS DateTime), 1, 2776, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (1014, CAST(N'2023-01-31T09:23:35.673' AS DateTime), 1, 2777, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (1015, CAST(N'2023-01-31T09:23:35.673' AS DateTime), 1, 2778, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (1016, CAST(N'2023-01-31T09:23:35.673' AS DateTime), 1, 2779, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (1017, CAST(N'2023-01-31T09:23:35.677' AS DateTime), 1, 2780, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (1018, CAST(N'2023-01-31T09:23:35.677' AS DateTime), 1, 2782, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (1019, CAST(N'2023-01-31T09:23:35.680' AS DateTime), 1, 2783, N'001')
SET IDENTITY_INSERT [dbo].[BellNotification] OFF
GO
SET IDENTITY_INSERT [dbo].[Events] ON 

INSERT [dbo].[Events] ([EventId], [UserId], [Activities], [Act], [PowerExerted], [PowerDev], [Think], [ListEventId], [Status], [SchoolYearId]) VALUES (23, N'82ca568b-07b6-4e1d-889d-de43c735228f', N'sadfsaf', N'asdfasf', N'sadfsadf', N'sadfsaf', N'sadfsdaf  ', 1, 2, 1)
INSERT [dbo].[Events] ([EventId], [UserId], [Activities], [Act], [PowerExerted], [PowerDev], [Think], [ListEventId], [Status], [SchoolYearId]) VALUES (133, N'001', N'ドは必須', N'ドは必須', N'ドは必須3', N'ドは必須2', N'ドは必須4     ', 7, 3, 3)
INSERT [dbo].[Events] ([EventId], [UserId], [Activities], [Act], [PowerExerted], [PowerDev], [Think], [ListEventId], [Status], [SchoolYearId]) VALUES (136, N'005', N'出来', N'出来', N'出来', N'出来', N'出来        ', 4, 2, 2)
INSERT [dbo].[Events] ([EventId], [UserId], [Activities], [Act], [PowerExerted], [PowerDev], [Think], [ListEventId], [Status], [SchoolYearId]) VALUES (143, N'001', N'の', N'の', N'の', N'の', N'の         ', 4, 3, 3)
INSERT [dbo].[Events] ([EventId], [UserId], [Activities], [Act], [PowerExerted], [PowerDev], [Think], [ListEventId], [Status], [SchoolYearId]) VALUES (147, N'001', N'行', N'行', N'行', N'行', N'行         ', 5, 3, 3)
INSERT [dbo].[Events] ([EventId], [UserId], [Activities], [Act], [PowerExerted], [PowerDev], [Think], [ListEventId], [Status], [SchoolYearId]) VALUES (148, N'001', N'た', N'た', N'た', N'た', N'た         ', 5, 3, 3)
INSERT [dbo].[Events] ([EventId], [UserId], [Activities], [Act], [PowerExerted], [PowerDev], [Think], [ListEventId], [Status], [SchoolYearId]) VALUES (149, N'001', N'揮', N'揮', N'揮', N'揮', N'揮         ', 1, 2, 3)
INSERT [dbo].[Events] ([EventId], [UserId], [Activities], [Act], [PowerExerted], [PowerDev], [Think], [ListEventId], [Status], [SchoolYearId]) VALUES (150, N'001', N'行動', N'行動', N'行動', N'行動', N'行動        ', 1, 2, 3)
INSERT [dbo].[Events] ([EventId], [UserId], [Activities], [Act], [PowerExerted], [PowerDev], [Think], [ListEventId], [Status], [SchoolYearId]) VALUES (151, N'001', N'ttt', N'tt', N't', N't', N't         ', 2, 2, 3)
INSERT [dbo].[Events] ([EventId], [UserId], [Activities], [Act], [PowerExerted], [PowerDev], [Think], [ListEventId], [Status], [SchoolYearId]) VALUES (152, N'82ca568b-07b6-4e1d-889d-de43c735228f', N'1', N'1', N'1', N'1', N'1         ', 2, 2, 1)
INSERT [dbo].[Events] ([EventId], [UserId], [Activities], [Act], [PowerExerted], [PowerDev], [Think], [ListEventId], [Status], [SchoolYearId]) VALUES (153, N'006', N'f', N'f', N'f', N'f', N'f         ', 1, 2, 4)
SET IDENTITY_INSERT [dbo].[Events] OFF
GO
SET IDENTITY_INSERT [dbo].[GroupInfos] ON 

INSERT [dbo].[GroupInfos] ([GroupInfoId], [EventId], [ConnectionId], [name], [Role], [UserId], [GroupInfoId1]) VALUES (1377, 113, N'zBPGPkrXtfArZNbjeuTVSw', N'teacher', N'Teacher', N'002', NULL)
INSERT [dbo].[GroupInfos] ([GroupInfoId], [EventId], [ConnectionId], [name], [Role], [UserId], [GroupInfoId1]) VALUES (1379, 132, N'zBPGPkrXtfArZNbjeuTVSw', N'teacher', N'Teacher', N'002', NULL)
INSERT [dbo].[GroupInfos] ([GroupInfoId], [EventId], [ConnectionId], [name], [Role], [UserId], [GroupInfoId1]) VALUES (1381, 135, N'zBPGPkrXtfArZNbjeuTVSw', N'teacher', N'Teacher', N'002', NULL)
INSERT [dbo].[GroupInfos] ([GroupInfoId], [EventId], [ConnectionId], [name], [Role], [UserId], [GroupInfoId1]) VALUES (4547, 132, N'NczK7SRFGYCHieL6d8aW9A', N'doctor', N'Doctor', N'004', NULL)
INSERT [dbo].[GroupInfos] ([GroupInfoId], [EventId], [ConnectionId], [name], [Role], [UserId], [GroupInfoId1]) VALUES (4551, 137, N'NczK7SRFGYCHieL6d8aW9A', N'doctor', N'Doctor', N'004', NULL)
SET IDENTITY_INSERT [dbo].[GroupInfos] OFF
GO
SET IDENTITY_INSERT [dbo].[ListEvents] ON 

INSERT [dbo].[ListEvents] ([ListEventId], [ListEventName], [Icon]) VALUES (1, N'水泳', N'fas fa-swimmer')
INSERT [dbo].[ListEvents] ([ListEventId], [ListEventName], [Icon]) VALUES (2, N'サッカー', N'fas fa-futbol')
INSERT [dbo].[ListEvents] ([ListEventId], [ListEventName], [Icon]) VALUES (3, N'野球', N'fas fa-baseball-ball')
INSERT [dbo].[ListEvents] ([ListEventId], [ListEventName], [Icon]) VALUES (4, N'バレーボール', N'fas fa-volleyball-ball')
INSERT [dbo].[ListEvents] ([ListEventId], [ListEventName], [Icon]) VALUES (5, N'歌う', N'fas fa-microphone')
INSERT [dbo].[ListEvents] ([ListEventId], [ListEventName], [Icon]) VALUES (6, N'読書', N'fas fa-book')
INSERT [dbo].[ListEvents] ([ListEventId], [ListEventName], [Icon]) VALUES (7, N'チェス', N'fas fa-chess-knight')
INSERT [dbo].[ListEvents] ([ListEventId], [ListEventName], [Icon]) VALUES (8, N'卓球', N'fas fa-table-tennis
')
SET IDENTITY_INSERT [dbo].[ListEvents] OFF
GO
SET IDENTITY_INSERT [dbo].[Messages] ON 

INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (2750, N'#主体性 ', CAST(N'2021-12-14T19:49:35.783' AS DateTime), 151, N'004')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (2751, N'#主体性 ', CAST(N'2021-12-14T20:30:15.313' AS DateTime), 152, N'004')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (2752, N'#ストレスコントロール力 ', CAST(N'2021-12-14T20:36:59.147' AS DateTime), 136, N'004')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (2753, N'#課題発見力 ', CAST(N'2021-12-15T08:55:12.070' AS DateTime), 153, N'004')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (2754, N'#働きかけ力 ', CAST(N'2021-12-23T14:57:57.120' AS DateTime), 151, N'004')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (2755, N'#主体性 ', CAST(N'2021-12-24T09:46:38.080' AS DateTime), 152, N'004')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (2756, N'#働きかけ力 ', CAST(N'2021-12-24T10:17:49.317' AS DateTime), 151, N'004')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (2757, N'#ストレスコントロール力 ', CAST(N'2021-12-24T10:19:25.420' AS DateTime), 133, N'004')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (2758, N'#ストレスコントロール力 ', CAST(N'2021-12-24T10:20:53.460' AS DateTime), 152, N'004')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (2759, N'#ストレスコントロール力 ', CAST(N'2021-12-24T10:22:08.353' AS DateTime), 152, N'004')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (2760, N'#ストレスコントロール力 ', CAST(N'2021-12-24T10:24:44.343' AS DateTime), 150, N'004')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (2761, N'#ストレスコントロール力 ', CAST(N'2021-12-24T10:24:47.060' AS DateTime), 150, N'004')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (2762, N'#ストレスコントロール力 ', CAST(N'2021-12-24T10:24:49.220' AS DateTime), 150, N'004')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (2763, N'#ストレスコントロール力 ', CAST(N'2021-12-24T10:24:49.410' AS DateTime), 150, N'004')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (2764, N'#ストレスコントロール力 ', CAST(N'2021-12-24T10:24:49.567' AS DateTime), 150, N'004')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (2765, N'#ストレスコントロール力 ', CAST(N'2021-12-24T10:24:49.863' AS DateTime), 150, N'004')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (2766, N'#ストレスコントロール力 ', CAST(N'2021-12-24T10:25:59.847' AS DateTime), 149, N'004')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (2767, N'#状況把握力 ', CAST(N'2021-12-24T15:08:23.487' AS DateTime), 151, N'004')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (2768, N'#状況把握力 ', CAST(N'2021-12-24T15:08:25.693' AS DateTime), 151, N'004')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (2769, N'#状況把握力 ', CAST(N'2021-12-24T15:08:25.913' AS DateTime), 151, N'004')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (2770, N'#状況把握力 ', CAST(N'2021-12-24T15:08:26.073' AS DateTime), 151, N'004')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (2771, N'#状況把握力 ', CAST(N'2021-12-24T15:08:26.203' AS DateTime), 151, N'004')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (2772, N'#状況把握力 ', CAST(N'2021-12-24T15:08:26.437' AS DateTime), 151, N'004')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (2773, N'#発信力 ', CAST(N'2021-12-24T15:44:07.740' AS DateTime), 151, N'004')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (2774, N'#計画力 ', CAST(N'2021-12-24T15:50:54.030' AS DateTime), 152, N'004')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (2775, N'#課題発見力 ', CAST(N'2021-12-26T18:22:42.937' AS DateTime), 151, N'004')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (2776, N'#課題発見力 ', CAST(N'2021-12-26T18:22:46.973' AS DateTime), 151, N'004')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (2777, N'#課題発見力 ', CAST(N'2021-12-26T18:22:47.500' AS DateTime), 151, N'004')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (2778, N'#課題発見力 ', CAST(N'2021-12-26T18:22:47.773' AS DateTime), 151, N'004')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (2779, N'#課題発見力 ', CAST(N'2021-12-26T18:22:47.850' AS DateTime), 151, N'004')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (2780, N'#課題発見力 ', CAST(N'2021-12-26T18:25:44.193' AS DateTime), 151, N'004')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (2781, N'#計画力 ', CAST(N'2021-12-27T20:00:17.387' AS DateTime), 148, N'004')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (2782, N'#ストレスコントロール力 ', CAST(N'2021-12-27T20:02:38.397' AS DateTime), 151, N'004')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (2783, N'#主体性 ', CAST(N'2021-12-27T21:12:51.300' AS DateTime), 151, N'004')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (2784, N'dđs', CAST(N'2023-01-31T09:23:40.630' AS DateTime), 151, N'001')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (2785, N'sdsdsd', CAST(N'2023-01-31T09:23:42.897' AS DateTime), 151, N'001')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (2786, N'😊', CAST(N'2023-01-31T09:23:57.507' AS DateTime), 151, N'001')
SET IDENTITY_INSERT [dbo].[Messages] OFF
GO
INSERT [dbo].[MessagesSkills] ([MessagesId], [SkillId], [YearStudent]) VALUES (2782, 12, 0)
INSERT [dbo].[MessagesSkills] ([MessagesId], [SkillId], [YearStudent]) VALUES (2783, 1, 0)
GO
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'001', N'Student', N'Student', NULL)
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'002', N'Teacher', N'Teacher', NULL)
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'003', N'Family', N'Family', NULL)
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'004', N'Doctor', N'Dotor', NULL)
GO
SET IDENTITY_INSERT [dbo].[SchoolYears] ON 

INSERT [dbo].[SchoolYears] ([SchoolYearId], [SchoolYearName]) VALUES (1, N'一年生')
INSERT [dbo].[SchoolYears] ([SchoolYearId], [SchoolYearName]) VALUES (2, N'二年生')
INSERT [dbo].[SchoolYears] ([SchoolYearId], [SchoolYearName]) VALUES (3, N'三年生')
INSERT [dbo].[SchoolYears] ([SchoolYearId], [SchoolYearName]) VALUES (4, N'四年生')
INSERT [dbo].[SchoolYears] ([SchoolYearId], [SchoolYearName]) VALUES (5, N'五年生')
INSERT [dbo].[SchoolYears] ([SchoolYearId], [SchoolYearName]) VALUES (6, N'六年生')
SET IDENTITY_INSERT [dbo].[SchoolYears] OFF
GO
SET IDENTITY_INSERT [dbo].[Skills] ON 

INSERT [dbo].[Skills] ([SkillId], [SkillName], [Style]) VALUES (1, N'主体性', N'#f44336')
INSERT [dbo].[Skills] ([SkillId], [SkillName], [Style]) VALUES (2, N'働きかけ力', N'#e91e63')
INSERT [dbo].[Skills] ([SkillId], [SkillName], [Style]) VALUES (3, N'実行力', N'#9c27b0')
INSERT [dbo].[Skills] ([SkillId], [SkillName], [Style]) VALUES (4, N'課題発見力', N'#ff5722')
INSERT [dbo].[Skills] ([SkillId], [SkillName], [Style]) VALUES (5, N'計画力', N'#2196f3')
INSERT [dbo].[Skills] ([SkillId], [SkillName], [Style]) VALUES (6, N'創造力', N'#00bcd4')
INSERT [dbo].[Skills] ([SkillId], [SkillName], [Style]) VALUES (7, N'発信力', N'#009688')
INSERT [dbo].[Skills] ([SkillId], [SkillName], [Style]) VALUES (8, N'傾聴力', N'#8bc34a')
INSERT [dbo].[Skills] ([SkillId], [SkillName], [Style]) VALUES (9, N'柔軟性', N'#607d8b')
INSERT [dbo].[Skills] ([SkillId], [SkillName], [Style]) VALUES (10, N'状況把握力', N'#795548')
INSERT [dbo].[Skills] ([SkillId], [SkillName], [Style]) VALUES (11, N'規律性', N'#009688')
INSERT [dbo].[Skills] ([SkillId], [SkillName], [Style]) VALUES (12, N'ストレスコントロール力', N'#9e9e9e')
SET IDENTITY_INSERT [dbo].[Skills] OFF
GO
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'001', N'001')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'002', N'002')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'003', N'003')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'004', N'004')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'005', N'001')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'006', N'001')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'82ca568b-07b6-4e1d-889d-de43c735228f', N'001')
GO
INSERT [dbo].[Users] ([Id], [Phone], [Active], [CreateDate], [LastLogin], [Avatar], [ScholasticId], [ParentId], [bellNotifiId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [StudentCode], [BellNotifiId1], [FullName]) VALUES (N'001', NULL, NULL, NULL, NULL, N'/images/student.png', NULL, N'003', NULL, N'xuanthanh', N'XUANTHANH', N'xuanthanh@gmail.com', N'xuanthanh@gmail.com', 0, N'AQAAAAEAACcQAAAAEPaVi3SnVI7dPGv1FHRL33kWVTczIwMKBgPorlOMMC45bnU9/rR5D4ZjA2ej2dRXrQ==', N'010e52b7-90c1-471c-8af8-5cea09069e7c', N'110bd236-a2f9-43bf-bb8d-eb14c3bc8b46', NULL, 0, 0, NULL, 0, 0, N'ST0001', NULL, N'Xuan Thanh')
INSERT [dbo].[Users] ([Id], [Phone], [Active], [CreateDate], [LastLogin], [Avatar], [ScholasticId], [ParentId], [bellNotifiId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [StudentCode], [BellNotifiId1], [FullName]) VALUES (N'002', NULL, NULL, NULL, NULL, N'/images/teacher.png', NULL, NULL, NULL, N'teacher', N'TEACHER', N'teacher@gmail.com', N'teacher@gmail.com', 0, N'AQAAAAEAACcQAAAAEPaVi3SnVI7dPGv1FHRL33kWVTczIwMKBgPorlOMMC45bnU9/rR5D4ZjA2ej2dRXrQ==', N'010e52b7-90c1-471c-8af8-5cea09069e7c', N'110bd236-a2f9-43bf-bb8d-eb14c3bc8b46', NULL, 0, 0, NULL, 0, 0, NULL, NULL, N'我成')
INSERT [dbo].[Users] ([Id], [Phone], [Active], [CreateDate], [LastLogin], [Avatar], [ScholasticId], [ParentId], [bellNotifiId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [StudentCode], [BellNotifiId1], [FullName]) VALUES (N'003', NULL, NULL, NULL, NULL, N'/images/dad.png', NULL, N'003', NULL, N'family', N'FAMILY', N'family@gmail.com', N'family@gmail.com', 0, N'AQAAAAEAACcQAAAAEPaVi3SnVI7dPGv1FHRL33kWVTczIwMKBgPorlOMMC45bnU9/rR5D4ZjA2ej2dRXrQ==', N'010e52b7-90c1-471c-8af8-5cea09069e7c', N'110bd236-a2f9-43bf-bb8d-eb14c3bc8b46', NULL, 0, 0, NULL, 0, 0, NULL, NULL, N'野比 玉子')
INSERT [dbo].[Users] ([Id], [Phone], [Active], [CreateDate], [LastLogin], [Avatar], [ScholasticId], [ParentId], [bellNotifiId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [StudentCode], [BellNotifiId1], [FullName]) VALUES (N'004', NULL, NULL, NULL, NULL, N'/images/doctor.png', NULL, NULL, NULL, N'doctor', N'DOCTOR', N'doctor@gmail.com', N'doctor@gmail.com', 0, N'AQAAAAEAACcQAAAAEPaVi3SnVI7dPGv1FHRL33kWVTczIwMKBgPorlOMMC45bnU9/rR5D4ZjA2ej2dRXrQ==', N'010e52b7-90c1-471c-8af8-5cea09069e7c', N'110bd236-a2f9-43bf-bb8d-eb14c3bc8b46', NULL, 0, 0, NULL, 0, 0, NULL, NULL, N'ヒデヨ')
INSERT [dbo].[Users] ([Id], [Phone], [Active], [CreateDate], [LastLogin], [Avatar], [ScholasticId], [ParentId], [bellNotifiId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [StudentCode], [BellNotifiId1], [FullName]) VALUES (N'005', NULL, NULL, NULL, NULL, N'/images/student.png', NULL, NULL, NULL, N'obito', N'OBITO', N'obito@gmail.com', N'obito@gmail.com', 0, N'AQAAAAEAACcQAAAAEPaVi3SnVI7dPGv1FHRL33kWVTczIwMKBgPorlOMMC45bnU9/rR5D4ZjA2ej2dRXrQ==', N'010e52b7-90c1-471c-8af8-5cea09069e7c', N'110bd236-a2f9-43bf-bb8d-eb14c3bc8b46', NULL, 0, 0, NULL, 0, 0, N'ST0003', NULL, N'うちは オビト')
INSERT [dbo].[Users] ([Id], [Phone], [Active], [CreateDate], [LastLogin], [Avatar], [ScholasticId], [ParentId], [bellNotifiId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [StudentCode], [BellNotifiId1], [FullName]) VALUES (N'006', NULL, NULL, NULL, NULL, N'/images/student.png', NULL, N'003', NULL, N'nobita', N'NOBITA', N'nobita@gmail.com', N'nobita@gmail.com', 0, N'AQAAAAEAACcQAAAAEPaVi3SnVI7dPGv1FHRL33kWVTczIwMKBgPorlOMMC45bnU9/rR5D4ZjA2ej2dRXrQ==', N'010e52b7-90c1-471c-8af8-5cea09069e7c', N'110bd236-a2f9-43bf-bb8d-eb14c3bc8b46', NULL, 0, 0, NULL, 0, 0, N'ST0004', NULL, N'野比 のび ')
INSERT [dbo].[Users] ([Id], [Phone], [Active], [CreateDate], [LastLogin], [Avatar], [ScholasticId], [ParentId], [bellNotifiId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [StudentCode], [BellNotifiId1], [FullName]) VALUES (N'82ca568b-07b6-4e1d-889d-de43c735228f', NULL, NULL, NULL, NULL, N'/images/student.png', NULL, NULL, NULL, N'sakura', N'SAKURA', N'sakura@gmail.com', N'sakura@gmail.com', 0, N'AQAAAAEAACcQAAAAEPaVi3SnVI7dPGv1FHRL33kWVTczIwMKBgPorlOMMC45bnU9/rR5D4ZjA2ej2dRXrQ==', N'010e52b7-90c1-471c-8af8-5cea09069e7c', N'110bd236-a2f9-43bf-bb8d-eb14c3bc8b46', NULL, 0, 0, NULL, 0, 0, N'ST0002', NULL, N'春野サクラ')
GO
INSERT [dbo].[UserSchoolYears] ([UserId], [SchoolYearId]) VALUES (N'001', 1)
INSERT [dbo].[UserSchoolYears] ([UserId], [SchoolYearId]) VALUES (N'001', 2)
INSERT [dbo].[UserSchoolYears] ([UserId], [SchoolYearId]) VALUES (N'001', 3)
INSERT [dbo].[UserSchoolYears] ([UserId], [SchoolYearId]) VALUES (N'005', 1)
INSERT [dbo].[UserSchoolYears] ([UserId], [SchoolYearId]) VALUES (N'005', 2)
INSERT [dbo].[UserSchoolYears] ([UserId], [SchoolYearId]) VALUES (N'006', 4)
INSERT [dbo].[UserSchoolYears] ([UserId], [SchoolYearId]) VALUES (N'82ca568b-07b6-4e1d-889d-de43c735228f', 1)
GO
ALTER TABLE [dbo].[BellNotification]  WITH CHECK ADD  CONSTRAINT [FK_BellNotification_Messages] FOREIGN KEY([NotifiId])
REFERENCES [dbo].[Messages] ([MessagesId])
GO
ALTER TABLE [dbo].[BellNotification] CHECK CONSTRAINT [FK_BellNotification_Messages]
GO
ALTER TABLE [dbo].[Events]  WITH CHECK ADD  CONSTRAINT [FK_Events_ListEvents] FOREIGN KEY([ListEventId])
REFERENCES [dbo].[ListEvents] ([ListEventId])
GO
ALTER TABLE [dbo].[Events] CHECK CONSTRAINT [FK_Events_ListEvents]
GO
ALTER TABLE [dbo].[Events]  WITH CHECK ADD  CONSTRAINT [FK_Events_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Events] CHECK CONSTRAINT [FK_Events_Users]
GO
ALTER TABLE [dbo].[GroupInfos]  WITH CHECK ADD  CONSTRAINT [FK_GroupInfos_GroupInfos] FOREIGN KEY([GroupInfoId1])
REFERENCES [dbo].[GroupInfos] ([GroupInfoId])
GO
ALTER TABLE [dbo].[GroupInfos] CHECK CONSTRAINT [FK_GroupInfos_GroupInfos]
GO
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_Messages_Events] FOREIGN KEY([EventId])
REFERENCES [dbo].[Events] ([EventId])
GO
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_Messages_Events]
GO
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_Messages_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_Messages_Users]
GO
ALTER TABLE [dbo].[MessagesSkills]  WITH CHECK ADD  CONSTRAINT [FK_MessagesSkills_Messages] FOREIGN KEY([MessagesId])
REFERENCES [dbo].[Messages] ([MessagesId])
GO
ALTER TABLE [dbo].[MessagesSkills] CHECK CONSTRAINT [FK_MessagesSkills_Messages]
GO
ALTER TABLE [dbo].[MessagesSkills]  WITH CHECK ADD  CONSTRAINT [FK_MessagesSkills_Skills] FOREIGN KEY([SkillId])
REFERENCES [dbo].[Skills] ([SkillId])
GO
ALTER TABLE [dbo].[MessagesSkills] CHECK CONSTRAINT [FK_MessagesSkills_Skills]
GO
ALTER TABLE [dbo].[RoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_RoleClaims_Roles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RoleClaims] CHECK CONSTRAINT [FK_RoleClaims_Roles_RoleId]
GO
ALTER TABLE [dbo].[UserClaims]  WITH CHECK ADD  CONSTRAINT [FK_UserClaims_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserClaims] CHECK CONSTRAINT [FK_UserClaims_Users_UserId]
GO
ALTER TABLE [dbo].[UserLogins]  WITH CHECK ADD  CONSTRAINT [FK_UserLogins_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserLogins] CHECK CONSTRAINT [FK_UserLogins_Users_UserId]
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_Roles]
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_Users]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_BellNotification] FOREIGN KEY([BellNotifiId1])
REFERENCES [dbo].[BellNotification] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_BellNotification]
GO
ALTER TABLE [dbo].[UserSchoolYears]  WITH CHECK ADD  CONSTRAINT [FK_UserSchoolYears_SchoolYears1] FOREIGN KEY([SchoolYearId])
REFERENCES [dbo].[SchoolYears] ([SchoolYearId])
GO
ALTER TABLE [dbo].[UserSchoolYears] CHECK CONSTRAINT [FK_UserSchoolYears_SchoolYears1]
GO
ALTER TABLE [dbo].[UserSchoolYears]  WITH CHECK ADD  CONSTRAINT [FK_UserSchoolYears_Users1] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserSchoolYears] CHECK CONSTRAINT [FK_UserSchoolYears_Users1]
GO
ALTER TABLE [dbo].[UserTokens]  WITH CHECK ADD  CONSTRAINT [FK_UserTokens_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserTokens] CHECK CONSTRAINT [FK_UserTokens_Users_UserId]
GO
