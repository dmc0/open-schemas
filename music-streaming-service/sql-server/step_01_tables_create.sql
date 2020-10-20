/****** Object:  Table [dbo].[t_artist]    Script Date: 10/20/2020 12:14:11 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[t_artist](
	[artist_id] [int] NOT NULL,
	[first_name] [varchar](128) NULL,
	[last_name] [varchar](128) NULL,
	[address_line_1] [varchar](128) NULL,
	[address_line_2] [varchar](128) NULL,
	[city] [varchar](128) NULL,
	[state_province] [varchar](128) NULL,
	[country_id] [int] NULL,
	[location_id] [int] NULL,
 CONSTRAINT [PK_t_artist] PRIMARY KEY CLUSTERED 
(
	[artist_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[t_country]    Script Date: 10/20/2020 12:14:11 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[t_country](
	[country_id] [int] NOT NULL,
	[country_name] [varbinary](128) NULL,
 CONSTRAINT [PK_t_country] PRIMARY KEY CLUSTERED 
(
	[country_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[t_currency]    Script Date: 10/20/2020 12:14:11 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[t_currency](
	[currency] [varchar](8) NOT NULL,
	[currency_name] [varchar](64) NULL,
	[currency_desc] [varchar](1024) NULL,
 CONSTRAINT [PK_t_currency] PRIMARY KEY CLUSTERED 
(
	[currency] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[t_currency_exchange_rate]    Script Date: 10/20/2020 12:14:11 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[t_currency_exchange_rate](
	[currency_base] [varchar](8) NOT NULL,
	[currency_target] [varchar](8) NOT NULL,
	[effective_datetime] [datetime] NOT NULL,
	[expiration_datetime] [datetime] NULL,
	[exchange_rate] [decimal](20, 17) NULL,
 CONSTRAINT [PK_t_currency_exchange_rate] PRIMARY KEY CLUSTERED 
(
	[currency_base] ASC,
	[currency_target] ASC,
	[effective_datetime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[t_device]    Script Date: 10/20/2020 12:14:11 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[t_device](
	[device_id] [int] NOT NULL,
	[user_id] [int] NULL,
	[device_name] [varchar](128) NULL,
	[effective_datetime] [datetime] NOT NULL,
	[expiration_datetime] [datetime] NULL,
 CONSTRAINT [PK_t_device] PRIMARY KEY CLUSTERED 
(
	[device_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[t_location]    Script Date: 10/20/2020 12:14:11 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[t_location](
	[location_id] [int] NOT NULL,
	[location_name] [varchar](256) NULL,
	[country_id] [int] NULL,
 CONSTRAINT [PK_t_locations] PRIMARY KEY CLUSTERED 
(
	[location_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[t_location_currency]    Script Date: 10/20/2020 12:14:11 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[t_location_currency](
	[location_id] [int] NOT NULL,
	[currency] [varchar](8) NOT NULL,
	[effective_datetime] [datetime] NOT NULL,
	[expiration_datetime] [datetime] NULL,
 CONSTRAINT [PK_t_location_currency] PRIMARY KEY CLUSTERED 
(
	[location_id] ASC,
	[currency] ASC,
	[effective_datetime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[t_publisher]    Script Date: 10/20/2020 12:14:11 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[t_publisher](
	[publisher_id] [int] NOT NULL,
	[company_name] [varchar](256) NULL,
	[address_line_1] [varchar](128) NULL,
	[address_line_2] [varchar](128) NULL,
	[city] [varchar](128) NULL,
	[state_province] [varchar](128) NULL,
	[country_id] [int] NULL,
	[location_id] [int] NULL,
 CONSTRAINT [PK_t_publisher] PRIMARY KEY CLUSTERED 
(
	[publisher_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[t_song]    Script Date: 10/20/2020 12:14:11 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[t_song](
	[song_id] [int] NOT NULL,
	[artist_id] [int] NULL,
	[song_name] [varchar](256) NULL,
	[created_datetime] [datetime] NULL,
	[song_length_secs] [smallint] NULL,
 CONSTRAINT [PK_t_song] PRIMARY KEY CLUSTERED 
(
	[song_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[t_song_location_coefficient]    Script Date: 10/20/2020 12:14:11 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[t_song_location_coefficient](
	[song_id] [int] NOT NULL,
	[location_id] [int] NOT NULL,
	[effective_datetime] [datetime] NOT NULL,
	[expiration_datetime] [datetime] NULL,
	[subscriber_stream_coefficient_96_kbps] [decimal](7, 6) NULL,
	[subscriber_stream_coefficient_160_kbps] [decimal](7, 6) NULL,
	[subscriber_stream_coefficient_320_kbps] [decimal](7, 6) NULL,
	[subscriber_offline_play_coefficient_96_kbps] [decimal](7, 6) NULL,
	[subscriber_offline_play_coefficient_160_kbps] [decimal](7, 6) NULL,
	[subscriber_offline_play_coefficient_320_kbps] [decimal](7, 6) NULL,
	[free_stream_coefficient_96_kbps] [decimal](7, 6) NULL,
 CONSTRAINT [PK_t_song_location_coefficient] PRIMARY KEY CLUSTERED 
(
	[song_id] ASC,
	[location_id] ASC,
	[effective_datetime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[t_song_publisher]    Script Date: 10/20/2020 12:14:11 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[t_song_publisher](
	[song_id] [int] NOT NULL,
	[publisher_id] [int] NOT NULL,
	[effective_datetime] [datetime] NOT NULL,
	[expiration_datetime] [datetime] NULL,
 CONSTRAINT [PK_t_song_publisher] PRIMARY KEY CLUSTERED 
(
	[song_id] ASC,
	[publisher_id] ASC,
	[effective_datetime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[t_song_stream_play]    Script Date: 10/20/2020 12:14:11 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[t_song_stream_play](
	[song_id] [int] NULL,
	[location_id] [int] NULL,
	[stream_play_type_id] [tinyint] NULL,
	[device_id] [int] NULL,
	[stream_play_datetime] [datetime] NULL
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[t_stream_play_type]    Script Date: 10/20/2020 12:14:11 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[t_stream_play_type](
	[stream_play_type_id] [tinyint] NOT NULL,
	[stream_play_type_name] [varchar](64) NULL,
 CONSTRAINT [PK_t_stream_type] PRIMARY KEY CLUSTERED 
(
	[stream_play_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[t_subscription]    Script Date: 10/20/2020 12:14:11 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[t_subscription](
	[user_id] [int] NOT NULL,
	[subscription_type_id] [int] NOT NULL,
	[effective_datetime] [datetime] NOT NULL,
	[expiration_datetime] [datetime] NOT NULL,
 CONSTRAINT [PK_t_subscription] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC,
	[subscription_type_id] ASC,
	[effective_datetime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[t_subscription_type]    Script Date: 10/20/2020 12:14:11 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[t_subscription_type](
	[subscription_type_id] [smallint] NOT NULL,
	[subscription_name] [varchar](128) NULL,
	[subcription_cost] [decimal](18, 2) NULL,
	[location_id] [int] NULL,
	[effective_datetime] [datetime] NOT NULL,
	[expiration_datetime] [datetime] NOT NULL,
 CONSTRAINT [PK_t_subscription_type] PRIMARY KEY CLUSTERED 
(
	[subscription_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[t_user]    Script Date: 10/20/2020 12:14:11 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[t_user](
	[user_id] [int] NOT NULL,
	[first_name] [varchar](128) NULL,
	[last_name] [varchar](128) NULL,
	[address_line_1] [varchar](128) NULL,
	[address_line_2] [varchar](128) NULL,
	[city] [varchar](128) NULL,
	[state_province] [varchar](128) NULL,
	[country_id] [int] NULL,
	[location_id] [int] NULL,
	[active_device_count] [smallint] NULL,
 CONSTRAINT [PK_t_user] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[t_currency_exchange_rate] ADD  CONSTRAINT [DF_t_currency_exchange_rate_effective_date]  DEFAULT (((1)/(1))/(2000)) FOR [effective_datetime]
GO

ALTER TABLE [dbo].[t_currency_exchange_rate] ADD  CONSTRAINT [DF_t_currency_exchange_rate_expiration_date]  DEFAULT (((1)/(1))/(2079)) FOR [expiration_datetime]
GO

ALTER TABLE [dbo].[t_device] ADD  CONSTRAINT [DF_t_device_effective_datetime]  DEFAULT (((1)/(1))/(2000)) FOR [effective_datetime]
GO

ALTER TABLE [dbo].[t_device] ADD  CONSTRAINT [DF_t_device_expiration_datetime]  DEFAULT (((1)/(1))/(2079)) FOR [expiration_datetime]
GO

ALTER TABLE [dbo].[t_location_currency] ADD  CONSTRAINT [DF_t_location_currency_effective_date]  DEFAULT (((1)/(1))/(2000)) FOR [effective_datetime]
GO

ALTER TABLE [dbo].[t_location_currency] ADD  CONSTRAINT [DF_t_location_currency_expiration_date]  DEFAULT (((1)/(1))/(2079)) FOR [expiration_datetime]
GO

ALTER TABLE [dbo].[t_song_location_coefficient] ADD  CONSTRAINT [DF_t_song_location_coefficient_effective_date]  DEFAULT (((1)/(1))/(2000)) FOR [effective_datetime]
GO

ALTER TABLE [dbo].[t_song_location_coefficient] ADD  CONSTRAINT [DF_t_song_location_coefficient_expiration_date]  DEFAULT (((1)/(1))/(2079)) FOR [expiration_datetime]
GO

ALTER TABLE [dbo].[t_song_location_coefficient] ADD  CONSTRAINT [DF_t_song_location_coefficient_subscriber_stream_coefficient_96_kbps]  DEFAULT ((1.0)) FOR [subscriber_stream_coefficient_96_kbps]
GO

ALTER TABLE [dbo].[t_song_location_coefficient] ADD  CONSTRAINT [DF_t_song_location_coefficient_subscriber_stream_coefficient_160_kbps]  DEFAULT ((1.0)) FOR [subscriber_stream_coefficient_160_kbps]
GO

ALTER TABLE [dbo].[t_song_location_coefficient] ADD  CONSTRAINT [DF_t_song_location_coefficient_subscriber_stream_coefficient_320_kbps]  DEFAULT ((1.0)) FOR [subscriber_stream_coefficient_320_kbps]
GO

ALTER TABLE [dbo].[t_song_location_coefficient] ADD  CONSTRAINT [DF_t_song_location_coefficient_subscriber_offline_coefficient_96_kbps]  DEFAULT ((1.0)) FOR [subscriber_offline_play_coefficient_96_kbps]
GO

ALTER TABLE [dbo].[t_song_location_coefficient] ADD  CONSTRAINT [DF_t_song_location_coefficient_subscriber_offline_coefficient_160_kbps]  DEFAULT ((1.0)) FOR [subscriber_offline_play_coefficient_160_kbps]
GO

ALTER TABLE [dbo].[t_song_location_coefficient] ADD  CONSTRAINT [DF_t_song_location_coefficient_subscriber_offline_coefficient_320_kbps]  DEFAULT ((1.0)) FOR [subscriber_offline_play_coefficient_320_kbps]
GO

ALTER TABLE [dbo].[t_song_location_coefficient] ADD  CONSTRAINT [DF_t_song_location_coefficient_free_stream_coefficient_96_kbps]  DEFAULT ((1.0)) FOR [free_stream_coefficient_96_kbps]
GO

ALTER TABLE [dbo].[t_song_publisher] ADD  CONSTRAINT [DF_t_song_publisher_effective_datetime]  DEFAULT (((1)/(1))/(2000)) FOR [effective_datetime]
GO

ALTER TABLE [dbo].[t_song_publisher] ADD  CONSTRAINT [DF_t_song_publisher_expiration_datetime]  DEFAULT (((1)/(1))/(2079)) FOR [expiration_datetime]
GO

ALTER TABLE [dbo].[t_subscription] ADD  CONSTRAINT [DF_t_subscription_effective_datetime]  DEFAULT (((1)/(1))/(2000)) FOR [effective_datetime]
GO

ALTER TABLE [dbo].[t_subscription] ADD  CONSTRAINT [DF_t_subscription_expiration_datetime]  DEFAULT (((1)/(1))/(2079)) FOR [expiration_datetime]
GO

ALTER TABLE [dbo].[t_subscription_type] ADD  CONSTRAINT [DF_t_subscription_type_effective_datetime]  DEFAULT (((1)/(1))/(2000)) FOR [effective_datetime]
GO

ALTER TABLE [dbo].[t_subscription_type] ADD  CONSTRAINT [DF_t_subscription_type_expiration_datetime]  DEFAULT (((1)/(1))/(2079)) FOR [expiration_datetime]
GO


