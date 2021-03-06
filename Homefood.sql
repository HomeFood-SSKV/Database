USE [homefood3]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 11/11/2018 12:36:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](100) NULL,
	[LastName] [varchar](100) NULL,
	[Age] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MAS_AddressType]    Script Date: 11/11/2018 12:36:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAS_AddressType](
	[UniqueId] [uniqueidentifier] NOT NULL,
	[AddressTypeId] [int] IDENTITY(1,1) NOT NULL,
	[AddressType] [varchar](100) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AddressTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MAS_Area]    Script Date: 11/11/2018 12:36:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAS_Area](
	[UniqueId] [uniqueidentifier] NOT NULL,
	[AreaId] [int] IDENTITY(1,1) NOT NULL,
	[AreaName] [varchar](100) NOT NULL,
	[CityId] [int] NULL,
	[IsDeleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AreaId] ASC,
	[UniqueId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MAS_Category]    Script Date: 11/11/2018 12:36:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAS_Category](
	[UniqueId] [uniqueidentifier] NOT NULL,
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Descriptions] [varchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MAS_ChefType]    Script Date: 11/11/2018 12:36:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAS_ChefType](
	[UniqueId] [uniqueidentifier] NOT NULL,
	[ChefTypeId] [int] IDENTITY(1,1) NOT NULL,
	[ChefType] [varchar](100) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ChefTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MAS_City]    Script Date: 11/11/2018 12:36:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAS_City](
	[UniqueId] [uniqueidentifier] NOT NULL,
	[CityId] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [varchar](100) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MAS_DeliveryLocation]    Script Date: 11/11/2018 12:36:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAS_DeliveryLocation](
	[UniqueId] [uniqueidentifier] NOT NULL,
	[DeliveyPointId] [int] IDENTITY(1,1) NOT NULL,
	[DeliveryPointName] [varchar](100) NOT NULL,
	[AreaId] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DeliveyPointId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MAS_Discount]    Script Date: 11/11/2018 12:36:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAS_Discount](
	[UniqueId] [uniqueidentifier] NOT NULL,
	[DiscountId] [int] IDENTITY(1,1) NOT NULL,
	[DiscountName] [varchar](100) NOT NULL,
	[FoodId] [int] NULL,
	[DiscountTypeID] [int] NULL,
	[DiscountPrice] [int] NOT NULL,
	[DiscountPercentage] [int] NOT NULL,
	[ValidityFrom] [datetime] NOT NULL,
	[ValidityTo] [datetime] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DiscountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MAS_DiscountType]    Script Date: 11/11/2018 12:36:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAS_DiscountType](
	[UniqueId] [uniqueidentifier] NOT NULL,
	[DiscountTypeID] [int] IDENTITY(1,1) NOT NULL,
	[DiscountType] [varchar](100) NOT NULL,
	[Descriptions] [varchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DiscountTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MAS_Food]    Script Date: 11/11/2018 12:36:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAS_Food](
	[UniqueId] [uniqueidentifier] NOT NULL,
	[FoodId] [int] IDENTITY(1,1) NOT NULL,
	[FoodName] [varchar](100) NOT NULL,
	[Descriptions] [varchar](max) NULL,
	[CategoryId] [int] NULL,
	[FoodTypeID] [int] NULL,
	[IsDeleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[FoodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MAS_FoodType]    Script Date: 11/11/2018 12:36:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAS_FoodType](
	[UniqueId] [uniqueidentifier] NOT NULL,
	[FoodTypeID] [int] IDENTITY(1,1) NOT NULL,
	[FoodType] [varchar](100) NOT NULL,
	[FoodTypeCode] [int] NULL,
	[IsDeleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[FoodTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MAS_MealPack]    Script Date: 11/11/2018 12:36:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAS_MealPack](
	[UniqueId] [uniqueidentifier] NOT NULL,
	[MealPackId] [int] IDENTITY(1,1) NOT NULL,
	[MealPackName] [varchar](100) NOT NULL,
	[Descriptions] [varchar](100) NOT NULL,
	[TotalMealCount] [int] NOT NULL,
	[CurrentMealCount] [int] NOT NULL,
	[CurrentPrice] [int] NOT NULL,
	[TotalPrice] [int] NOT NULL,
	[GSTPrice] [int] NOT NULL,
	[GSTPercentage] [int] NOT NULL,
	[OrderTypeId] [int] NOT NULL,
	[OrderTypeCode] [int] NULL,
	[IsDeleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MealPackId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MAS_OrderStatus]    Script Date: 11/11/2018 12:36:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAS_OrderStatus](
	[UniqueId] [uniqueidentifier] NOT NULL,
	[OrderStatusId] [int] IDENTITY(1,1) NOT NULL,
	[OrderStatus] [varchar](100) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MAS_OrderType]    Script Date: 11/11/2018 12:36:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAS_OrderType](
	[UniqueId] [uniqueidentifier] NOT NULL,
	[OrderTypeId] [int] IDENTITY(1,1) NOT NULL,
	[OrderTypeCode] [varchar](50) NOT NULL,
	[Descriptions] [varchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MAS_PaymentType]    Script Date: 11/11/2018 12:36:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAS_PaymentType](
	[UniqueId] [uniqueidentifier] NOT NULL,
	[PaymentTypeId] [int] IDENTITY(1,1) NOT NULL,
	[PaymentType] [varchar](100) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PaymentTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MAS_Price]    Script Date: 11/11/2018 12:36:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAS_Price](
	[UniqueId] [uniqueidentifier] NOT NULL,
	[PriceId] [int] IDENTITY(1,1) NOT NULL,
	[FoodId] [int] NOT NULL,
	[Price] [varchar](50) NOT NULL,
	[GSTPrice] [varchar](50) NULL,
	[GSTPercentage] [varchar](10) NULL,
	[IsDeleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PriceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MAS_Role]    Script Date: 11/11/2018 12:36:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAS_Role](
	[UniqueId] [uniqueidentifier] NOT NULL,
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](100) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TRN_ChefDetails]    Script Date: 11/11/2018 12:36:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRN_ChefDetails](
	[UniqueId] [uniqueidentifier] NOT NULL,
	[ChefId] [int] IDENTITY(1,1) NOT NULL,
	[ChefFullName] [varchar](100) NOT NULL,
	[ChefTypeId] [int] NOT NULL,
	[MobileNumber] [varchar](100) NOT NULL,
	[AlternateMobileNumber] [varchar](100) NOT NULL,
	[PhoneNumber] [varchar](20) NOT NULL,
	[EmailId] [varchar](100) NOT NULL,
	[CityId] [int] NOT NULL,
	[AreaName] [varchar](100) NOT NULL,
	[AddressLine1] [varchar](max) NOT NULL,
	[AddressLine2] [varchar](max) NOT NULL,
	[UserId] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ChefId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TRN_ChefOrder]    Script Date: 11/11/2018 12:36:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRN_ChefOrder](
	[UniqueId] [uniqueidentifier] NOT NULL,
	[ChefOrderId] [int] IDENTITY(1,1) NOT NULL,
	[OrderGivenDatetime] [date] NOT NULL,
	[ChefDeliveredDateTime] [time](7) NOT NULL,
	[AssignedPickUpDate] [date] NOT NULL,
	[AssignedPickUpTime] [time](7) NOT NULL,
	[TaskStatusID] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ChefOrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TRN_ChefOtherDetails]    Script Date: 11/11/2018 12:36:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRN_ChefOtherDetails](
	[UniqueId] [uniqueidentifier] NOT NULL,
	[ChefOtherDetailID] [int] IDENTITY(1,1) NOT NULL,
	[ChefId] [int] NOT NULL,
	[FoodTypeId] [int] NOT NULL,
	[SpecialistAt] [varchar](20) NULL,
	[Descriptions] [varchar](max) NULL,
	[AvaiableDays] [int] NULL,
	[AvailableTime] [varchar](10) NULL,
	[AvaiableForLunch] [bit] NOT NULL,
	[AvailableForDinner] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ChefOtherDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TRN_DeliveryDetails]    Script Date: 11/11/2018 12:36:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRN_DeliveryDetails](
	[UniqueId] [uniqueidentifier] NOT NULL,
	[DeliveryDetailId] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[ScheduleDeliveryDate] [datetime] NOT NULL,
	[IsDelivered] [bit] NULL,
	[DeliveryPointId] [int] NOT NULL,
	[AddressDetailId] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DeliveryDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TRN_LoginDetail]    Script Date: 11/11/2018 12:36:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRN_LoginDetail](
	[UniqueId] [uniqueidentifier] NOT NULL,
	[LoginId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[LoginName] [varchar](100) NOT NULL,
	[EmailId] [varchar](100) NOT NULL,
	[PhoneNo] [varchar](20) NOT NULL,
	[Password] [varchar](100) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[LoginId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TRN_MapOrderToChef]    Script Date: 11/11/2018 12:36:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRN_MapOrderToChef](
	[UniqueId] [uniqueidentifier] NOT NULL,
	[MapOrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ChefId] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MapOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TRN_MealPackMapping]    Script Date: 11/11/2018 12:36:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRN_MealPackMapping](
	[UniqueId] [uniqueidentifier] NOT NULL,
	[MealPackMappingId] [int] IDENTITY(1,1) NOT NULL,
	[MealPackId] [int] NOT NULL,
	[FoodId] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MealPackMappingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TRN_MealPackProcessing]    Script Date: 11/11/2018 12:36:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRN_MealPackProcessing](
	[UniqueId] [uniqueidentifier] NOT NULL,
	[MealPackProcessingId] [int] IDENTITY(1,1) NOT NULL,
	[MealPackId] [int] NOT NULL,
	[TotalMealCount] [int] NOT NULL,
	[UsedMealCount] [int] NOT NULL,
	[RemainingMealCount] [int] NOT NULL,
	[ScheduleDates] [datetime] NOT NULL,
	[UserId] [int] NOT NULL,
	[OrderId] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MealPackProcessingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TRN_Order]    Script Date: 11/11/2018 12:36:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRN_Order](
	[UniqueId] [uniqueidentifier] NOT NULL,
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[OrderTypeId] [int] NOT NULL,
	[OrderStatusId] [int] NOT NULL,
	[OrderCreatedDatetime] [datetime] NULL,
	[PaymentTypeId] [int] NOT NULL,
	[TotalQuantity] [int] NULL,
	[ActualPrice] [int] NULL,
	[TotalPrice] [int] NULL,
	[TotalDiscount] [int] NULL,
	[IsDeleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TRN_OrderAppliedDiscount]    Script Date: 11/11/2018 12:36:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRN_OrderAppliedDiscount](
	[UniqueId] [uniqueidentifier] NOT NULL,
	[AppliedDiscountId] [int] IDENTITY(1,1) NOT NULL,
	[DiscountId] [int] NOT NULL,
	[SpecialDiscountId] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[OrderId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AppliedDiscountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TRN_OrderDetails]    Script Date: 11/11/2018 12:36:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRN_OrderDetails](
	[UniqueId] [uniqueidentifier] NOT NULL,
	[OrderDetailId] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[FoodId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TRN_SpecialDiscount]    Script Date: 11/11/2018 12:36:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRN_SpecialDiscount](
	[UniqueId] [uniqueidentifier] NOT NULL,
	[SpecialDiscountId] [int] IDENTITY(1,1) NOT NULL,
	[DiscountName] [varchar](100) NOT NULL,
	[DiscountTypeID] [int] NOT NULL,
	[Descriptions] [varchar](max) NULL,
	[UserId] [int] NOT NULL,
	[IsDiscountUsed] [bit] NOT NULL,
	[DiscountPrice] [int] NOT NULL,
	[DiscountPercentage] [int] NOT NULL,
	[ValidityFrom] [datetime] NULL,
	[ValidityTo] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SpecialDiscountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TRN_UserAddressDetails]    Script Date: 11/11/2018 12:36:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRN_UserAddressDetails](
	[UniqueId] [uniqueidentifier] NOT NULL,
	[AddressDetailId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[AddressTypeID] [int] NOT NULL,
	[DeliveryPointId] [int] NOT NULL,
	[AreaName] [varchar](100) NOT NULL,
	[AddressLine1] [varchar](max) NOT NULL,
	[AddressLine2] [varchar](max) NOT NULL,
	[CityId] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AddressDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TRN_UserDetail]    Script Date: 11/11/2018 12:36:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRN_UserDetail](
	[UniqueId] [uniqueidentifier] NOT NULL,
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[EmailId] [varchar](100) NOT NULL,
	[PhoneNo] [varchar](20) NOT NULL,
	[RoleId] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MAS_AddressType] ADD  DEFAULT (newid()) FOR [UniqueId]
GO
ALTER TABLE [dbo].[MAS_Area] ADD  DEFAULT (newid()) FOR [UniqueId]
GO
ALTER TABLE [dbo].[MAS_Category] ADD  DEFAULT (newid()) FOR [UniqueId]
GO
ALTER TABLE [dbo].[MAS_ChefType] ADD  DEFAULT (newid()) FOR [UniqueId]
GO
ALTER TABLE [dbo].[MAS_City] ADD  DEFAULT (newid()) FOR [UniqueId]
GO
ALTER TABLE [dbo].[MAS_DeliveryLocation] ADD  DEFAULT (newid()) FOR [UniqueId]
GO
ALTER TABLE [dbo].[MAS_Discount] ADD  DEFAULT (newid()) FOR [UniqueId]
GO
ALTER TABLE [dbo].[MAS_DiscountType] ADD  DEFAULT (newid()) FOR [UniqueId]
GO
ALTER TABLE [dbo].[MAS_Food] ADD  DEFAULT (newid()) FOR [UniqueId]
GO
ALTER TABLE [dbo].[MAS_FoodType] ADD  DEFAULT (newid()) FOR [UniqueId]
GO
ALTER TABLE [dbo].[MAS_MealPack] ADD  DEFAULT (newid()) FOR [UniqueId]
GO
ALTER TABLE [dbo].[MAS_OrderStatus] ADD  DEFAULT (newid()) FOR [UniqueId]
GO
ALTER TABLE [dbo].[MAS_OrderType] ADD  DEFAULT (newid()) FOR [UniqueId]
GO
ALTER TABLE [dbo].[MAS_PaymentType] ADD  DEFAULT (newid()) FOR [UniqueId]
GO
ALTER TABLE [dbo].[MAS_Price] ADD  DEFAULT (newid()) FOR [UniqueId]
GO
ALTER TABLE [dbo].[MAS_Role] ADD  DEFAULT (newid()) FOR [UniqueId]
GO
ALTER TABLE [dbo].[TRN_ChefDetails] ADD  DEFAULT (newid()) FOR [UniqueId]
GO
ALTER TABLE [dbo].[TRN_ChefOrder] ADD  DEFAULT (newid()) FOR [UniqueId]
GO
ALTER TABLE [dbo].[TRN_ChefOtherDetails] ADD  DEFAULT (newid()) FOR [UniqueId]
GO
ALTER TABLE [dbo].[TRN_DeliveryDetails] ADD  DEFAULT (newid()) FOR [UniqueId]
GO
ALTER TABLE [dbo].[TRN_LoginDetail] ADD  DEFAULT (newid()) FOR [UniqueId]
GO
ALTER TABLE [dbo].[TRN_MapOrderToChef] ADD  DEFAULT (newid()) FOR [UniqueId]
GO
ALTER TABLE [dbo].[TRN_MealPackMapping] ADD  DEFAULT (newid()) FOR [UniqueId]
GO
ALTER TABLE [dbo].[TRN_MealPackProcessing] ADD  DEFAULT (newid()) FOR [UniqueId]
GO
ALTER TABLE [dbo].[TRN_Order] ADD  DEFAULT (newid()) FOR [UniqueId]
GO
ALTER TABLE [dbo].[TRN_OrderAppliedDiscount] ADD  DEFAULT (newid()) FOR [UniqueId]
GO
ALTER TABLE [dbo].[TRN_OrderDetails] ADD  DEFAULT (newid()) FOR [UniqueId]
GO
ALTER TABLE [dbo].[TRN_SpecialDiscount] ADD  DEFAULT (newid()) FOR [UniqueId]
GO
ALTER TABLE [dbo].[TRN_UserAddressDetails] ADD  DEFAULT (newid()) FOR [UniqueId]
GO
ALTER TABLE [dbo].[TRN_UserDetail] ADD  DEFAULT (newid()) FOR [UniqueId]
GO
ALTER TABLE [dbo].[MAS_Area]  WITH CHECK ADD FOREIGN KEY([CityId])
REFERENCES [dbo].[MAS_City] ([CityId])
GO
ALTER TABLE [dbo].[MAS_Discount]  WITH CHECK ADD FOREIGN KEY([DiscountTypeID])
REFERENCES [dbo].[MAS_DiscountType] ([DiscountTypeID])
GO
ALTER TABLE [dbo].[MAS_Discount]  WITH CHECK ADD FOREIGN KEY([FoodId])
REFERENCES [dbo].[MAS_Food] ([FoodId])
GO
ALTER TABLE [dbo].[MAS_Food]  WITH CHECK ADD FOREIGN KEY([CategoryId])
REFERENCES [dbo].[MAS_Category] ([CategoryId])
GO
ALTER TABLE [dbo].[MAS_Food]  WITH CHECK ADD FOREIGN KEY([FoodTypeID])
REFERENCES [dbo].[MAS_FoodType] ([FoodTypeID])
GO
ALTER TABLE [dbo].[MAS_MealPack]  WITH CHECK ADD FOREIGN KEY([OrderTypeId])
REFERENCES [dbo].[MAS_OrderType] ([OrderTypeId])
GO
ALTER TABLE [dbo].[MAS_Price]  WITH CHECK ADD FOREIGN KEY([FoodId])
REFERENCES [dbo].[MAS_Food] ([FoodId])
GO
ALTER TABLE [dbo].[TRN_ChefDetails]  WITH CHECK ADD FOREIGN KEY([ChefTypeId])
REFERENCES [dbo].[MAS_ChefType] ([ChefTypeId])
GO
ALTER TABLE [dbo].[TRN_ChefDetails]  WITH CHECK ADD FOREIGN KEY([CityId])
REFERENCES [dbo].[MAS_City] ([CityId])
GO
ALTER TABLE [dbo].[TRN_ChefDetails]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[TRN_UserDetail] ([UserId])
GO
ALTER TABLE [dbo].[TRN_ChefOtherDetails]  WITH CHECK ADD FOREIGN KEY([ChefId])
REFERENCES [dbo].[TRN_ChefDetails] ([ChefId])
GO
ALTER TABLE [dbo].[TRN_ChefOtherDetails]  WITH CHECK ADD FOREIGN KEY([FoodTypeId])
REFERENCES [dbo].[MAS_FoodType] ([FoodTypeID])
GO
ALTER TABLE [dbo].[TRN_DeliveryDetails]  WITH CHECK ADD FOREIGN KEY([AddressDetailId])
REFERENCES [dbo].[TRN_UserAddressDetails] ([AddressDetailId])
GO
ALTER TABLE [dbo].[TRN_DeliveryDetails]  WITH CHECK ADD FOREIGN KEY([DeliveryPointId])
REFERENCES [dbo].[MAS_DeliveryLocation] ([DeliveyPointId])
GO
ALTER TABLE [dbo].[TRN_DeliveryDetails]  WITH CHECK ADD FOREIGN KEY([OrderId])
REFERENCES [dbo].[TRN_Order] ([OrderId])
GO
ALTER TABLE [dbo].[TRN_LoginDetail]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[TRN_UserDetail] ([UserId])
GO
ALTER TABLE [dbo].[TRN_MapOrderToChef]  WITH CHECK ADD FOREIGN KEY([ChefId])
REFERENCES [dbo].[TRN_ChefDetails] ([ChefId])
GO
ALTER TABLE [dbo].[TRN_MapOrderToChef]  WITH CHECK ADD FOREIGN KEY([OrderId])
REFERENCES [dbo].[TRN_Order] ([OrderId])
GO
ALTER TABLE [dbo].[TRN_MealPackMapping]  WITH CHECK ADD FOREIGN KEY([FoodId])
REFERENCES [dbo].[MAS_Food] ([FoodId])
GO
ALTER TABLE [dbo].[TRN_MealPackMapping]  WITH CHECK ADD FOREIGN KEY([MealPackId])
REFERENCES [dbo].[MAS_MealPack] ([MealPackId])
GO
ALTER TABLE [dbo].[TRN_MealPackProcessing]  WITH CHECK ADD FOREIGN KEY([MealPackId])
REFERENCES [dbo].[MAS_MealPack] ([MealPackId])
GO
ALTER TABLE [dbo].[TRN_MealPackProcessing]  WITH CHECK ADD FOREIGN KEY([OrderId])
REFERENCES [dbo].[TRN_Order] ([OrderId])
GO
ALTER TABLE [dbo].[TRN_MealPackProcessing]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[TRN_UserDetail] ([UserId])
GO
ALTER TABLE [dbo].[TRN_Order]  WITH CHECK ADD FOREIGN KEY([OrderTypeId])
REFERENCES [dbo].[MAS_OrderType] ([OrderTypeId])
GO
ALTER TABLE [dbo].[TRN_Order]  WITH CHECK ADD FOREIGN KEY([OrderStatusId])
REFERENCES [dbo].[MAS_OrderStatus] ([OrderStatusId])
GO
ALTER TABLE [dbo].[TRN_Order]  WITH CHECK ADD FOREIGN KEY([PaymentTypeId])
REFERENCES [dbo].[MAS_PaymentType] ([PaymentTypeId])
GO
ALTER TABLE [dbo].[TRN_Order]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[TRN_UserDetail] ([UserId])
GO
ALTER TABLE [dbo].[TRN_OrderAppliedDiscount]  WITH CHECK ADD FOREIGN KEY([DiscountId])
REFERENCES [dbo].[MAS_Discount] ([DiscountId])
GO
ALTER TABLE [dbo].[TRN_OrderAppliedDiscount]  WITH CHECK ADD FOREIGN KEY([OrderId])
REFERENCES [dbo].[TRN_Order] ([OrderId])
GO
ALTER TABLE [dbo].[TRN_OrderAppliedDiscount]  WITH CHECK ADD FOREIGN KEY([SpecialDiscountId])
REFERENCES [dbo].[TRN_SpecialDiscount] ([SpecialDiscountId])
GO
ALTER TABLE [dbo].[TRN_OrderDetails]  WITH CHECK ADD FOREIGN KEY([FoodId])
REFERENCES [dbo].[MAS_Food] ([FoodId])
GO
ALTER TABLE [dbo].[TRN_OrderDetails]  WITH CHECK ADD FOREIGN KEY([OrderId])
REFERENCES [dbo].[TRN_Order] ([OrderId])
GO
ALTER TABLE [dbo].[TRN_SpecialDiscount]  WITH CHECK ADD FOREIGN KEY([DiscountTypeID])
REFERENCES [dbo].[MAS_DiscountType] ([DiscountTypeID])
GO
ALTER TABLE [dbo].[TRN_SpecialDiscount]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[TRN_UserDetail] ([UserId])
GO
ALTER TABLE [dbo].[TRN_UserAddressDetails]  WITH CHECK ADD FOREIGN KEY([AddressTypeID])
REFERENCES [dbo].[MAS_AddressType] ([AddressTypeId])
GO
ALTER TABLE [dbo].[TRN_UserAddressDetails]  WITH CHECK ADD FOREIGN KEY([CityId])
REFERENCES [dbo].[MAS_City] ([CityId])
GO
ALTER TABLE [dbo].[TRN_UserAddressDetails]  WITH CHECK ADD FOREIGN KEY([DeliveryPointId])
REFERENCES [dbo].[MAS_DeliveryLocation] ([DeliveyPointId])
GO
ALTER TABLE [dbo].[TRN_UserAddressDetails]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[TRN_UserDetail] ([UserId])
GO
ALTER TABLE [dbo].[TRN_UserDetail]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [dbo].[MAS_Role] ([RoleId])
GO
